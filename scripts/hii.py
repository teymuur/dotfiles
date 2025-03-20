import os
import sys
import random
import time
import re
from datetime import datetime

class ChatBot:
    def __init__(self):
        self.name = "Assistant"
        self.user_name = None
        self.conversation_history = []
        self.context = {}
        
        self.responses = {
            "greetings": [
                "Hey there!", "Hi! How's it going?", 
                "Hello! How can I assist you today?", 
                "Hey, what's up?", "Hi! Nice to meet you!"
            ],
            "exit": [
                "Goodbye! Catch you later!", 
                "Bye! Have an awesome day!", 
                "See you soon! Take care!"
            ],
            "thanks": [
                "You're welcome!", "No problem at all!", 
                "Happy to help!", "Anytime!", 
                "Glad I could help!"
            ],
            "default": [
                "I'm not sure I understand. Could you rephrase that?",
                "I didn't quite catch that. Can you say it differently?",
                "Hmm, I'm a bit confused. Can you elaborate?"
            ]
        }
        
        self.conversation_patterns = {
            r"my name is (.+)": self.set_user_name,
            r"i am (.+)": self.set_user_name,
            r"call me (.+)": self.set_user_name,
            r"what is my name": self.get_user_name,
            r"who am i": self.get_user_name,
            r"what's the weather": self.weather_response,
            r"how are you": self.mood_response,
            r"tell me about yourself": self.self_introduction,
            r"remember (.+)": self.remember_info,
            r"what did i tell you about (.+)": self.recall_info
        }

    def set_user_name(self, match):
        self.user_name = match.group(1).strip().title()
        return f"Nice to meet you, {self.user_name}! How can I help you today?"

    def get_user_name(self, match):
        return f"Your name is {self.user_name}!" if self.user_name else "I don't know your name yet. Would you like to introduce yourself?"

    def remember_info(self, match):
        info = match.group(1)
        key = info.split()[0].lower()
        self.context[key] = info
        return f"I'll remember that: {info}"

    def recall_info(self, match):
        topic = match.group(1)
        for key, value in self.context.items():
            if topic in value.lower():
                return f"You told me: {value}"
        return f"You haven't told me anything about {topic} yet."

    def weather_response(self, match):
        return "I wish I could tell you the weather, but I don't have access to real-time weather data. You might want to check a weather app or website!"

    def mood_response(self, match):
        return "I'm functioning well and enjoying our conversation! How are you doing?"

    def self_introduction(self, match):
        return f"I'm {self.name}, a chatbot designed to help and chat with you. I can help with various tasks, tell jokes, and maintain conversations!"

    def random_joke(self):
        jokes = [
            "Why don't skeletons fight each other? They don't have the guts.",
            "I told my computer I needed a break, and now it won't stop sending me Kit-Kats.",
            "Why do programmers prefer dark mode? Because light attracts bugs!",
            "Parallel lines have so much in common. It's a shame they'll never meet.",
            "Why did the programmer quit his job? Because he didn't get arrays.",
            "What do you call a bear with no teeth? A gummy bear!"
        ]
        return random.choice(jokes)

    def handle_command(self, user_input):
        # Store conversation history
        self.conversation_history.append(("user", user_input))
        
        # Convert input to lowercase for processing
        user_input_lower = user_input.lower()

        # Check for basic commands first
        if user_input_lower in ['exit', 'bye', 'goodbye', 'quit']:
            response = random.choice(self.responses["exit"])
            self.conversation_history.append(("bot", response))
            print(response)
            sys.exit()

        if user_input_lower in ['thanks', 'thank you', 'thx']:
            response = random.choice(self.responses["thanks"])
            self.conversation_history.append(("bot", response))
            return response

        # Check for system commands
        if 'list files' in user_input_lower or 'show files' in user_input_lower:
            files = os.listdir()
            response = "Here are the files in your current directory:\n" + "\n".join(files)
            self.conversation_history.append(("bot", response))
            return response

        if 'clear' in user_input_lower:
            os.system('clear' if os.name == 'posix' else 'cls')
            return "Screen cleared!"

        if 'time' in user_input_lower:
            current_time = datetime.now().strftime("%H:%M:%S")
            response = f"The current time is: {current_time}"
            self.conversation_history.append(("bot", response))
            return response

        if 'joke' in user_input_lower:
            response = self.random_joke()
            self.conversation_history.append(("bot", response))
            return response

        # Check for conversation patterns
        for pattern, handler in self.conversation_patterns.items():
            match = re.search(pattern, user_input_lower)
            if match:
                response = handler(match)
                self.conversation_history.append(("bot", response))
                return response

        # Default response if no patterns match
        response = random.choice(self.responses["default"])
        self.conversation_history.append(("bot", response))
        return response

    def start_chat(self):
        print(random.choice(self.responses["greetings"]))
        
        while True:
            user_input = input(f"{self.user_name + ': ' if self.user_name else '> '}")
            response = self.handle_command(user_input)
            print(f"{self.name}: {response}")

if __name__ == "__main__":
    chatbot = ChatBot()
    chatbot.start_chat()
