import java.util.ArrayList;
ArrayList<Question> questions = new ArrayList<Question>();
int userScore = 0;
int currentQuestionIndex = 0;


void setup()
{
 size(800, 800); 
 
 questions.add(new Question("Hvad for en genre er Fortnite?", "A: RTS", "B: MOBA","C: Battle Royale", "D: FPS", "C"));
 questions.add(new Question("Når man spiller et fortnite match, hvor mange spillere er man så typisk i starten?","A: 50", "B: 20", "C: 80", "D: 100","D")); 
 questions.add(new Question("Hvad er anset som det bedste våben i Fortnite","A: Golden Scar", "B: Revolver","C: Burst-rifle", "D: Pistol","A"));
 questions.add(new Question("Hvordan vinder man Fortnite", "A: Draeber de andre spillere", "B: Bygger den flotteste bygning","C: Skaffer nok penge", "D: Er den sidste der overlever","D"));

 displayQuestion();
}

void draw()
{ 
  background(255);
  
  displayQuestion();
}

void displayQuestion()
{
 if (currentQuestionIndex < questions.size())
 {
   Question q = questions.get(currentQuestionIndex);
   textSize(18);
   fill(0);
   
   text(q.question, 20, 40);
   text(q.optionA, 20, 80);
   text(q.optionB, 20, 120);
   text(q.optionC, 20, 160);
   text(q.optionD, 20, 200);
   text("Vaelg dit svar (A, B, C, Eller D)", 20, 240);
 }
  else
 {
  textSize(26); 
  fill(0);
  text("Quizzen er faerdig!", 20, 40);
  text("Din score er: " + userScore + "/" + questions.size(), 20, 80);
  noLoop();
   }
}


void keyPressed()
{
  if (key == 'A' || key == 'B' || key == 'C' || key == 'D' || key == 'a' || key == 'b' || key == 'c' || key == 'd')
  {
    String userAnswer = String.valueOf(key).toUpperCase();
    checkAnswer(userAnswer);
    
    if (currentQuestionIndex < questions.size() - 1)
    {
      currentQuestionIndex++;
    }
    else
    {
      currentQuestionIndex++;
    }
  }
}


void checkAnswer(String userAnswer)
{
 Question currentQuestion = questions.get(currentQuestionIndex);
 if (userAnswer.equals(currentQuestion.correctAnswer))
 {
  userScore++; 
 }
}
