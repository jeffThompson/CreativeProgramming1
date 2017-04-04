![A screenshot of the classic bot @everyword by Allison Parrish](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Week08/everyword.png)

LANGUAGE
====

### DUE: TUESDAY, APRIL 10

Bots create and post text and images, interact with people, and autonomously do other creative work, often repetitively and on social media platforms like Twitter. The idea of bots is relatively new (even its antecedent *robot* [only dates to the 1920s](http://www.npr.org/2011/04/22/135634400/science-diction-the-origin-of-the-word-robot)) and while there is a lot of discussion about bots in Silicon Valley right now, there are many people that build bots for artistic and critical purposes.

Over the next two weeks, you'll learn the basics of the programming language [Python](https://en.wikipedia.org/wiki/Python_(programming_language)) (which makes working with text much, much nicer than Processing, and works well for automated generation) and ultimately build your own bot that posts to Twitter.

**ASIDE: LANGUAGES EMBED VALUES**  
Once you get used to it, Python code reads very much like sentences. This is, in part, by design – from its beginnings in the early 1990s, Python was meant to be as clear and concise as possible, as opposed to many other common languages at the time (like C++). In fact, these and similar values are outlined in the [*Zen of Python*](https://en.wikipedia.org/wiki/Zen_of_Python) document. For example:

* Beautiful is better than ugly  
* Explicit is better than implicit  
* Simple is better than complex  
* Complex is better than complicated  
* Readability counts  

Try to think about these values as you're writing Python code this week. How does it feel different than writing code in Java (Processing), or any other language you've used?

*Above: a screenshot of the classic bot [@everyword](https://twitter.com/everyword) by Allison Parrish.*  

### STRETCH GOALS  
Try adding these elements to your bot:

* Can you create several different template formats for your bot, having it either cycle through them or randomly choose one every time it runs?  
* Can you make your bot mimic a certain kind of text, such as the author of a novel or a type of viral headline?  
* Try looking into [regular expressions](https://www.tutorialspoint.com/python/python_reg_expressions.htm), a difficult-to-get-used-to but very powerful library that lets you manipulate text based on patterns. Lots more info in the [Python docs](https://docs.python.org/2/library/re.html) and [this cheatsheet](https://www.cheatography.com/davechild/cheat-sheets/regular-expressions/pdf/).  

### INSTALLING PYTHON LIBRARIES  
To post our tweets, we'll need a library to handle all the messy bits. There are a few Python libraries for this, but we're going to use `python-twitter`, [available here](https://github.com/bear/python-twitter). Use the instructions below to install the library, and others you might want to try.

* Install `pip`, a Python module that installs other libraries. Your version of Python might already have it installed: type `pip` in the command line to check. If not, use [these instructions](https://pip.pypa.io/en/stable/installing/)  
* Windows woes? If you get an error that the `pip` command isn't found, try [these instructions](https://github.com/Langoor2/PokemonGo-Map-FAQ/wiki/%27python---pip%27-is-not-recognized-as-an-internal-or-external-command,-operable-program-or-batch-file.) – you might also have to [run Command Prompt as the administrator](https://technet.microsoft.com/en-us/library/cc947813(v=ws.10).aspx)  
* Optional: other tools for installing libraries on the Mac include the excellent [Homebrew](https://brew.sh/)  
* With `pip` installed, getting the Twitter library is easy! In the command line, simply run `pip install python-twitter`. You should see a bunch of text roll by, then success!  
* Some code includes amazingly rich documentation... this library not as much. There are a [few examples here](https://github.com/bear/python-twitter/tree/master/examples), but for this project you shouldn't need anything too fancy.  

### FOR TUESDAY, APRIL 10  
For next week, your assignment is to finish your bot! Get your OAuth settings and run some test posts. Once all done, post a bunch of tweets and assemble your documentation.

To turn in:  

* Create a folder called `LastnameFirstname_BOT`, in it put...
* Your top-30-tweet file from last week  
* Five screenshots of favorite tweets from your bot  
* Your bot's Python code  

Zip it and upload to Canvas.

Please also read the excerpt from *10 PRINT CHR$*, found in the `Readings` folder. We'll talk about Critical Code Studies and analyzing code. Write up two responses, questions, or provocations and post them as an issue on this repository under the title `Firstname Lastname: 10 PRINT CHR$`. (Optionally, also check out the amazing collection *Software Studies: A Lexicon*, also in the `Readings` folder.)

### FOR TUESDAY, APRIL 4  
For next week, you'll start building the basics of your bot. That means:

* Picking a template for your bot's output  
* Selecting input text/words that you want to work with (either from my corpi or ones you make yourself)  
* Write code that outputs randomized text  
* Name your bot! This can be anything, though I often include the word *bot* in mine so people know what they're interacting with. If you want this to be a real bot that runs regularly, you might first check to see if the name you want is available.  

Once your code is ready, wrap it in a function and call that function 100 times using a for-loop. Write the results to a text file so we can read some output from your bot!

    def generate_tweet():
        # your bot code goes here
        tweet = 'something really awesome'
        return tweet

    for i in range(0, 100):
        tweet = generate_tweet()

        with open('Tweets.txt', 'a') as f:
            f.write(tweet + '\n')

Pick a 30 of your favorites and print them out – include the name of your bot and (optionally) the @username for the bot's account. We'll talk about them and hang them up in the hall.

Please also sign up for a Twitter account (it can be private) for your bot. If you already have an account, you can either use it (though we'll be posting lots of random stuff) or create a new one with a fresh email address (Gmail is great for this). Next week in class, we'll go over the steps necessary so Python can post automatically.

### PROJECTS SHOWN  

* Allison Parrish's classic [@everyword](https://twitter.com/everyword), which does exactly what you'd think it does  
* "Micropoetry" from [@poem_exe](https://twitter.com/poem_exe)  
* [@congressedits](https://twitter.com/congressedits) tweets when anonymous edits are made to Wikipedia from IP addresses in the US Congress  
* The hilarious video-generating [@freezeframebot](https://twitter.com/freezeframebot)  
* [@wikisext](https://twitter.com/wikisext) generates sexts based on things it learns from WikiHow  
* [@unchartedatlas](https://twitter.com/unchartedatlas) ([waaayyy more detail](http://mewo2.com/notes/terrain) on this amazing bot)  
* Katie Rose Pipkin's [@tiny_star_field](https://twitter.com/tiny_star_field), [@viewgenerator](https://twitter.com/viewgenerator), [@unicode_birds](https://twitter.com/unicode_birds), and [@mothgenerator](https://twitter.com/mothgenerator)  
* Description-generating bots, like [@spacetravelbot](https://twitter.com/spacetravelbot), [@str_voyage](https://twitter.com/str_voyage), [@thanetguide](https://twitter.com/thanetguide), [@a_travel_bot](https://twitter.com/a_travel_bot), [@cant_miss_it](https://twitter.com/cant_miss_it), and [@gardensbritish](https://twitter.com/gardensbritish)  
* Lots more emoji-based landscape bots via [this list](https://twitter.com/muffinista/lists/tableau-ji)  
* My project [@artassignmentbot](https://twitter.com/artassignbot) and the real-life version [Bot Art School](http://botartschool.com/)  
* Tons more examples in Elizaveta Pritychenko's 2014 *Twitter Bot Encyclopedia*, found in this week's `Readings` folder  

### RESOURCES  

* If you're new to the command line, try [these common commands for Mac/Linux](http://www.dummies.com/computers/macs/mac-operating-systems/how-to-use-basic-unix-commands-to-work-in-terminal-on-your-mac/) and [these for Windows](https://commandwindows.com/command3.htm)  
* There are lots of great resources for learning Python, including free ones like [learnpython.org](https://www.learnpython.org/) and [*Learn Python The Hard Way*](https://learnpythonthehardway.org/book/), and the always-good books from O'Reilly like [*Learning Python*](http://shop.oreilly.com/product/0636920028154.do)  
* If you have particular Python questions, try searching [Stack Overflow](https://stackoverflow.com)  
* Want your bot to run automatically and without having to pay for hosting? I've written [this tutorial on running your bots using a Raspberry Pi](http://www.jeffreythompson.org/blog/2014/08/31/setting-up-raspberry-pi-to-run-bots/)  
* You could also use the amazing [Cheap Bots Done Quick](http://cheapbotsdonequick.com/)  
* Lots of regular expressions tutorials and info are out there (and a few are listed in the `Stretch Goals` section above) – great to try if you want a challenge  
* If you want to get into fancier language processing, like tagging words with their parts-of-speech, try the [pattern](http://www.clips.ua.ac.be/pages/pattern-en) and [NLTK](http://www.nltk.org/) libraries  

### GRADING RUBRIC  
Your project will be graded with the following rubric:

**10%:** Project meets technical requirements (correct file format, naming convention, etc)  
**30%:** Project shows creativity, attention to visual quality (composition, color, etc)  
**30%:** Project shows clear use of technical material covered in class  
**30%:** Project shows investigation and exploration of assignment topic  

