impl KidsQuestionGenerator.start {
    print("Kids Question Generator Started!");

    questions = generate_kids_questions(
        "Generate 5 fun and funny simple questions for kids about " + self.topic + ". Respond in plain text."
    );

    print(" Questions about", self.topic, ":");
    print(questions);
}