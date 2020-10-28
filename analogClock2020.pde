//アナログ時計　2020.10.28
void setup(){
  size(400,400);
}

void draw(){
  background(255);
  
  float cx,cy;
  cx = 200;
  cy = 200;
  
  int sec = second();  // Values from 0 - 59
  int min = minute();  // Values from 0 - 59
  int hour = hour(); // Values from 0 - 23
  if (hour>12) hour = hour-12;

  float hour_r = 100;
  float hour_deg = hour*30 + min*30/60-90;
  float hour_radian = radians(hour_deg);
  float hour_x = hour_r*cos(hour_radian) + cx;
  float hour_y = hour_r*sin(hour_radian) + cy;

  strokeWeight(5);
  line(cx,cy,hour_x,hour_y);
  
  float min_r = 150;
  float min_deg = min*6-90;
  float min_radian = radians(min_deg);
  float min_x = min_r*cos(min_radian) + cx;
  float min_y = min_r*sin(min_radian) + cy;

  strokeWeight(5);
  line(cx,cy,min_x,min_y);
  
  float sec_r = 150;
  float sec_deg = sec*6-90;
  float sec_radian = radians(sec_deg);
  float sec_x = min_r*cos(sec_radian) + cx;
  float sec_y = min_r*sin(sec_radian) + cy;

  strokeWeight(1);
  line(cx,cy,sec_x,sec_y);
}
