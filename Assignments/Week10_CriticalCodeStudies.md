![Bridges on Long Island, designed by Robert Moses in the 1920s and 30s](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Exercises/CriticalCodeStudies/LongIslandBridges.png)

CRITICAL CODE STUDIES
====

>"Familiarity with the latest gadgets or services is often less important than possessing the critical knowledge to engage productively with networked situations, including the ability to control how personal information flows and how to look for and interpret accessible information... Access to technology should not be conflated with use." – danah boyd

Today, we'll be talking about [Critical Code Studies](https://en.wikipedia.org/wiki/Critical_code_studies), and how we can view computer code as a text to be read, analyzed, and critiqued. We often think of code as purely functional, accomplishing a task, but it also embeds our [values](http://gizmodo.com/5980842/there-is-blatant-racist-and-sexist-language-in-github-code), and the [limitations of the programming language it was written in](https://en.wikipedia.org/wiki/List_of_programming_languages_by_type), and the [data we use](http://blogs.wsj.com/digits/2015/07/01/google-mistakenly-tags-black-people-as-gorillas-showing-limits-of-algorithms/). We read the first chapter from *10 PRINT CHR$...*, which talks (at length) about a single-line program from 1982 written in the language [BASIC](https://en.wikipedia.org/wiki/BASIC). The chapter traces a variety of analytical threads through this tiny bit of code, showing how just a small technical artifact can provide a vehicle for meaningful discussion.

*Above: Some of the 204 bridges on Long Island, designed by Robert Moses in the 1920s and 30s. A co-worker of Moses was cited as saying that Moses purposefully built the bridges very low as a way to keep out poorer people, who largely depend on public transit like buses, that couldn't fit under the them.*

### PORTING  

>"Notably, many of these insights are not available through token-by-token analysis of code. They require closely considered reading, writing, *and* execution of code." – *10 PRINT CHR$...*  

There are many tactics for investigating a piece of code, but rather than writing an analysis, we will "port" code from one programming language to another. By re-writing the code, we're forced to look at it very carefully, understand exactly what it does, and deal with the limitations of both the source's programming contexts and that of the language we're porting to.

`10 PRINT CHR$(205.5+RND(1)); : GOTO 10` is a great piece of code to port, since it is rather straightforward but also requires some modification for modern programming languages like Processing.

Here's a really simple template to get started:  

```processing
void setup() {
}

void draw() {}
  if (random(1) < 0.5) {
    print("/");
  }
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

### FOR THURSDAY, NOVEMBER 16  
For next week, expand on our exploration of the `10 PRINT CHR$` code in Processing. Think about the questions and prompts above, and try to find new insights about this code, and the language of Processing, by further manipulating the example. The output might be a series of sketches saved as images, an interactive piece, video or animation, printed text (instead of images), a performance, sound, etc etc. Consider the output format appropriate to your project: should it be printed? If so, at what size and on what paper? If it's interactive, what's the right context to experience it?

**No need to turn in anything to Canvas, but come prepared to show your project and talk about it's genesis and how it responds to the original code.**

You should also start to think about what you'd like to do for your final project – a written proposal will be due in two weeks.

### PROJECTS SHOWN

* Artist Ramsey Nasser's [programming language قلب, which is written entirely in Arabic](http://nas.sr/%D9%82%D9%84%D8%A8/)  
* Daniel Temkin's [Velato](http://velato.net/Language/HelloWorld/), a language that uses MIDI files as source code  
* David Morgan-Mar's [Piet](http://www.dangermouse.net/esoteric/piet/samples.html), in which programmers write code useing abstract images  
* Joseph Connor's ultra-minimal language [Dots](https://github.com/josconno/dots) (see the Python code for an example of how an [interpreter](https://en.wikipedia.org/wiki/Interpreter_(computing)) works)  
* The ever-classic [Brainfuck](https://esolangs.org/wiki/Brainfuck) by Urban Müller, written in 1993  
* [Ook](http://www.dangermouse.net/esoteric/ook.html), a Brainfuck-like language that uses three orangutan sounds as it's entire syntax  
* The even more minimal [Whitespace](http://web.archive.org/web/20150623025348/http://compsoc.dur.ac.uk/whitespace) by Edwin Brady and Chris Morris, where code is written entirely in non-printing whitespace characters (spaces, tabs, and new-lines)  

### FURTHER READING
If you want to dig further into this topic, a good place to start is fields related to Critical Code Studies, such as [Platform Studies](http://platformstudies.com/) (which looks at hardware platforms), [Software Studies](https://mitpress.mit.edu/books/series/software-studies), and [Media Archeology](https://en.wikipedia.org/wiki/Media_archaeology) (which looks at older technologies as objects that reflect the culture in which they were used).

And some more wide-ranging reads and resources:

* [*Critical Critical Code Studies*](http://www.electronicbookreview.com/thread/electropoetics/codology), Mark C. Marino  
* [*Critical Code Studies Working Group*](http://haccslab.com), various authors  
* [*Computer As Ethical Artifacts*](http://homes.soic.indiana.edu/nensmeng/files/ensmenger-29-3.pdf), Nathan Ensmenger  
* [*Computer Boys Take Over*](https://mitpress.mit.edu/books/computer-boys-take-over), Nathan Ensmenger  
* [@CongressEdits](https://twitter.com/CongressEdits), Ed Summers  
* [*A Peek At A/B Testing In The Wild*](https://freedom-to-tinker.com/blog/dreisman/a-peek-at-ab-testing-in-the-wild), Dillon Reisman  
* [*"Number of Agents Waiting" Is A Random Number*](https://twitter.com/mixonic/status/736575632226852865), @mixonic  
* [*Facebook Thinks I Like Toes*](http://distractify.com/geek/2015/12/04/landry-facebook-thinks-i-like-toes), Landry Taylor  
* [*Hidden ASCII Art In Websites*](http://www.theverge.com/2012/4/25/2976042/discovering-hidden-ascii-art-in-the-pages-of-the-web), Bryan Bishop  
* [*Infographics From .MIL Searches*](https://medium.com/message/amazing-military-infographics-1ba60bdc32e7#.hhw22ssra), Paul Ford  
* [Libscore](https://medium.com/@Shapiro/introducing-libscore-com-be93165fa497#.g4cts1uxn) and [FontReach](https://insidedigitalocean.com/fontreach-font-usage-visualized-b6c5b6294787#.xtdko6x3v), Julian Shapiro and Jesse Chase  
* [*There Is Blatant Racism And Sexist Language Hiding In Open Source Code*](http://gizmodo.com/5980842/there-is-blatant-racist-and-sexist-language-in-github-code), Leslie Horn  
