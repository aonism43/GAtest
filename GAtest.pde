int QUESTION_NUMBER = 10;
int[] model_answer ={
  2, 0, 1, 1, 1, 2, 0, 2, 2, 0
};

Population pop = new Population();

void setup() {
  int i = 0;
  
  while (i != 100) {
    pop.grading();
    pop.ranking();
    pop.killing();
    pop.birth();
    
    i++;
  }
}

void draw() {
}