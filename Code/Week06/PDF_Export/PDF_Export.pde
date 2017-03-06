
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
  
  // do some drawing to our PDF
  background(255);
  stroke(0, 50);
  for (int i=0; i<1000; i++) {
    line(random(width), random(height), random(width), random(height));
  }
  
  // stop recording to save the file
  endRecord();
  exit();
}
  
  
  
  
  