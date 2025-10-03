import from byllm.llm { Model }

# Connect to Gemini
glob llm = Model(model_name="gemini/gemini-2.5-flash", verbose=False);

# Ability: Generate fun kids' questions from a topic
def generate_kids_questions(topic: str) -> str by llm();

walker KidsQuestionGenerator {
    has topic: str;
    can start with `root entry;
}
with entry:__main__ {
    root spawn KidsQuestionGenerator("Space Exploration");
    root spawn KidsQuestionGenerator("Oceans and Sea Creatures");
    root spawn KidsQuestionGenerator("Pets and Animals");
    root spawn KidsQuestionGenerator("Weather and Seasons");
    root spawn KidsQuestionGenerator("Personal Hygiene");
    root spawn KidsQuestionGenerator("Healthy Eating");
}