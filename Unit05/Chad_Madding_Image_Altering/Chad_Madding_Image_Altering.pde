int rows = 2;
int columns = 4;
int rowstep = 0;
int columnstep = 0;
int currentrow = 0;
int currentcolumn = 0;
PImage soup;
PImage [][] effects;

void settings()
{
  soup = loadImage("soup.png");
  size(soup.width, soup.height);

  rowstep = soup.height / rows;
  columnstep = soup.width / columns;
}

void setup() {
  effects = new PImage[2][4];

  effects[0][0] = soup.get(0, 0, 250, 301);
  effects[0][1] = soup.get(250, 0, 250, 301);
  effects[0][2] = soup.get(500, 0, 250, 301);
  effects[0][3] = soup.get(750, 0, 250, 301);
  effects[1][0] = soup.get(0, 301, 250, 301);
  effects[1][1] = soup.get(250, 301, 250, 301);
  effects[1][2] = soup.get(500, 301, 250, 301);
  effects[1][3] = soup.get(750, 301, 250, 301);

  //Apply effect to different pieces
  effects[0][1].filter(POSTERIZE, 2);
  effects[0][2].filter(INVERT);
  effects[1][0].filter(BLUR, 3);
  effects[1][2].filter(DILATE);
  effects[1][3].filter(THRESHOLD, 0.7);
}

void draw() {
  {
    image(soup, 0, 0);
    soup.loadPixels();

    for (int y = 0; y < soup.height; y++)
    {
      for (int x = 0; x < soup.width; x++)
      {
        int row = y / rowstep; // calculate the row where the pixel is based on y
        int column = x / columnstep; // caclulate the column where the pixel is based on x
        int index = x + (y * soup.width); // calculate the index of the pixels array based on x, y
        // Here you choose which grid cell you want to change
        if ( row == currentrow && column == currentcolumn)
        {
          soup.pixels[index] =  color(255, 0, 0, 1);
        } 
        if ( row == currentrow && column == currentcolumn+3)
        {
          soup.pixels[index] =  color(0, 255, 0, 1);
        }
        if ( row == currentrow+1 && column == currentcolumn+1)
        {
          soup.pixels[index] =  color(0, 0, 255, 1);
        }
      }
    }
    soup.updatePixels();

    //Show different slices with the effects from above
    image(effects[0][1], 250, 0);
    image(effects[0][2], 500, 0);
    image(effects[1][0], 0, 301);
    image(effects[1][2], 500, 301);
    image(effects[1][3], 750, 301);
  }
}
