![An example of a traditional quilt](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Week02_IterationAndLoops/NinePatch_BarbaraYoder_1920-detail.jpg)

# ALGORITHMIC QUILTS

**DUE: TUESDAY, SEPTEMBER 24**

One of the things computers are very good at is repetitious tasks: just the act of displaying fetching this web page and displaying the text likely required millions of mathematical computations, all happening in just a few seconds. This week, we'll use the ideas of iteration, `push/popMatrix()`, and custom functions to build algorithmically-generated quilts. After researching [traditional quilt patterns](https://github.com/jeffThompson/CreativeProgramming1/blob/master/Readings/Week02_IterationAndLoops/EncyclopediaOfPiecedQuiltPatterns_BarbaraBrackman.pdf) and doing some drawing by hand, we'll move to code where you'll write a sketch that generates a quilt. The goal is not to replicate traditional designs directly, but be inspired by them to create your own. Think about what kinds of designs might be appropriate for a computer-generated quilt.

(Want to see what this process might have looked like in 1984? See [this article in *Compute! Gazette* issue 13](https://archive.org/stream/1984-07-computegazette/Compute_Gazette_Issue_13_1984_Jul#page/n85/mode/2up) on page 83.)

*Above: a "Nine Patch" pattern quilt by Barabara Yoder, 1920*  


## FOR TUESDAY, SEPT 17  

First, please make at least 10 drawings of patterns you find in Barbara Brackman's *Encyclopedia of Pieced Quilt Patterns* (in the `Readings` folder). Take your time and really analyze the patterns. Be sure to note the pattern name and/or number so you can find it again. **Be sure to bring these to class next week!**

With those drawings done, start prototyping your quilt in code. It should be inspired by the historical patterns we looked at in class, but also the visual opportunities that for-loops provide, meaning your finished doesn't need to look anything like traditional quilts when you're done!

The sketch should be at least `2400 x 2400 pixels` to give you enough room to work. That may not fit onscreen, so you'll want to have your sketch save to file so you can preview it.

```
void setup() {
	size(2400, 2400);
	background(0,150,255);

	// draw your quilt block here
	// for example, this draws a bunch of circles in a grid
	for (int y=0; y<height; y+=10) {
		for (int x=0; x<width; x+=10) {
			fill(255,150,0);
			noStroke();
			ellipse(x+5,y+5, 10,10);
		}
	}

	// save an image of your quilt
	save("ThompsonJeff_QUILT.png");
}
```


## FOR TUESDAY, SEPT 24  

Continue iterating on your quilt's design. Try adding a border, quilting (little patterned stitches that cover the surface), or any other items you might want to make your quilt amazing!

When done, be sure to export your sketch as a PNG file with the correct filename and upload to Canvas.


## DELIVERABLES

* Drawings of at least 10 quilt patterns from Brackman's book, or from patterns you find elsewhere – bring these to class next week!   
* Exported image of your quilt, named `LastnameFirstname_QUILT.png`  


## STRETCH GOALS  

Try adding these elements to your quilt:

* Can you add a decorative border around your quilt?  
* Can you add an option to your functions to change the colors within the block? (Hint: you could pass colors as arguments using the `color` variable type.)  
* Can you nest functions to generate larger blocks, which get repeated across the quilt, perhaps even rotated?  
* Add ["quilting"](https://en.wikipedia.org/wiki/Quilting) to your finished image (quilting is decorative stitching that is over the top of the pieced pattern)  


### RESOURCES  
* The [graph paper](https://github.com/jeffThompson/CreativeProgramming1/blob/master/Resources/QuiltGraphPaper.pdf) we used in class – print more if you need it for planning your project  
* Barbara Brackman's [*Encyclopedia of Pieced Quilt Patterns*](https://github.com/jeffThompson/CreativeProgramming1/blob/master/Readings/Week02_IterationAndLoops/EncyclopediaOfPiecedQuiltPatterns_BarbaraBrackman.pdf) includes over 1000 different quilt patterns  
* The University of Nebraska–Lincoln's amazing [International Quilt Study Center](http://www.quiltstudy.org) and Museum includes an excellent [online collection](http://www.quiltstudy.org/collections/search.html) you can browse (searching by country is especially helpful)  
* A wonderful video documenting the Met Museum's [re-created Moroccan courtyard](https://www.youtube.com/watch?v=Og6cTlwBTrk) (which you can go see IRL, too!)  
* Read more about [Girih tiles](https://en.wikipedia.org/wiki/Girih_tiles), used in Islamic architecture  
* And if you want to get mathier, read about [aperiodic tiling](https://en.wikipedia.org/wiki/Aperiodic_tiling), [Penrose tiles](https://en.wikipedia.org/wiki/Penrose_tiling), and [aperiodic sets of tiles](https://en.wikipedia.org/wiki/List_of_aperiodic_sets_of_tiles)  
* Want to read about the birth of the function, created by Grace Hopper in 1952? See the `Optional Readings` section for this week  

### IMAGES SHOWN  
* Historic quilts from around the world (see the `Images` folder for the details)  
* Images from [*Encyclopedia of Needlework*](https://archive.org/details/encyclopediaofne00dill) by Thérèse de Dillmont, published in 1890  
* [Bauhaus-era](https://en.wikipedia.org/wiki/Bauhaus) quilts and textiles by [Anni Albers](https://en.wikipedia.org/wiki/Anni_Albers), [Gertrud Arndt](https://en.wikipedia.org/wiki/Gertrud_Arndt), and [Sophie Taeuber-Arp](https://en.wikipedia.org/wiki/Sophie_Taeuber-Arp)  
* Islamic tile from Morocco, Spain, Iran, and Uzbekistan  
* Quilts, quilt/paintings, and quilt/sculptures of [Sanford Biggers](http://www.marianneboeskygallery.com/artists/sanford-biggers)  
* Drawings of [tessellated](https://en.wikipedia.org/wiki/Tessellation) animals and figures by [M. C. Escher](https://en.wikipedia.org/wiki/M._C._Escher)  
* Paintings by [Peter Halley](http://www.peterhalley.com/)  
* Images of tiling from mathematics and science, such as the Penrose Tile and bismuth crystals  

