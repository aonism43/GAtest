class MatchBox {
  private int[] answer=new int[QUESTION_NUMBER];
  private int point = 0;

  MatchBox() {
    for (int i=0; i<this.answer.length; i++)
      this.answer[i] = (int)random(3);
  }
  
  
  public int[] get_answer(){
    return this.answer;
  }
  
  public int get_point(){
    return this.point;
  }
  
  public void set_answer(int[] a){
    this.answer = a;
  }
  
  public void grading(){
    this.point = 0;
    
    for(int i=0; i<QUESTION_NUMBER; i++)
      if(this.answer[i] == model_answer[i]) this.point++;
  }
}