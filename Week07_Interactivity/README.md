![An operator at a SAGE console, using a light pen](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Week07_Interactivity/Images/SAGE-ConsoleOperator.jpg)

# INTERACTIVITY

### TLDR
* Make a sketch that responds to your mouse (and other inputs, if you want)
* Work-in-progress sketch due Nov 1; upload link to sketch in Canvas  
* Finished sketch due Nov 8  
* Upload three screenshots showing your sketch running to Canvas and include a link to your code  
* **Scheduling note! We'll meet online on Nov 1 at 11am (Zoom link in Canvas); we meet IRL as usual on Nov 8**  

***

### ASSIGNMENT
So far we've only created static images, but that leaves out a huge part of what `p5.js` can do! Diving into interactivity (and, soon, animation) we'll create sketches that respond to mouse and keyboard input. In his paper *The Art of Interaction: Interactivity, Performativity, and Computers* (found in the `Readings` folder), David Saltz describes interactive art as having three things:

* An input device that translates one's behavior into digital form
* That the input data affects the output
* And that the output is translated back into real-world phenomena that we can perceive, all in real-time

For this two-week project, your assignment is to build a sketch that responds to mouse and/or keyboard input in a visual way. How you approach this, and what it looks like, is up to you, but the result should be a unique exploration of interactivity and the visual. Like the `Randomness` project, try to pack as many interactive elements as possible!

Think about ways the mouse, keyboard, and other inputs could change:

* Position (stillness, motion, speed)
* Size (things get bigger, smaller, appear, disappear)
* Shape (number of sides, switch between shapes)
* Rotation (angle, faster/slower, start/stop)
* Color (shift or flicker, `lerpColor()`, HSL mode)
* How many of something (end condition of for-loop)
* Complex conditions (nest if/else statements depending on interaction)
* Constraining movement or changes using `map()`

Remember! The way your finished code interacts with the viewer and the visual results it creates are what's important: fancy code + boring output = boring art. Same goes for ["feature creep"](https://en.wikipedia.org/wiki/Feature_creep) (aka the potpourri approach). Don't worry about trying to build a drawing app or physics simulation – it seems simple but you'll spend your whole time on technical problems. Instead, try making something that's visually engaging and where interactivity feels fun, interesting, and complex.

*Above: an operator at a [SAGE console](https://en.wikipedia.org/wiki/Semi-Automatic_Ground_Environment), using a light pen.*

***

### CODE EXAMPLES/VIDEOS
* [Video tutorials for this week](https://www.youtube.com/playlist?list=PLsGCUnpinsDkEBs6Ug9J_RCULw3D7Wj0P)
* [Code examples in the `p5.js` Editor](https://editor.p5js.org/jeffThompson/collections/hgFsqg5ZM)

To run your sketch fullscreen:
1. Save the sketch
2. Go to `File > Share...` in the `p5.js` editor
3. Click the button next to `Fullscreen`
4. You should be able to refresh the fullscreen view as you work, previewing the work at large scale

***

### DELIVERABLES
* Interactive sketch that uses mouse input (keyboard and other inputs optional)
* Running in fullscreen mode and taking up the full width/height of the window  
* 3 screenshots showing your program running

***

### INSPIRATION
* [Philippe Neveu's awesome website](https://philippeneveu.com/)
* [A. Michael Noll's](https://en.wikipedia.org/wiki/A._Michael_Noll) work with early computer graphics at Bell Labs in the 1960s
* [Sketch Pad](https://en.wikipedia.org/wiki/Sketchpad)
* [Light pen](https://en.wikipedia.org/wiki/Light_pen) input by [RAND Corporation](https://en.wikipedia.org/wiki/RAND_Tablet) and [SAGE](https://en.wikipedia.org/wiki/Semi-Automatic_Ground_Environment)
* Leon Harmon and Kenneth Knowlton's [*Reclining Nude*](http://www.medienkunstnetz.de/works/nude/)
* [*Telautograph*](https://en.wikipedia.org/wiki/Telautograph) patent by Elisha Gray
* Capacitive and other touch input methods
* Myron Krueger's [*Videoplace*](https://www.youtube.com/watch?v=dmmxVA5xhuo) from 1974
* Graffiti Research Lab's [*EyeWriter*](http://www.graffitiresearchlab.com/blog/eyewriter/) and [*Laser Tag*](http://www.graffitiresearchlab.com/blog/projects/laser-tag/#video)
* Zach Lieberman's [daily sketching](https://www.instagram.com/zach.lieberman/) in OpenFrameworks (and [read more about his process here](https://medium.com/@zachlieberman/daily-sketches-2016-28586d8f008e))

***

### RESOURCES
* If you want more natural movement, you might find the `Motion` and `Interaction` examples on the [`p5.js` website](https://p5js.org/examples) to be helpful
* [Read more about A. Michael Noll's work](http://median.newmediacaucus.org/routing-mondrian-the-a-michael-noll-experiment/) in the *Media-N* journal
* Several articles on the history of interactivity and the arts in this week's `Readings` folder

