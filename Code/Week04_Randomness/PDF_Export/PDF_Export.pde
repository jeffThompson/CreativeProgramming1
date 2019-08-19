
import processing.pdf.*;  // required to use the PDF library
                          // found under Sketch > Import Library...
                          
/*
PDF EXPORT
Jeff Thompson | 2017 | jeffreythompson.org

Image files (like jpg or png) are great for when
you want to show your project on the web, or are
working with raster (pixel-based image) data. But
if you want crispy graphics that can scale well
for printing, especially with vector (math-based
shape) data, PDF is the best bet.

WARNING:
We can easily make really, really (really!) complex
PDF files with thousands or millions of shapes. That's
usually ok, but it will cause slow loading times and
could crash Illustrator or Acrobat. It's good to be
a little cautious, but breaking computers usually
means you're doing something interesting :)

*/

String filename = "RandomLines.pdf";


void setup() {
  size(800,800);
  
  // start adding to the PDF – should be
  // immediately after the size() command
  beginRecord(PDF, filename);
  
  // background must come *after* beginRecord()
  background(255);
  
  // do some drawing to our PDF
  for (int i=0; i<10000; i++) {
    
    // create four random points 
    float x1 = random(width);
    float y1 = random(height);
    float x2 = random(width);
    float y2 = random(height);
    
    // draw a line between the two
    stroke(0, 50);
    line(x1,y1, x2,y2);
    
    // and a circle at one end
    fill(255);
    noStroke();
    ellipse(x1,y1, 10,10);
  }
  
  // stop recording to save the file
  endRecord();
  exit();          // optional: quit when done
}
  
  
  
  
  