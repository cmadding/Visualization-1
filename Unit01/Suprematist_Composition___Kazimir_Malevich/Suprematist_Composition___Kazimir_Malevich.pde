//canvas size and color with AA turned on
size(600, 750);
background(228);
smooth();

fill(44,29,39); // purple box
rect(61, 402, 495, 80);

//information from https://processing.org/tutorials/transform2d/
pushMatrix();
//set the pivot point
translate(450, 75);
fill(174,70,44); // orange stripe
noStroke();
//pivot radians
rotate(radians(33));
//draw the rectangle on the rotated plane
rect(0, 0, 7, 520);
popMatrix();

pushMatrix();
translate(341, 186);
fill(2, 36, 105); // blue square
noStroke();
rotate(radians(35));
rect(0, 0, 226, 234);
popMatrix();

pushMatrix();
translate(485, 60);
fill(201,168,38); // long yellow square 1
noStroke();
rotate(radians(35));
rect(0, 0, 20, 134);
popMatrix();

pushMatrix();
translate(410, 187);
fill(201,168,38); // yellow square 2
noStroke();
rotate(radians(35));
rect(0, 0, 18, 33);
popMatrix();

pushMatrix();
translate(471, 137);
fill(201,168,38); // yellow square 3
noStroke();
rotate(radians(35));
rect(0, 0, 17, 82);
popMatrix();

pushMatrix();
translate(467, 182);
fill(201,168,38); // yellow square 4
noStroke();
rotate(radians(35));
rect(0, 0, 72, 50);
popMatrix();

pushMatrix();
translate(495, 146);
fill(201,168,38); // yellow square 5
noStroke();
rotate(radians(35));
rect(0, 0, 30, 34);
popMatrix();

pushMatrix();
translate(523, 134);
fill(201,168,38); // yellow square 6
noStroke();
rotate(radians(35));
rect(0, 0, 20, 20);
popMatrix();

pushMatrix();
translate(223, 43);
fill(65,119,63); // green rect
noStroke();
rotate(radians(28));
rect(0, 0, 81, 338);
popMatrix();

pushMatrix();
translate(379, 39);
fill(216,146,32); // orange rect
noStroke();
rotate(radians(35));
rect(0, 0, 37, 23);
popMatrix();

pushMatrix();
translate(405, 36);
fill(35,56,130); // small blue box
noStroke();
rotate(radians(35));
rect(0, 0, 9, 9);
popMatrix();

pushMatrix();
translate(416, 23);
fill(35,56,130); // small blue line 1
noStroke();
rotate(radians(35));
rect(0, 0, 4, 15);
popMatrix();

pushMatrix();
translate(420, 28);
fill(35,56,130); // small blue line 2
noStroke();
rotate(radians(35));
rect(0, 0, 2, 12);
popMatrix();

pushMatrix();
translate(365, 71);
fill(42,43,45); // black rect
noStroke();
rotate(radians(35));
rect(0, 0, 25, 11);
popMatrix();

pushMatrix();
translate(338, 79);
fill(23,45,114); // blue rect
noStroke();
rotate(radians(35));
rect(0, 0, 43, 8);
popMatrix();

pushMatrix();
translate(346, 104);
fill(11,42,114); //  blue square
noStroke();
rotate(radians(35));
rect(0, 0, 23, 18);
popMatrix();

pushMatrix();
translate(140, 3);
fill(37,38,37); // black rect 1
noStroke();
rotate(radians(28));
rect(0, 0, 17, 123);
popMatrix();

pushMatrix();
translate(147, 22);
fill(37,38,37); // black rect 2
noStroke();
rotate(radians(28));
rect(0, 0, 20, 130);
popMatrix();

pushMatrix();
translate(177, 24);
fill(37,38,37); // black rect 3
noStroke();
rotate(radians(28));
rect(0, 0, 16, 27);
popMatrix();

pushMatrix();
translate(202, 31);
fill(37,38,37); // black rect 4
noStroke();
rotate(radians(28));
rect(0, 0, 13, 83);
popMatrix();

pushMatrix();
translate(213, 8);
fill(37,38,37); // black rect 5
noStroke();
rotate(radians(28));
rect(0, 0, 17, 22);
popMatrix();

pushMatrix();
translate(101, 152);
fill(37,38,37); //  lg black rect
noStroke();
rotate(radians(33));
rect(0, 0, 28, 139);
popMatrix();

pushMatrix();
//set the pivot point
translate(115, 200);
fill(215,159,43); // yellow stripe
noStroke();
rotate(radians(30));
rect(0, 0, 5, 143);
popMatrix();

pushMatrix();
translate(195, 489);
fill(205,170,44); // orange stripe 1
noStroke();
rotate(radians(33));
rect(0, 0, 8, 29);
popMatrix();

pushMatrix();
translate(198, 510);
fill(205,170,44); // orange stripe 2
noStroke();
rotate(radians(33));
rect(0, 0, 12, 29);
popMatrix();

pushMatrix();
translate(107, 483);
fill(182,74,36); // bottom orange rect 1
noStroke();
rotate(radians(35));
rect(0, 0, 45, 150);
popMatrix();

pushMatrix();
translate(125, 534);
fill(164,56,30); // bottom orange rect 2
noStroke();
rotate(radians(35));
rect(0, 0, 22, 48);
popMatrix();

fill(182,74,36); // bottom orange box
rect(152, 550, 36, 36);

fill(215,161,38); // bottom yellow rect
rect(390, 519 , 182, 22);
