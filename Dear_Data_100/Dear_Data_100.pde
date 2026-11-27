PFont Tittlefont; // creates a variable which sets the name for the font

int[] circleX = {100, 250, 400, 600, 850, 750,
  150, 350, 500, 900, 650, 320}; // creates a variable which is an array and is used as the x axis of the circles
int[] circleY = { -50, -100, -150, -200, -250, -300,
  -350, -400, -450, -500, -550, -600}; //creates a variable which is an array and is used as the y axis of the circles

int[] diamondX = {
  200, 420, 700, 900, 150, 350,
  600, 800, 250, 460, 750, 490
};//creates a variable which is an array and is used as the x axis of the Dimonds

int[] diamondY = {
  -75, -125, -175, -225, -275, -325,
  -375, -425, -475, -525, -575, -625
};//creates a variable which is an array and is used as the y axis of the Dimonds

float[] Yvelocity = {1.2, 2.1, 1.8, 2.5, 1.4, 1.7, 2.0, 1.3, 2.2, 1.5, 1.9, 2.4}; // this array sets the vertical speed of the shapes

int[] circleStopY = {
  200, 350, 500, 250, 450, 600,
  300, 550, 400, 650, 150, 520
};

int[] diamondStopY = {
  250, 450, 150, 550, 350, 600,
  200, 500, 300, 650, 400, 520
};

color[] colours = {
  color(0, 102, 204, 180), // Ocean Blue
  color(102, 204, 255, 180), // Ice Blue
  color(0, 191, 166, 180), // Aqua
  color(0, 153, 102, 180), // Emerald
  color(144, 214, 155, 180), // Sage
  color(34, 85, 51, 180), // Forest
  color(123, 63, 228, 180), // Royal Purple
  color(196, 167, 255, 180), // Lilac
  color(74, 35, 130, 180), // Deep Plum
  color(255, 255, 255, 180), // White Pearl
  color(255, 215, 235, 180), // Rose Quartz
  color(255, 200, 170, 180)   // Soft Peach
};

//  this array sets the colours of the shapes

int[] keyX = {
  720, 720, 720, 720, 720, 720, 720, 720, 720, 720, 720, 720
};//this is the x coordinates for the circles in the key

int[] keyY = {
  155, 195, 235, 275, 315, 355, 395, 435, 475, 515, 555, 595
};//this is the x coordinates for the circles in the key

int selectedWeek = 1;
int[] currentDayUses;
int [] currentNightUses;

class WeekData { // i have created a class called weekdata including 2 arrays one for day uses and one for night uses
  int[] dayUses;
  int[] nightUses;

  WeekData(int[] day, int[] night) {
    dayUses = day;
    nightUses = night;
  }
}
// here i created three objects for week 1,2 & 3
WeekData week1;
WeekData week2;
WeekData week3;

//Week 1 array data uses
int[] week1DayUses = {
  5, 2, 1, 5, 0, 3,
  0, 5, 2, 0, 0, 0
};

int[] week1NightUses = {
  5, 0, 0, 0, 7, 7,
  7, 0, 2, 2, 1, 1
};

int[] week2DayUses = {
  7, 3, 0, 3, 0, 7,
  1, 0, 0, 0, 1, 1
};

int[] week2NightUses = {
  7, 0, 0, 0, 6, 7,
  6, 0, 0, 2, 0, 0
};

int [] week3DayUses = {
  7, 1, 7, 0, 0, 7,
  2, 0, 0, 0, 0, 0
};
int [] week3NightUses = {
  7, 0, 0, 0, 1, 7,
  5, 0, 0, 6, 0, 0
};

void setup()
{
  size(1000, 750);
  Tittlefont = loadFont("Calibri-Bold-48.vlw");
}

void draw()
{

  background(215, 228, 238);

  fill(30, 45, 70);
  textAlign(CENTER);
  textSize(30);
  textFont(Tittlefont, 30);
  text("SKIN DIARY", 500, 50); // sets title

  textSize(20);
  text("Week 1", 400, 80);// sets subtittle for each week with the same font as the title
  text("Week 2", 500, 80);
  text("Week 3", 600, 80);

  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);

  week1 = new WeekData(week1DayUses, week1NightUses);
  week2 = new WeekData(week2DayUses, week2NightUses);
  week3 = new WeekData(week3DayUses, week3NightUses);

  //Three WeekData objects (week1, week2 and week3) are created, allowing related data to be stored in a single object rather than using separate arrays

  if (selectedWeek == 1)// if week one is selected then create a red rectangle
  {
    rect(365, 58, 70, 30);
  }

  if (selectedWeek == 2)
  {
    rect(465, 58, 70, 30);
  }

  if (selectedWeek == 3)
  {
    rect(565, 58, 70, 30);
  }

  noStroke();

  for (int i = 0; i < 12; i++)
  {
    if (circleY[i] < circleStopY[i])
    {
      circleY[i] += Yvelocity[i];

      if (circleY[i] > circleStopY[i])
      {
        circleY[i] = circleStopY[i];
      }
    }
  }

  for (int i = 0; i < 12; i++)
  {
    if (diamondY[i] < diamondStopY[i])
    {
      diamondY[i] += Yvelocity[i]; 
      // adds the velocity to the current Y position

      if (diamondY[i] > diamondStopY[i])
      {
        diamondY[i] = diamondStopY[i];
      }
    }
  }

  int[] currentDayUses;
  int [] currentNightUses;

  WeekData currentWeek;

  if (selectedWeek == 1)
  {
    currentWeek = week1;
  } else if (selectedWeek == 2)
  {
    currentWeek = week2;
  } else
  {
    currentWeek = week3;
  }
  // Changes the displayed data based on the selected week.
  currentDayUses = currentWeek.dayUses;
  currentNightUses = currentWeek.nightUses;
  // Gets the day and night data from the selected week object.


  for (int i = 0; i < 12; i++) {// Repeats for every coordinate in the array, increasing i by one each time to select the next position
    if (currentDayUses[i] > 0) { // if the number of uses in the day is greater than 0 than do 20 + day usage x 8
      float circleSize = 20 + currentDayUses[i]*10; // this will also go through the for loop until i=12 that is when the sattement wil be false and it will stop creating circles and changing it sizes

      fill(colours[i]);
      noStroke();
      ellipse(circleX[i], circleY[i],
        circleSize, circleSize); // here ive used the varibale circle size to determine the size of the circle
    }
  }
  for (int i = 0; i < 12; i++) {
    if (currentNightUses[i] > 0)
    {
      float diamondSize = 20 + currentNightUses[i] * 10;

      fill(colours[i]);
      noStroke();

      quad(
        diamondX[i], diamondY[i] - diamondSize/2,
        diamondX[i] + diamondSize/2, diamondY[i],
        diamondX[i], diamondY[i] + diamondSize/2,
        diamondX[i] - diamondSize/2, diamondY[i]
        );
    }
  }

  if (keyPressed && key == 'k')// if the key "k" is pressed and the and statement is true then draw a white box
  {
    stroke(0);
    strokeWeight(2);
    fill(255);
    rect(700, 75, 300, 600); // this creates the white rectangle for the key

    fill(0);
    textAlign(LEFT);
    textSize(25);
    text("SKINCARE KEY", 720, 115);// this creates the title on the write rectangle

    textAlign(LEFT);
    textSize(16);
    text("COSRX Salicylic Acid Cleanser", 740, 160);
    text("Medicube Vitamin C Toner Pads", 740, 200);
    text("Vitamin C Serum", 740, 240);
    text("Beauty of Joseon SPF", 740, 280);
    text("Purito Retinol + Retinal Serum", 740, 320);
    text("Skin1004 Probio-Cica Moisturiser", 740, 360);
    text("Lip Mask", 740, 400);
    text("Nivea Thiamidol Serum", 740, 440);
    text("Whipped Ddalva Cleanser", 740, 480);
    text("Hyaluronic Acid Eye Patches", 740, 520);
    text("Mixoon Bean Essence", 740, 560);
    text("Hyaluronic Acid ", 740, 600);
    //this creates a list of all the things that are included in the key (so all the names of the skincare brands)
    text("DAY", 740, 645);
    text("NIGHT", 840, 645);
    stroke(0);
    fill(255);
    ellipse(800, 638, 20, 20);
    quad(910, 630, 920, 640, 910, 650, 900, 640); // this creates the shapes that diffrentiate day and night on the key with its labels

    for (int i = 0; i < 12; i++)// thsi code repeats 12 times untill all the items from the array are used
    {
      fill(colours[i]);
      ellipse(keyX[i], keyY[i], 20, 20);
      // this creates circles with the coresponding colours next to each skincare brand name to diffrentiate the brands
    }
  }
}
// this makes a rectangle appear on the selected week
void mousePressed()
{
  if (mouseX > 370 && mouseX < 430 &&
    mouseY > 60 && mouseY < 90) // if the mouse is pressed in this area than the rectangle will appear
  {
    selectedWeek = 1;
  }

  if (mouseX > 470 && mouseX < 530 &&
    mouseY > 60 && mouseY < 90) // if the mouse is pressed in this area than the rectangle will appear
  {
    selectedWeek = 2;
  }

  if (mouseX > 570 && mouseX < 630 &&
    mouseY > 60 && mouseY < 90) // if the mouse is pressed in this area than the rectangle will appear
  {
    selectedWeek = 3;
  }
}
