class Population{
  private int INDIVIDUALS_NUMBER = 10;
  
  private ArrayList<MatchBox> population = new ArrayList();
  
  Population(){
    for(int i=0; i<INDIVIDUALS_NUMBER; i++)
      this.population.add(new MatchBox());
  }
  
  
  public void grading(){
    for(int i=0; i<INDIVIDUALS_NUMBER; i++)
      this.population.get(i).grading();
  }
  
  public void ranking(){
    for(int i=0; i<INDIVIDUALS_NUMBER; i++)
      println(this.population.get(i).get_point());
  }
  
  public void killing(){
    
  }
}