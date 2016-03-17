class Population{
  private int INDIVIDUALS_NUMBER = 10;
  
  private MatchBox[] population = new MatchBox[INDIVIDUALS_NUMBER];
  
  Population(){
    for(int i=0; i<INDIVIDUALS_NUMBER; i++)
      population[i] = new MatchBox();
  }
  
  
  public void grading(){
    for(int i=0; i<INDIVIDUALS_NUMBER; i++)
      this.population[i].grading();
  }
  
  public void ranking(){
    boolean exit = true;
    
    for(int i=0; i<INDIVIDUALS_NUMBER; i++){
      print(this.population[i].get_point()+",");
      
      if(this.population[i].get_point()==10) exit = true;
    }
    println();
    
    if(exit) exit();
  }
  
  public void killing(){
    //ソート
    //TODO:あとでsmartに書く
    
    int[] point = new int[INDIVIDUALS_NUMBER];
    
    for(int i=0; i<INDIVIDUALS_NUMBER; i++)
        point[i] =this.population[i].get_point();
        
    point = sort(point);
    
    MatchBox dumy = null;
    
    for(int i=0; i<INDIVIDUALS_NUMBER; i++){
      for(int j=0; j<INDIVIDUALS_NUMBER; j++){
        if(point[i] == population[j].get_point()){
          dumy= population[i];
          population[i] = population[j];
          population[j] = dumy;
        }
      }
    }
    
   this.population[0] = null;
   this.population[1] = null;
  }
  
  public void birth(){
    this.population[0] = new MatchBox();
    this.population[1] = new MatchBox();
    
    int merge_point = (int) random(1, QUESTION_NUMBER);
    
    int[] father = population[INDIVIDUALS_NUMBER-1].get_answer();
    int[] mother = population[INDIVIDUALS_NUMBER-2].get_answer();
    
    int[] children_old = new int[QUESTION_NUMBER];
    int[] children_you = new int[QUESTION_NUMBER];
    
    for(int i=0; i<merge_point; i++){
      children_old[i] = father[i];
      children_you[i] = mother[i];
    }
    
     for(int i=merge_point; i<QUESTION_NUMBER; i++){
      children_old[i] = mother[i];
      children_you[i] = father[i];
    }
    
    
    int random_old = (int)random(QUESTION_NUMBER);
    int random_you = (int)random(QUESTION_NUMBER);
    
    children_old[random_old] = (int)random(3);
    children_you[random_you] = (int)random(3);
    
    population[0].set_answer(children_old);
    population[1].set_answer(children_you);
  }
}