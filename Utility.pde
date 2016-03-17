class Utility{

  public int max(ArrayList<MatchBox> array){
    int max = array.get(0).get_point();
    
    for(int i=1; i<array.size(); i++)
      if(max<array.get(i).get_point()) max = array.get(i).get_point();
      
      return max;
  }
  
  public int min(ArrayList<MatchBox> array){
    int min = array.get(0).get_point();
    
    for(int i=1; i<array.size(); i++)
      if(min>array.get(i).get_point()) min = array.get(i).get_point();
      
      return min;
  }
  
  public int argmax(ArrayList<MatchBox> array){
    int max = array.get(0).get_point();
    int argmax = 0;
    
    for(int i=1; i<array.size(); i++){
      if(max<array.get(i).get_point()){ 
        max = array.get(i).get_point();
        argmax = max;
      }
    }
    
    return argmax;
  }
  
  public int argmin(ArrayList<MatchBox> array){
    int min = array.get(0).get_point();
    int argmin = 0;
    
    for(int i=1; i<array.size(); i++){
      if(min<array.get(i).get_point()){ 
        min = array.get(i).get_point();
        argmin = min;
      }
    }
    
    return argmin;
  }
}