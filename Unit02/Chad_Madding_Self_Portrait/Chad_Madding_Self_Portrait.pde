//color palette
int smoke=#708C98;
int frost = #74adbf;
int black = 0;
int purple = #8C2BC1;
int pumpkin = #ff6d3a;
int green = #1D8318;
int olive = #808000;
int blue = #105FB3;
int ltBlue = #CBEFFF;
int dkBlue = #001440;
int dkBrown = #290e05;
int ltBrown = #B38760;
int tan = #B5795E;
int red = #720000;
int white = #FFFFFF;

//What color would you like the background to be?
int background = olive;
//What color sunglasses would you like?
int glasses = frost;
//What color shirt looks good?
int shirt = dkBlue;
//What about hair color?
int hair = dkBrown;
//Lipstick?!
int lips = tan;

void setup()
{
    size (500,500);
}

void draw()
{
  stroke(0);
  strokeWeight(1);
  fill(background);
  rect (width * 0.1, height * 0.1 , width * 0.8, height * 0.8);

//shirt

stroke(0);
  strokeWeight(0);
  fill(shirt);

beginShape();
curveVertex(328.0,288.0);
curveVertex(378.0,285.0);
curveVertex(384.0,298.0);
curveVertex(392.0,311.0);
curveVertex(393.0,327.0);
curveVertex(393.0,344.0);
curveVertex(393.0,361.0);
curveVertex(400.0,369.0);
curveVertex(398.0,375.0);
curveVertex(398.0,383.0);
curveVertex(395.0,444.0);
curveVertex(108.0,448.0);
curveVertex(126.0,403.0);
curveVertex(180.0,378.0);
curveVertex(210.0,369.0);
curveVertex(205.0,351.0);
curveVertex(205.0,337.0);
curveVertex(208.0,325.0);
endShape();

//neck

stroke(0);
  strokeWeight(0);
  fill(181,121,94);
  
beginShape();
curveVertex(333.0,241.0);
curveVertex(329.0,262.0);
curveVertex(327.0,272.0);
curveVertex(327.0,282.0);
curveVertex(327.0,289.0);
curveVertex(333.0,294.0);
curveVertex(334.0,300.0);
curveVertex(339.0,310.0);
curveVertex(341.0,317.0);
curveVertex(344.0,323.0);
curveVertex(339.0,332.0);
curveVertex(335.0,336.0);
curveVertex(328.0,343.0);
curveVertex(320.0,348.0);
curveVertex(314.0,351.0);
curveVertex(308.0,358.0);
curveVertex(305.0,361.0);
curveVertex(299.0,365.0);
curveVertex(296.0,372.0);
curveVertex(289.0,374.0);
curveVertex(278.0,383.0);
curveVertex(258.0,393.0);
curveVertex(245.0,389.0);
curveVertex(239.0,383.0);
curveVertex(231.0,374.0);
curveVertex(222.0,363.0);
curveVertex(219.0,351.0);
curveVertex(214.0,339.0);
curveVertex(211.0,328.0);
endShape();


//hair
stroke(hair);
  strokeWeight(0);
  fill(hair);
beginShape();
curveVertex(158.0,189.0);
curveVertex(151.0,186.0);
curveVertex(148.0,177.0);
curveVertex(141.0,160.0);
curveVertex(141.0,151.0);
curveVertex(145.0,145.0);
curveVertex(143.0,134.0);
curveVertex(140.0,124.0);
curveVertex(141.0,113.0);
curveVertex(142.0,106.0);
curveVertex(147.0,104.0);
curveVertex(147.0,94.0);
curveVertex(149.0,88.0);
curveVertex(155.0,84.0);
curveVertex(160.0,79.0);
curveVertex(163.0,76.0);
curveVertex(168.0,71.0);
curveVertex(169.0,63.0);
curveVertex(174.0,57.0);
curveVertex(181.0,54.0);
curveVertex(185.0,52.0);
curveVertex(192.0,49.0);
curveVertex(194.0,44.0);
curveVertex(198.0,40.0);
curveVertex(206.0,38.0);
curveVertex(223.0,32.0);
curveVertex(240.0,34.0);
curveVertex(249.0,37.0);
curveVertex(257.0,47.0);
curveVertex(263.0,49.0);
curveVertex(266.0,43.0);
curveVertex(274.0,37.0);
curveVertex(280.0,40.0);
curveVertex(290.0,42.0);
curveVertex(299.0,44.0);
curveVertex(314.0,50.0);
curveVertex(316.0,59.0);
curveVertex(323.0,67.0);
curveVertex(329.0,73.0);
curveVertex(339.0,82.0);
curveVertex(339.0,89.0);
curveVertex(346.0,101.0);
curveVertex(347.0,107.0);
curveVertex(352.0,120.0);
curveVertex(352.0,133.0);
curveVertex(351.0,143.0);
curveVertex(354.0,153.0);
curveVertex(352.0,161.0);
curveVertex(351.0,168.0);
curveVertex(344.0,169.0);
curveVertex(332.0,178.0);
curveVertex(327.0,181.0);
curveVertex(324.0,182.0);
curveVertex(321.0,184.0);
endShape();


//face
stroke(0);
  strokeWeight(0);
  fill(181,121,94);

beginShape();
curveVertex(156.0,185.0);
curveVertex(152.0,156.0);
curveVertex(166.0,120.0);
curveVertex(174.0,123.0);
curveVertex(173.0,128.0);
curveVertex(183.0,124.0);
curveVertex(193.0,121.0);
curveVertex(204.0,115.0);
curveVertex(212.0,110.0);
curveVertex(227.0,109.0);
curveVertex(241.0,114.0);
curveVertex(257.0,114.0);
curveVertex(271.0,118.0);
curveVertex(286.0,126.0);
curveVertex(298.0,136.0);
curveVertex(309.0,150.0);
curveVertex(317.0,167.0);
curveVertex(325.0,181.0);
curveVertex(325.0,185.0);
curveVertex(327.0,185.0);
curveVertex(333.0,181.0);
curveVertex(340.0,177.0);
curveVertex(349.0,173.0);
curveVertex(354.0,177.0);
curveVertex(357.0,185.0);
curveVertex(357.0,192.0);
curveVertex(354.0,200.0);
curveVertex(352.0,209.0);
curveVertex(351.0,217.0);
curveVertex(347.0,225.0);
curveVertex(343.0,232.0);
curveVertex(335.0,236.0);
curveVertex(331.0,239.0);
curveVertex(325.0,235.0);
curveVertex(323.0,235.0);
curveVertex(324.0,241.0);
curveVertex(324.0,246.0);
curveVertex(324.0,255.0);
curveVertex(322.0,265.0);
curveVertex(318.0,271.0);
curveVertex(313.0,277.0);
curveVertex(308.0,283.0);
curveVertex(301.0,288.0);
curveVertex(297.0,296.0);
curveVertex(292.0,300.0);
curveVertex(285.0,306.0);
curveVertex(280.0,313.0);
curveVertex(271.0,316.0);
curveVertex(267.0,321.0);
curveVertex(258.0,333.0);
curveVertex(248.0,340.0);
curveVertex(241.0,339.0);
curveVertex(226.0,335.0);
curveVertex(217.0,332.0);
curveVertex(210.0,329.0);
curveVertex(203.0,321.0);
curveVertex(194.0,308.0);
curveVertex(186.0,298.0);
curveVertex(175.0,281.0);
curveVertex(169.0,269.0);
curveVertex(165.0,256.0);
curveVertex(164.0,239.0);
curveVertex(162.0,240.0);
curveVertex(160.0,245.0);
curveVertex(153.0,240.0);
curveVertex(149.0,232.0);
curveVertex(147.0,226.0);
curveVertex(144.0,218.0);
curveVertex(143.0,212.0);
curveVertex(141.0,200.0);
curveVertex(141.0,191.0);
curveVertex(139.0,183.0);
curveVertex(141.0,180.0);
curveVertex(145.0,178.0);
curveVertex(151.0,181.0);
curveVertex(158.0,187.0);
curveVertex(157.0,183.0);
curveVertex(155.0,178.0);
curveVertex(153.0,169.0);
endShape();

//nose
stroke(100,31,31);
  strokeWeight(1);
  fill(181,121,94);

beginShape();
curveVertex(217.0,197.0);
curveVertex(214.0,229.0);
curveVertex(207.0,239.0);
curveVertex(211.0,245.0);
curveVertex(218.0,247.0);
curveVertex(223.0,248.0);
curveVertex(234.0,246.0);
curveVertex(237.0,245.0);
curveVertex(242.0,245.0);
curveVertex(250.0,241.0);
curveVertex(249.0,233.0);
curveVertex(240.0,228.0);
curveVertex(236.0,223.0);
curveVertex(233.0,197.0);
endShape();

//mouth
stroke(lips);
  strokeWeight(10);
  fill(239);
  
beginShape();
curveVertex(191.0,262.0);
curveVertex(201.0,268.0);
curveVertex(214.0,278.0);
curveVertex(228.0,284.0);
curveVertex(237.0,283.0);
curveVertex(244.0,282.0);
curveVertex(253.0,278.0);
curveVertex(259.0,274.0);
curveVertex(263.0,270.0);
curveVertex(268.0,266.0);
curveVertex(271.0,261.0);
curveVertex(241.0,262.0);
curveVertex(237.0,263.0);
curveVertex(229.0,264.0);
curveVertex(226.0,263.0);
curveVertex(221.0,262.0);
curveVertex(209.0,262.0);
curveVertex(201.0,262.0);
curveVertex(196.0,262.0);
curveVertex(193.0,262.0);
curveVertex(191.0,262.0);
endShape();

//glasses bridge
stroke(#cd7f32);
  strokeWeight(0);
  fill(#cd7f32);
beginShape();
curveVertex(235.0,194.0);
curveVertex(234.0,198.0);
curveVertex(214.0,201.0);
curveVertex(214.0,196.0);
curveVertex(235.0,193.0);
curveVertex(235.0,196.0);
endShape();

//glasses Side 1
beginShape();
curveVertex(165.0,198.0);
curveVertex(164.0,205.0);
curveVertex(154.0,195.0);
curveVertex(154.0,189.0);
curveVertex(165.0,196.0);
curveVertex(165.0,197.0);
endShape();
//glasses side 2
beginShape();
curveVertex(286.0,192.0);
curveVertex(286.0,199.0);
curveVertex(325.0,179.0);
curveVertex(323.0,173.0);
curveVertex(290.0,188.0);
curveVertex(288.0,190.0);
endShape();

//glasses
stroke(glasses);
  strokeWeight(0);
  fill(glasses);

beginShape();
curveVertex(164.0,213.0);
curveVertex(174.0,221.0);
curveVertex(189.0,222.0);
curveVertex(203.0,220.0);
curveVertex(211.0,217.0);
curveVertex(214.0,210.0);
curveVertex(215.0,200.0);
curveVertex(208.0,195.0);
curveVertex(197.0,194.0);
curveVertex(183.0,194.0);
curveVertex(172.0,196.0);
curveVertex(166.0,198.0);
curveVertex(163.0,202.0);
curveVertex(164.0,212.0);
endShape();

beginShape();
curveVertex(234.0,197.0);
curveVertex(243.0,192.0);
curveVertex(252.0,190.0);
curveVertex(261.0,190.0);
curveVertex(268.0,190.0);
curveVertex(279.0,191.0);
curveVertex(284.0,192.0);
curveVertex(290.0,197.0);
curveVertex(291.0,203.0);
curveVertex(288.0,208.0);
curveVertex(285.0,211.0);
curveVertex(282.0,215.0);
curveVertex(276.0,218.0);
curveVertex(264.0,217.0);
curveVertex(256.0,218.0);
curveVertex(251.0,218.0);
curveVertex(242.0,218.0);
curveVertex(235.0,216.0);
curveVertex(233.0,211.0);
curveVertex(231.0,203.0);
curveVertex(234.0,197.0);
curveVertex(238.0,193.0);
endShape();

}
