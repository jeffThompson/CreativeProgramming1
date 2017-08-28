
/*
TABLE AND CHAIRS
Jeff Thompson | 2017 | jeffreythompson.org

Sample code showing how you *might* draw a room with
table and chairs (though there's lots and lots of other
great ways you could approach this too!).

*/


void setup() {
  size(600,600);
  noStroke();
  
  // back wall
  background(140);
  
  // ceilling
  fill(170);
  rect(0,0,width,20);
  
  // floor
  fill(160);
  rect(0,height-100, width,100);
  fill(110);
  rect(0,height-100,width,-10);    // baseboard

  // table
  fill(180);
  rect(width/2-300/2, height-200, 300,10);     // top
  rect(width/2-260/2, height-190, 260,15);     // apron
  rect(width/2-260/2, height-175, 10,100);     // L leg
  rect(width/2+260/2-10, height-175, 10,100);  // R leg
  
  fill(110);
  rect(width/2-260/2, height-75,10,5);         // feet
  rect(width/2+260/2, height-75,-10,5);
  
  fill(160);
  rect(width/2-260/2, height-190, 260,5);      // shadow
  
  // lamp
  fill(30);
  rect(width/2-2,0, 4,250);      // cord
  fill(60);
  rect(width/2-50,250, 100,50);  // shade
  
  // window
  fill(0,200,255);
  rect(0,100, 80,300);  // sky
  fill(0,200,150);
  rect(0,300,80,100);   // grass
  fill(100);
  rect(0,100,80,10);    // top sill
  rect(80,100,10,300);  // right sill
  rect(0,260,80,10);    // center div
  fill(120);
  rect(0,400, 100,10);  // bottom sill
  fill(100);
  rect(0,410, 90,30);   // sill base
  fill(80);
  rect(0,410, 90,10);   // sill base
  
  // curtains
  fill(40);
  rect(0,110, 110,4);       // rod
  ellipse(110,112, 12,12);  // knob
  fill(255, 150);
  rect(50,110, 50,270);     // curtain
  rect(50,110, 50,15);      // top curtain bit
  
  // painting
  fill(200);
  rect(width-110,190, 110,170);
  fill(230,175,0);
  rect(width-100,200, 100,150);
  
  // bowl of fruit
  fill(190,140,0);
  ellipse(width/2-20,height-240, 30,30);  // an orange
  ellipse(width/2+15,height-240,30,30);   // and another
  fill(0,150,0);
  ellipse(width/2-25,height-248, 3,3);    // little green stem piece
  fill(200,150,0);
  ellipse(width/2,height-240, 30,30);     // another orange
  fill(0,150,0);
  ellipse(width/2+3,height-250, 3,3);
  fill(0,150,255);
  arc(width/2, height-240, 80,80, 0,PI);  // bowl
  fill(0,120,230);
  rect(width/2-42,height-240, 84,5);      // lip
  
  // glass of water
  fill(255,30);
  rect(width/2-100,height-250, 30,50);
  rect(width/2+100,height-250, -30,50);
  fill(185,15,15,150);
  rect(width/2-95,height-230, 20,25);
  rect(width/2+95,height-215, -20,10); 
}
  
  