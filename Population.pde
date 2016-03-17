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
  }
}