class Population{
  private Utility util = new Utility();
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
    for(int i=0; i<INDIVIDUALS_NUMBER; i++)
      println(this.population[i].get_point());
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
}