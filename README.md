### AlMacA ###

This is an idea I have for a macOS app that uses AI to provide useful information to the user. The app would run in the Status Bar and upon being clicked would open up a chat.

I plan on training the Llama or gpt4all models on the current macOS documentation so that users can ask things like "how do I do this on Mac" right from their Mac!

Another thing I plan to implement is keeping an up-to-date represenation of the user's file directory so it can use that information to help troubleshoot. Because the AI would run locally, there would be no privacy concerns.

TODO:

Learn more about how I would make the app itself and get it to at least a working state

Train llama/gpt4all on macOS documentation/relevant knowledge (could use GPT as a stand-in for the time being)

Create representation of the user's current file structure to be accessed by the AI. Could maybe use a vector database. 