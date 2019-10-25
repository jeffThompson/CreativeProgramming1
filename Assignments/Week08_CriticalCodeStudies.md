![Bridges on Long Island, designed by Robert Moses in the 1920s and 30s](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Week08_CriticalCodeStudies/LongIslandBridges.png)

# CRITICAL CODE STUDIES

**DUE: TUESDAY, NOV 5**

>"Familiarity with the latest gadgets or services is often less important than possessing the critical knowledge to engage productively with networked situations, including the ability to control how personal information flows and how to look for and interpret accessible information... Access to technology should not be conflated with use." – danah boyd

This week, we'll be borrowing methodology from [Critical Code Studies](https://en.wikipedia.org/wiki/Critical_code_studies), an research approach that looks at ways we can view computer code as a text to be read, analyzed, and critiqued. We often think of code as purely functional, accomplishing a task, but it also embeds our [values](http://gizmodo.com/5980842/there-is-blatant-racist-and-sexist-language-in-github-code), and the [limitations of the programming language it was written in](https://en.wikipedia.org/wiki/List_of_programming_languages_by_type), and the [data we use](http://blogs.wsj.com/digits/2015/07/01/google-mistakenly-tags-black-people-as-gorillas-showing-limits-of-algorithms/). Like with our earlier discussion of open source software, if code is our main tool for creating in this class it's important that we consider how that tool shapes the kinds of things we make.

 Having read the first chapter from *10 PRINT CHR$...*, which talks (at length) about a single-line program from 1982 and written in the language [BASIC](https://en.wikipedia.org/wiki/BASIC). The chapter traces a variety of analytical threads through this tiny bit of code, showing how just a small technical artifact can provide a vehicle for meaningful discussion. We'll expand that by porting that code to Processing, then you'll continue that process of coding-as-research for your homework.

*Above: Some of the 204 bridges on Long Island, designed by Robert Moses in the 1920s and 30s. A co-worker was cited as saying that Moses purposefully built the bridges very low as a way to keep out poorer people, who largely depend on public transit like buses, that couldn't fit under the them. ["Affordances"](https://en.wikipedia.org/wiki/Affordance) are built into all designed objects, including programming languages.*


## DELIVERABLES  

* `10 PRINT CHR$` code ported to Processing in some format  
* Piece that explores this ported code with documentation uploaded to Canvas  


## PORTING  

>"Notably, many of these insights are not available through token-by-token analysis of code. They require closely considered reading, writing, *and* execution of code." – *10 PRINT CHR$...*  

There are many tactics for investigating a piece of code, but rather than writing an analysis, we will "port" code from one programming language (BASIC) to another (Processing). By re-writing the code, we're forced to look at it very carefully, understand exactly what it does, and deal with the limitations of both the source's programming contexts and that of the language we're porting to. The program `10 PRINT CHR$(205.5+RND(1)); : GOTO 10` is great for porting since it's rather straightforward but also requires some modification for modern programming languages like Processing.

Here's a really simple template to get started:  

```processing
void setup() {
}

void draw() {
  // 50% chance of drawing a / character
  if (random(100) < 50) {
    print("/");
  }
  // and 50% chance of a \ character
  else {
    print("\\");
  }
}
```

How is this version different than the original? What things does BASIC do that Processing can't easily? Which version is more readable? Which version is more easily changed to behave differently?

Try changing the code and see what happens!

* Use different characters to change the maze pattern  
* Use different probabilities for deciding which character gets printed  
* Use a `while` loop instead of the `for` loop  
* Draw using text onscreen, instead of the console (and trying different fonts)  
* Draw using shapes instead of text  
* Find more concise, obtuse, or strange ways of writing the same code  

What do these investigations tell us about the original? Do they suggest other variations that might be interesting? (For example, we could also think about any format where two opposite things are chosen, such as audio files/channels.)


## HOMEWORK  
For next week, expand on our exploration of the `10 PRINT CHR$` code in Processing. Think about the questions and prompts above, and try to find new insights about this code, and the language of Processing, by continuing the work we started in class. Can you find other ways to write the same program? Can you hack it beyond recognition into something new?

The output might be a series of sketches saved as images, an interactive piece, video or animation, printed text (instead of images), a performance, sound, etc etc. Consider the output format appropriate to your project: should it be printed? If so, at what size and on what paper? If it's interactive, what's the right context to experience it?

When finished, turn in appropriate documentation to Canvas. For still images, that's probably a PNG or PDF file; for other formats, spend some time thinking about how best to encapsulate the piece. Documentation is an ongoing challenge for work using emerging media, but it's also the first thing people see when they encounter your projects and is worth getting right.


## PROJECTS SHOWN

* Artist Ramsey Nasser's [programming language قلب, which is written entirely in Arabic](http://nas.sr/%D9%82%D9%84%D8%A8/)  
* Daniel Temkin's [Velato](http://velato.net/Language/HelloWorld/), a language that uses MIDI files as source code  
* David Morgan-Mar's [Piet](http://www.dangermouse.net/esoteric/piet/samples.html), in which programmers write code useing abstract images  
* Joseph Connor's ultra-minimal language [Dots](https://github.com/josconno/dots) (see the Python code for an example of how an [interpreter](https://en.wikipedia.org/wiki/Interpreter_(computing)) works)  
* The ever-classic [Brainfuck](https://esolangs.org/wiki/Brainfuck) by Urban Müller, written in 1993  
* [Ook](http://www.dangermouse.net/esoteric/ook.html), a Brainfuck-like language that uses three orangutan sounds as it's entire syntax  
* The even more minimal [Whitespace](http://web.archive.org/web/20150623025348/http://compsoc.dur.ac.uk/whitespace) by Edwin Brady and Chris Morris, where code is written entirely in non-printing whitespace characters (spaces, tabs, and new-lines)  

## FURTHER READING
If you want to dig further into this topic, a good place to start is fields related to Critical Code Studies, such as [Platform Studies](http://platformstudies.com/) (which looks at hardware platforms), [Software Studies](https://mitpress.mit.edu/books/series/software-studies), and [Media Archeology](https://en.wikipedia.org/wiki/Media_archaeology) (which looks at older technologies as objects that reflect the culture in which they were used).

And some more wide-ranging reads and resources:

* [*Critical Critical Code Studies*](http://www.electronicbookreview.com/thread/electropoetics/codology), Mark C. Marino  
* [*Critical Code Studies Working Group*](http://haccslab.com), various authors  
* [*There Is Blatant Racism And Sexist Language Hiding In Open Source Code*](http://gizmodo.com/5980842/there-is-blatant-racist-and-sexist-language-in-github-code), Leslie Horn  
* [*Computer As Ethical Artifacts*](http://homes.soic.indiana.edu/nensmeng/files/ensmenger-29-3.pdf), Nathan Ensmenger  
* [*A Peek At A/B Testing In The Wild*](https://freedom-to-tinker.com/blog/dreisman/a-peek-at-ab-testing-in-the-wild), Dillon Reisman  
* [*"Number of Agents Waiting" Is A Random Number*](https://twitter.com/mixonic/status/736575632226852865), @mixonic  
* [*Facebook Thinks I Like Toes*](http://distractify.com/geek/2015/12/04/landry-facebook-thinks-i-like-toes), Landry Taylor  
* [Libscore](https://medium.com/@Shapiro/introducing-libscore-com-be93165fa497#.g4cts1uxn) and [FontReach](https://insidedigitalocean.com/fontreach-font-usage-visualized-b6c5b6294787#.xtdko6x3v), Julian Shapiro and Jesse Chase  

