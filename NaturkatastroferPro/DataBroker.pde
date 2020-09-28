class DataBroker {
  //ArrayList<getAll> dff; 
  String navn;
  int year;
  int deaths; 

  String[] rows;

  DataBroker() {
    rows = loadStrings("dnd.csv");
  }

  void loadData() {
    String[] years =  rows[0].split(",");

    for (int j = 1; j < rows.length; j++) {
      String[] cells =  rows[j].split(",");
      for (int i = 2; i < cells.length; i++)
      {
        println( "Land: " + cells[1] + "   |Year: " + years[i] + "   |Døde: " +cells[i]);
      }
    }
  }
}
