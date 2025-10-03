import from byllm.llm { Model }

# Connect to Gemini
glob llm = Model(model_name="gemini/gemini-2.5-flash", verbose=False);

# Ability: Generate fun kids' questions from a topic
def generate_kids_questions(topic: str) -> str by llm();

walker KidsQuestionGenerator {
    has topic: str;
    has age_group: str;
    can start with `root entry;
}
with entry:__main__ {
    # Examples for different age groups
    root spawn KidsQuestionGenerator("Space Exploration", "5-7");
    root spawn KidsQuestionGenerator("Oceans and Sea Creatures", "8-10");
    root spawn KidsQuestionGenerator("Pets and Animals", "11-13");
    root spawn KidsQuestionGenerator("Weather and Seasons", "14-15");
}