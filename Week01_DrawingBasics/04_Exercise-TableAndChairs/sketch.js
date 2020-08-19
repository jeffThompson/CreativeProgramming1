
/*
EXERCISE: TABLE AND CHAIRS
Jeff Thompson | 2017/20 | jeffreythompson.org

Now it's time to put together everything we've done so
far: making a canvas, pixel coordinates, basic drawing 
commands, stroke/fill colors, having shapes resize based 
on the width/height of the <canvas>, and saving images.

As an exercise, try drawing a table and chairs using only
the commands we've covered so far! There are a few more
shape commands we didn't cover, which you can use:
https://p5js.org/reference/#group-Shape

This sample code showing how you *might* draw a table and 
chairs in code, but of course there are lots and lots of other
great ways you could approach this too!

If you get stuck, I *highly* suggest mapping things out using
pencil and paper. I can't tell you how many pages of my 
sketchbook are filled with diagrammatic doodles trying to
figure out a code-related problem.

If you've done some programming before, please avoid things
like variables, for-loops, and conditional statements! Yes,
they make things easier but this is about getting familiar
with drawing in code. Too easy? Be sure to try the challenges
listed below.

Notice the careful commenting throughout? It makes it
waaayy easier to find the code you want to modify if it's
well commented – a habit worth practicing early.

CHALLENGES
+ As much as you can, try to use the width/height variables for
  all drawing commands
+ Can you put your table/chairs in a room? What about a window
  with a view outside?
+ If you're feeling really adventurous, try drawing everything
  in pseudo-3D! (Hint: use ellipse() and begin/endShape() for
  most of your drawing commands)

*/


function setup() {
    createCanvas(600,600);

    // I don't want outlines at all in this drawing,
    // so I can "globally" turn this off in setup()
    noStroke();
}


function draw() {
    
    // back wall
    background(140);

    // ceilling
    fill(170);
    rect(0,0, width,20);

    // floor/baseboard
    fill(160);
    rect(0,height-100, width,100); 
    fill(110);
    rect(0,height-110, width,10);

    // table
    fill(180);
    rect(width/2-300/2, height-200, 300,10);     // top
    rect(width/2-260/2, height-190, 260,15);     // apron
    rect(width/2-260/2, height-175, 10,100);     // L leg
    rect(width/2+260/2-10, height-175, 10,100);  // R leg

    fill(110);                                   // feet
    rect(width/2-260/2, height-75,10,5);         
    rect(width/2+260/2, height-75,-10,5);

    fill(160);                                   // shadow
    rect(width/2-260/2, height-190, 260,5);      

    // short bench
    fill(200);
    rect(width/2+150, height-140, 70,10);   // top
    rect(width/2+150, height-130, 10,60);   // L leg
    rect(width/2+210, height-130, 10,60);   // R leg
    
    fill(220,50,110);                       // pad
    rect(width/2+150,height-150, 70,10);    

    fill(110);                              // feet
    rect(width/2+150,height-75, 10,5);      
    rect(width/2+210,height-75, 10,5);

    fill(180);                              // shadow
    rect(width/2+150, height-130, 10,5);
    rect(width/2+210, height-130, 10,5);

    // long bench
    fill(200);
    rect(width/2-180, height-140,200,10);   // top
    rect(width/2-180, height-140,10,70);    // L leg
    rect(width/2+10, height-130, 10,60);    // R leg

    fill(220,50,110);                       // pad
    rect(width/2-180, height-150,200,10);   

    fill(110);                              // feet
    rect(width/2-180,height-75, 10,5);      
    rect(width/2+10, height-75, 10,5);

    fill(180);                              // shadow
    rect(width/2-180,height-130, 10,5);
    rect(width/2+10, height-130, 10,5);

    // lamp
    fill(255,40);                   // some light
    ellipse(width/2,290, 50,50);
    fill(255,30);                   // some more
    ellipse(width/2,290, 60,60);
    fill(255,20);                   // and more
    ellipse(width/2,290, 70,70);
    fill(255,10);                   // and more
    ellipse(width/2,290, 80,80);
    
    fill(255,150);                  // bulb
    ellipse(width/2,290, 40,40);
    
    fill(30);                       // cord
    rect(width/2-2,0, 4,250);      
    
    fill(60);                       // shade
    rect(width/2-50,250, 100,50);

    // looking out the window
    fill(0,200,255);                // sky
    rect(0,100, 80,300);
    
    fill(35,190,95);                // grass
    rect(0,300,80,100);
    fill(220,220,255);
    
    // house in the distance
    beginShape();         // front
    vertex(0,200);
    vertex(40,230);
    vertex(40,300);
    vertex(0,300);
    endShape();
    
    fill(200,200,235);    // side
    rect(40,230, 40,70);
    
    fill(90,90,95);       // roof
    beginShape();
    vertex(0,200);
    vertex(80,200);
    vertex(80,240);
    vertex(40,240);
    endShape();
    
    fill(70,70,75);       // chimney
    rect(15,190, 20,10);
    
    fill(200,130,215);    // house window
    rect(0,240, 10,30);   
    
    // window frame
    fill(100);
    rect(0,100,80,10);    // top sill
    rect(80,100,10,300);  // right sill
    rect(0,260,80,10);    // center div
    
    fill(120);            // bottom sill
    rect(0,400, 100,10);
    
    fill(100);            // sill base
    rect(0,410, 90,30);   
    fill(80);
    rect(0,410, 90,10);

    // curtains
    fill(40);
    rect(0,110, 110,4);       // rod
    ellipse(110,112, 12,12);  // knob
    fill(255, 150);
    rect(50,110, 50,270);     // curtain
    rect(50,110, 50,15);      // top curtain bit

    // painting on the wall
    fill(200);
    rect(width-110,190, 110,170);
    fill(230,175,0);
    rect(width-100,200, 100,150);

    // bowl of fruit
    fill(190,140,0);                        // oranges
    ellipse(width/2-20,height-240, 30,30);
    ellipse(width/2+15,height-240,30,30);
    
    fill(0,150,0);                          // little green stem piece
    ellipse(width/2-25,height-248, 3,3);
    
    fill(200,150,0);                        // another orange
    ellipse(width/2,height-240, 30,30);     
    
    fill(0,150,0);
    ellipse(width/2+3,height-250, 3,3);
    
    fill(0,150,255);                        // bowl
    arc(width/2, height-240, 80,80, 0,PI); 
    fill(0,120,230);                        // lip
    rect(width/2-42,height-240, 84,5);      

    // glasses of juice
    fill(255,30);                           // glass
    rect(width/2-100,height-250, 30,50);
    rect(width/2+100,height-250, -30,50);
    
    fill(185,15,15,150);                    // juice
    rect(width/2-95,height-230, 20,25);
    rect(width/2+95,height-215, -20,10);

    // mouse hole (a rectangle with rounded corners)
    fill(50);
    rect(width-35,height-125, 20,25, 10,10,0,0);

    // when done, we can save it to an image file!
    // (remember to add noLoop() in the setup)
    // save("TableAndChairs.png");
}

