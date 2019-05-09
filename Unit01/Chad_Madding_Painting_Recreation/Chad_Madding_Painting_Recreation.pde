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

fill(182,74,36); // bottom orange square
rect(152, 550, 36, 36);

fill(215,161,38); // bottom yellow rect
rect(390, 519 , 182, 22);

pushMatrix();
translate(445, 568);
fill(196,162,31); // yellow rect 1
noStroke();
rotate(radians(262));
rect(0, 0, 14, 73);
popMatrix();

pushMatrix();
translate(485, 582);
fill(196,162,31); // yellow rect 2
noStroke();
rotate(radians(262));
rect(0, 0, 11, 28);
popMatrix();

pushMatrix();
translate(505, 582);
fill(209,165,181); //  pink rect
noStroke();
rotate(radians(35));
rect(0, 0, 50, 100);
popMatrix();

pushMatrix();
translate(560, 598);
fill(228); // white mask for pink area
noStroke();
rotate(radians(45));
rect(0, 0, 45, 125);
popMatrix();

pushMatrix();
translate(88, 610);
fill(191,82,43); // bottom orange stripe 1
noStroke();
rotate(radians(35));
rect(0, 0, 12, 106);
popMatrix();

pushMatrix();
translate(87, 647);
fill(207,170,42); // bottom yellow rect 2
noStroke();
rotate(radians(35));
rect(0, 0, 14, 35);
popMatrix();

pushMatrix();
translate(117, 635);
fill(210,150,34); // bottom yellow rect 3
noStroke();
rotate(radians(35));
rect(0, 0, 12, 97);
popMatrix();

pushMatrix();
translate(132, 641);
fill(203,168,37); // bottom yellow square 4
noStroke();
rotate(radians(35));
rect(0, 0, 25, 23 );
popMatrix();

pushMatrix();
translate(144, 673);
fill(36,36,36); // bottom black rect 5
noStroke();
rotate(radians(35));
rect(0, 0, 67, 95);
popMatrix();

pushMatrix();
translate(281, 580);
fill(210,149,28); // bottom yellow rect 6
noStroke();
rotate(radians(35));
rect(0, 0, 27, 210);
popMatrix();

pushMatrix();
translate(295, 607);
fill(40); // bottom black rect 7
noStroke();
rotate(radians(35));
rect(0, 0, 35, 175);
popMatrix();

pushMatrix();
translate(310, 646);
fill(215,148,19); // bottom orange rect 8
noStroke();
rotate(radians(35));
rect(0, 0, 15, 130);
popMatrix();

pushMatrix();
translate(311, 669);
fill(204,167,30); // bottom yellow rect 9
noStroke();
rotate(radians(35));
rect(0, 0, 19, 98);
popMatrix();

pushMatrix();
translate(374, 612);
fill(172,63,36); // bottom orange rect 10
noStroke();
rotate(radians(35));
rect(0, 0, 20, 145);
popMatrix();

pushMatrix();
translate(385, 643);
fill(211,175,42); // bottom yellow  rect 11
noStroke();
rotate(radians(35));
rect(0, 0, 17, 66);
popMatrix();
