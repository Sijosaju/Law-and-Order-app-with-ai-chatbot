import 'package:flutter/material.dart';
import 'homepage.dart';
import 'model.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';

class GeminiChatBot extends StatefulWidget {
  const GeminiChatBot({super.key});

  @override
  State<GeminiChatBot> createState() => _GeminiChatBotState();
}

class _GeminiChatBotState extends State<GeminiChatBot> {
  TextEditingController promprController = TextEditingController();
  static const apiKey = "AIzaSyCS-IThTFv0aZ1EuGsXOc6TxEVCIjeKkZI";
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

  final List<ModelMessage> prompt = [];

  Future<void> sendMessage() async {
  // Read the input from the TextField
  final message = promprController.text;

  // Append " in India" to the user's input
  //final modifiedMessage = "$message in India";

  // Clear the TextField and update the prompt list
  setState(() {
    promprController.clear();
    prompt.add(ModelMessage(isPrompt: true, message: /*modifiedMessage*/message, time: DateTime.now()));
  });

  // Prepare the content for the model
  final content = [Content.text(/*modifiedMessage*/message)];

  // Generate the response from the model
  final response = await model.generateContent(content);

  // Update the prompt list with the response
  setState(() {
    prompt.add(ModelMessage(
      isPrompt: false, 
      message: response.text ?? "", 
      time: DateTime.now()
    ));
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        leading: IconButton(color: Colors.white,
    onPressed: () {
      Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) =>Homepage() ),
                            );// Navigate back when tapped
    },
    icon: Icon(Icons.arrow_back_ios), // Replace with your desired icon
  ),
        elevation: 3,
        backgroundColor: Colors.blue[100],
        title: const Center(child: Text('Dharma')),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: prompt.length,
                  itemBuilder: (context, index) {
                    final message = prompt[index];
                    return UserPromt(
                        isPromt: message.isPrompt,
                        message: message.message,
                        date: DateFormat('hh:mm a').format(message.time));
                  })),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                Expanded(
                  flex: 20,
                  child: TextField(
                    controller: promprController,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Enter your text here',
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    sendMessage();
                  }, // Call sendMessage on tap
                  child: const CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container UserPromt(
      {required final bool isPromt,
      required String message,
      required String date}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 15).copyWith(
        left: isPromt ? 80 : 15,
        right: isPromt ? 15 : 80,
      ),
      decoration: BoxDecoration(
        color: isPromt ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: isPromt ? const Radius.circular(20) : Radius.zero,
            bottomRight: isPromt ? Radius.zero : const Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(
              fontWeight: isPromt ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
              color: isPromt ? Colors.white : Colors.black,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              fontWeight: isPromt ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
              color: isPromt ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
