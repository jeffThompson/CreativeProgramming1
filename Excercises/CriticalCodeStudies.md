![Bridges on Long Island, designed by Robert Moses in the 1920s and 30s](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Exercises/CriticalCodeStudies/LongIslandBridges.png)


CRITICAL CODE STUDIES
====

>"Familiarity with the latest gadgets or services is often less important than possessing the critical knowledge to engage productively with networked situations, including the ability to control how personal information flows and how to look for and interpret accessible information... Access to technology should not be conflated with use." – danah boyd

Today, we'll be talking about [Critical Code Studies](https://en.wikipedia.org/wiki/Critical_code_studies), and how we can view computer code as a text to be read, analyzed, and critiqued. We often think of code as purely functional, accomplishing a task, but it also embeds our [values](http://gizmodo.com/5980842/there-is-blatant-racist-and-sexist-language-in-github-code), and the limitations of their programming language and the [data we use](http://blogs.wsj.com/digits/2015/07/01/google-mistakenly-tags-black-people-as-gorillas-showing-limits-of-algorithms/).

Below outlines some ways of approaching code from a critical, textual point of view. See also the `Further Reading` section below for lots more ways to dig into this topic.

*Above: Some of the 204 bridges on Long Island, designed by Robert Moses in the 1920s and 30s. A co-worker of Moses was cited as saying that Moses purposefully built the bridges very low as a way to keep out poorer people, who largely depend on public transit like buses, that couldn't fit under the them.*

### PORTING  
One way of investigating a piece of code, rather than through writing an analysis, is to "port" it to another language. By re-writing the code, we're forced to look at it very carefully, understand exactly what it does, and deal with the limitations of both the source and new programming contexts.

>"Notably, many of these insights are not available through token-by-token analysis of code. They require closely considered reading, writing, and execution of code." – *10 PRINT CHR$*  

`10 PRINT CHRS$(205.5+RND(1)); : GOTO 10` is a great piece of code to port, since it is rather straightforward, but also requires some modification for modern programming languages like Processing.

Here's a really simple template to get started:  

    void setup() {
      for (int i=0; i<2000; i++) {
        if (random(1) < 0.5) {
          print("\\");
        }
        else {
          print("/");
        }
      }
    }

How is this version different than the original? What things does [BASIC](https://en.wikipedia.org/wiki/BASIC) do that Processing can't easily? Which version is more readable? Which version is more easily changed to behave differently?

Try changing the code and see what happens!

* Different characters to change the maze pattern  
* Different probabilities for deciding which character gets printed  
* Use a `while` loop instead of the `for` loop  
* Draw using text onscreen, instead of the console (and trying different fonts)  
* Draw using shapes instead of text  

What do these investigations tell us about the original? Do they suggest other variations that might be interesting? (For example, we could also think about any format where two opposite things are chosen, such as audio files/channels.)

### WEB DIGGING  
Another way we can explore code is more textual: reading it like we would a book or poem, searching for interesting things. Reading something like [the Assembly code for an Atari game](https://mitpress.mit.edu/books/racing-beam) is possible, but takes a lot of technical know-how. Instead, we'll look at the source code for websites.

To do this, we'll use the `View Source` feature found in all browsers. It shows us the ([usually](https://en.wikipedia.org/wiki/Obfuscation_(software))) human-readable code that makes up a website:

* Firefox: `Tools > Web Developer > Page Source`  
* Chrome: `View > Developer > View Source`  
* Safari: `Develop > Show Page Source`  

Start with websites you visit regularly and look at their source code: what do you see? Obvious things are good! How is the site structured, what are things named, what things are consistent across many sites, what conventions exist?

As you dig deeper, think about these contexts, which can be useful for provocing further investigation:

* **Authorship:** Multiple authors in one document; human/machine  
* **Transparency:** Obfuscation vs clarity; public vs private  
* **Power:** Who controls the content? Can this be subverted?  
* **Organizations:** What do our findings suggest about the organizations that wrote these texts?  
* **Poetics:** What unintended, aesthetic surprises can we find?  

Don't worry about finding shocking revelations or amazing, hidden things. Fruitful critique often comes out of the very mundane but previously unarticulated.

If you want to get a little fancier, you can start using your programming skills in your dig:

* Firefox has great developer tools that let us see CSS rules applied to an element, etc. Found in: `Tools > Developer Tools > Toggle Tools...`  
* Use regular expressions within Sublime Text to search source code. `<\!--.*?-->` will capture HTML comments, `//.*?$` and `/\*.*?\*/` will get JavaScript comments, and `var(.*?)\s` find JavaScript variables.  
* Automated gathering of content from websites is called [scraping](https://en.wikipedia.org/wiki/Web_scraping), and can be accomplished more easily with tools like [Beautiful Soup](https://www.crummy.com/software/BeautifulSoup/)  
* `wget` is a very power command-line tool for mirroring (downloading) an entire website, including all HTML, images, etc. Lots of examples in [this great tutorial](http://www.labnol.org/software/wget-command-examples/28750). To get started, try `wget --execute robots=off --recursive --no-parent --continue --no-clobber http://www.example.com`  
* [BuiltWith](http://www.builtwith.com/nytimes.com) shows you what tools were used to build a particular site.  

### FURTHER READING
If you want to dig further into this topic, a good place to start is fields related to Critical Code Studies, such as [Platform Studies](http://platformstudies.com/) (which looks at hardware platforms), [Software Studies](https://mitpress.mit.edu/books/series/software-studies), and [Media Archeology](https://en.wikipedia.org/wiki/Media_archaeology) (which looks at older technologies as objects that reflect the culture in which they were used).

See also:

* [A Peek At A/B Testing In The Wild](https://freedom-to-tinker.com/blog/dreisman/a-peek-at-ab-testing-in-the-wild), Dillon Reisman
* [Critical Critical Code Studies](http://www.electronicbookreview.com/thread/electropoetics/codology), Mark C. Marino  
* [Critical Code Studies Working Group](http://haccslab.com), various authors  
* [Computer As Ethical Artifacts](http://homes.soic.indiana.edu/nensmeng/files/ensmenger-29-3.pdf), Nathan Ensmenger  
* [Computer Boys Take Over](https://mitpress.mit.edu/books/computer-boys-take-over), Nathan Ensmenger  
* [@CongressEdits](https://twitter.com/CongressEdits), Ed Summers  
* ["Number of Agents Waiting" Is A Random Number](https://twitter.com/mixonic/status/736575632226852865), @mixonic  
* [Facebook Thinks I Like Toes](http://distractify.com/geek/2015/12/04/landry-facebook-thinks-i-like-toes), Landry Taylor  
* [Hidden ASCII Art In Websites](http://www.theverge.com/2012/4/25/2976042/discovering-hidden-ascii-art-in-the-pages-of-the-web), Bryan Bishop  
* [Infographics From .MIL Searches](https://medium.com/message/amazing-military-infographics-1ba60bdc32e7#.hhw22ssra), Paul Ford  
* [Libscore](https://medium.com/@Shapiro/introducing-libscore-com-be93165fa497#.g4cts1uxn) and [FontReach](https://insidedigitalocean.com/fontreach-font-usage-visualized-b6c5b6294787#.xtdko6x3v), Julian Shapiro and Jesse Chase  
* [There Is Blatant Racism And Sexist Language Hiding In Open Source Code](http://gizmodo.com/5980842/there-is-blatant-racist-and-sexist-language-in-github-code), Leslie Horn  
