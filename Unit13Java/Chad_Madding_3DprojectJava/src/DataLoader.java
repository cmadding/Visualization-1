import processing.core.*;
import processing.data.*;

class DataLoader extends PApplet{
	  // Properties
	  private Data[] data;
	  private String fileName;
	  private boolean header = true;

	  // Constructors
	  DataLoader() {
	  }

	  DataLoader(String fileName) {
	    this.fileName = fileName;
	    loadData(header);
	  }

	  DataLoader(String fileName, boolean header) {
	    this.fileName = fileName;
	    this.header = header;
	    loadData(header);
	  }  

	  // Methods
	  public Data[] getData() {
	    return data;
	  }

	  private void loadData(boolean header) {
	    Table table;

	    if (header) {
	      table = loadTable(fileName, "header");
	    } else {
	      table = loadTable(fileName);
	    }

	    int rowCount = table.getRowCount();
	    data = new Data[rowCount];

	    for (int i = 0; i < rowCount; i++) {
	      TableRow row = table.getRow(i);
	      data[i] = new Data(row.getString("Team"), 
	        row.getFloat("x"),
	        row.getFloat("y"),
	        row.getFloat("z"));
	    }
	  }
	}