![A detail of the drawing "Chance and Order Group VII, Drawing 6" by Kenneth Martin, made in 1971](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Week04_Randomness/Images/KennethMartin_ChanceAndOrderGroupVII-Drawing6_1971-DETAIL.jpg)

# RANDOMNESS  

### TLDR  
* Three (or more) exploratory sketches due Oct 6 by 11am EST  
* Reading response on articles about Open Source software, added as comment on assignment  
* Oct 13 is a Monday schedule – no class!  
* Finished version, exported as a `jpg`, due Oct 20 by 11am EST  
* Upload `jpg` image to Canvas and include a link to `p5.js` code as a comment  


### ASSIGNMENT  
> "The computer is a unique device for the arts since it can function soley as an obedient tool with vast capabilities for controlling complicated and involved processes, but then again, full exploitation of its unique talents for controlled randomness and detailed algorithms could result in an entirely new machine – a creative artistic medium." – A. Michael Noll (1970)

We've seen very clearly that the computer does exactly what you tell it, even if the result isn't what you intended 😂. But programming is also capable of what software art pioneer A. Michael Noll calls "controlled randomness," a creative tool that both breaks the computer's determinism and takes advantage of its capacity to quickly create ([seemingly](https://en.wikipedia.org/wiki/Pseudorandomness)) random values. For this assignment, you'll explore randomness as a tool that can be used to drive any visual parameter in your sketch – position, size, rotation, color, number of iterations, etc – and create results that are entirely unexpected.

Code that uses randomness will generate different outputs every time it's run, which can be really exciting, too! Remember the idea of iterative development: run your sketch many times and keep the outputs that you like best. This can be a super cool way of working but maybe a little weird: it removes your artistic hand to a degree, leaving you to act as coordinator (writing code) and curator (selecting output to show) – very different than the way we make art with more traditional materials.

*Above: a detail of the drawing *Chance and Order Group VII, Drawing 6* by Kenneth Martin, made in 1971
.*  


### FOR TUESDAY, OCT 6  
For next week, please create at least three different exploratory studies in code thinking about randomness. These should show a range of ideas and explore potential directions for the project. Think about all the ideas we've used so far (basic shape commands, iteration, design principles like color and composition) and how you might apply randomness to them. The goal is to pack as many randomly-controlled values into your sketch as possible! Dimensions for your sketch are up to you, though try to make it resize with the browser window if you can.

**Please also watch the video about Open Source software and read the two PDFs in this week's `Readings` folder.** Think about your reaction to, thoughts about, and/or questions related to releasing software for free (for, against, confused, whatever) and write up points you'd like to discuss in class. Upload this as a comment on this assignment in Canvas.


### FOR TUESDAY, OCT 20  
**Note! The 13th is a Monday schedule, so we won't meet! The final version of your projects are due the following Tuesday.**

For next week, please take your initial randomness studies and create a final iteration. Push the visual explorations you did last week: where can you add more randomized parameters? What happens when you start layering things? Can you create randomized systems driven by other randomized systems? How might you take a simple idea and push it to something beautiful (like Vera Molnar's deformed squares)?

Run your sketch a bunch of times, saving each one to your computer. Go through the results and pick your favorite. Think about the criteria you're using to select the best image – we'll talk about this in the crit.

When you're done, upload your selected `jpg` to Canvas and add a link to your code as a comment.


### CODE EXAMPLES/VIDEOS  
* [Video tutorials for this week]()  
* [Code examples in the P5JS Editor](https://editor.p5js.org/jeffThompson/collections/068j0-ph-)  


### DELIVERABLES  
* Three or more initial code sketches, submitted as a comment on Canvas  
* Final output, saved as a `jpg`, uploaded to Canvas (with a link to your code as a comment)  
* Two questions/responses to the readings on Open Source, also posted as a comment  


### STRETCH GOALS  
Try adding these elements to your sketch:

* Can you add the random parameters automatically to your exported filename, so you could recreate the image later?  
* Could you use a hardware-based random number generation method (dice, coin toss, an algorithm of your own devising) to use as the `randomSeed()` every time you run your program? How could that be wrapped into the conceptual idea of your project?  


### INSPIRATION  
* [Exquisite corpse drawings](https://en.wikipedia.org/wiki/Exquisite_corpse), for example [the ones by Jake and Dinos Chapman](http://www.tate.org.uk/art/artworks/chapman-exquisite-corpse-p78458)  
* Raymond Queneau's [*Hundred Thousand Billion Poems*](http://www.leoalmanac.org/vol17-no2-hundred-thousand-billion-fingers/)  
* Jean Arp's [*According To The Laws of Chance*](http://www.tate.org.uk/art/artworks/arp-according-to-the-laws-of-chance-t05005)  
* Paintings of [Kenneth Martin](http://www.tate.org.uk/art/artworks/martin-chance-and-order-v-p04589)  
* RAND Corporation's seminal 1946 book [*A Million Random Digits*](https://en.wikipedia.org/wiki/A_Million_Random_Digits_with_100,000_Normal_Deviates) (read it online [here](http://www.rand.org/pubs/monograph_reports/MR1418.html)), integral to the nuclear and computer age  
* [*House of Dust*](http://e-flux.com/aup/project/alison-knowles/) by Alison Knowles  
* The work of [Frieder Nake](https://en.wikipedia.org/wiki/Frieder_Nake)  
* [*Random War*](http://csuriproject.osu.edu/index.php/Detail/objects/539) by Charles Csuri
* [*Discreet Music*](https://www.youtube.com/watch?v=LOpRj927vRc) by Brian Eno (can also be streamed on Amazon Prime)  
* Works by early computer artist [Vera Molnár](https://en.wikipedia.org/wiki/Vera_Moln%C3%A1r)  
* [Manfred Mohr](https://en.wikipedia.org/wiki/Manfred_Mohr), also an early pioneer of art using the computer  
* *Quantum Cloud* by Antony Gormley, see also [this engineering design analysis](http://www.lusas.com/case/civil/gormley.html) for the project  
* The epic terrain and history-generating game [Dwarf Fortress](http://www.bay12games.com/dwarves)  
* [*Z1FFER*](http://www.creativeapplications.net/arduino-2/z1ffer/), a hardware random number generating "shield" for the Arduino  
* [Torrit Grey](https://www.gamblincolors.com/torrit-grey) from Gamblin Paints  
* And [*White Noise Boutique*](http://jeffreythompson.org/white-noise-boutique.php) by Jeff Thompson (me 😊)  


### ADDITIONAL RESOURCES  
* Greate, practical [examples of using randomness in code](https://kynd.github.io/p5sketches/random.html) from kynd  
* Some historical random number generating methods include [dice](https://en.wikipedia.org/wiki/Dice), [yarrow sticks](https://en.wikipedia.org/wiki/I_Ching_divination), [radio noise](https://www.random.org/history/), [lava lamps](https://en.wikipedia.org/wiki/Lavarand), [hard-drive entropy](https://en.wikipedia.org/wiki/Entropy_(computing)), and [various algorithms](https://en.wikipedia.org/wiki/Mersenne_Twister) (computed by hand or computer)  
* More about the history of [Random.org](https://www.random.org/history/) and their [intro to random numbers](https://www.random.org/randomness/)  
* We can also test for randomness using a variety of mathematical and statistical tests – the [Dieharder suite](https://www.phy.duke.edu/~rgb/General/dieharder.php) is a classic  
* Nerd out in [this highly, highly detailed video](https://www.youtube.com/watch?v=q15yNrJHOak) on random number generation in Super Mario World  
* If you have a week free to hide out a read a (giant) novel about randomness, Neal Stephenson's [*Cryptonomicon*](https://en.wikipedia.org/wiki/Cryptonomicon) is excellent  

