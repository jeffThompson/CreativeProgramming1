
/*
TABLE AND CHAIRS
Jeff Thompson | 2017 | jeffreythompson.org

Sample code showing how you *might* draw a room with
table and chairs (though there's lots and lots of other
great ways you could approach this too!).

Notice the careful commenting throughout? It makes it
waaayy easier to find the code you want to modify if it's
well commented – a habit worth practicing early.

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
  rect(0,height-110,width,10);    // baseboard

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
  
  // kristen says there's no chairs:
  // here's some benches...
  
  // short bench
  fill(200);
  rect(width/2+150, height-140, 70,10);   // top
  rect(width/2+150, height-130, 10,60);   // L leg
  rect(width/2+210, height-130, 10,60);   // R leg
  fill(220,50,110);
  rect(width/2+150,height-150, 70,10);    // pad
  
  fill(110);
  rect(width/2+150,height-75, 10,5);      // feet
  rect(width/2+210,height-75, 10,5);
  
  fill(180);
  rect(width/2+150, height-130, 10,5);    // shadow
  rect(width/2+210, height-130, 10,5);
  
  // long bench
  fill(200);
  rect(width/2-180, height-140,200,10);   // top
  rect(width/2-180, height-140,10,70);    // L leg
  rect(width/2+10, height-130, 10,60);    // R leg
  
  fill(220,50,110);
  rect(width/2-180, height-150,200,10);   // pad
  
  fill(110);
  rect(width/2-180,height-75, 10,5);      // feet
  rect(width/2+10, height-75, 10,5);
  
  fill(180);
  rect(width/2-180,height-130, 10,5);     // shadow
  rect(width/2+10, height-130, 10,5);
  
  // lamp
  fill(255,40);
  ellipse(width/2,290, 50,50);   // some light
  fill(255,30);
  ellipse(width/2,290, 60,60);   // some more
  fill(255,20);
  ellipse(width/2,290, 70,70);   // and more
  fill(255,10);
  ellipse(width/2,290, 80,80);   // and more
  fill(255,150);                 // bulb
  ellipse(width/2,290, 40,40);
  fill(30);
  rect(width/2-2,0, 4,250);      // cord
  fill(60);
  rect(width/2-50,250, 100,50);  // shade
  
  // window
  fill(0,200,255);
  rect(0,100, 80,300);  // sky
  fill(35,190,95);
  rect(0,300,80,100);   // grass
  fill(220,220,255);
  beginShape();         // house front
  vertex(0,200);
  vertex(40,230);
  vertex(40,300);
  vertex(0,300);
  endShape();
  fill(200,200,235);
  rect(40,230, 40,70);  // house side
  fill(90,90,95);
  beginShape();
  vertex(0,200);        // house roof
  vertex(80,200);
  vertex(80,240);
  vertex(40,240);
  endShape();
  fill(70,70,75);
  rect(15,190, 20,10);  // chimney
  fill(200,130,215);
  rect(0,240, 10,30);   // house window
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
  
  // glasses of juice
  fill(255,30);
  rect(width/2-100,height-250, 30,50);    // glass
  rect(width/2+100,height-250, -30,50);
  fill(185,15,15,150);
  rect(width/2-95,height-230, 20,25);     // juice
  rect(width/2+95,height-215, -20,10);
  
  // mouse hole (a rectangle with rounded corners)
  fill(50);
  rect(width-35,height-125, 20,25, 10,10,0,0);
  
  // save it to an image file!
  save("TableAndChairs.png");
}
  
  
