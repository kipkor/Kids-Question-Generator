impl KidsQuestionGenerator.start {
    print("Kids Question Generator Started!");

     questions = generate_kids_questions(
            "Generate 5 fun, simple, and age-appropriate questions for kids aged " 
            + self.age_group 
            + " about " 
            + self.topic 
            + ". Keep the tone engaging and respond in plain text."
        );

    print(" Questions about", self.topic, ":");
    print(questions);
}