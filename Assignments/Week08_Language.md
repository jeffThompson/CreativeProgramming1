![A screenshot of the classic bot @everyword by Allison Parrish](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Week08_Language/everyword.png)

LANGUAGE
====

### DUE: THURSDAY, NOVEMBER 1/8  

Bots create and post text and images, interact with people, and do other creative work, often autonomously, repetitively, and on social media platforms like Twitter. The idea of bots is relatively new (even its antecedent *robot* [only dates to the 1920s](http://www.npr.org/2011/04/22/135634400/science-diction-the-origin-of-the-word-robot)) and while there is a lot of discussion about bots (as well as related topics like chat, AI, etc) in tech right now, there are many people that build bots for artistic and critical purposes.

While bots can take many forms, ours will be text-based. Over the next two weeks, we'll create templates for them and develop corpora for them to pull from. You'll learn the basics of the programming language [Python](https://www.python.org) (which makes working with text much, much nicer than Processing, and works well for automated generation) and ultimately build your own bot that posts to Twitter.

**ASIDE: PROGRAMMING LANGUAGES EMBED VALUES**  
Once you get used to it, Python code reads very much like sentences. This is, in part, by design – from its beginnings in the early 1990s, Python was meant to be as clear and concise as possible, as opposed to many other common languages at the time (like C++). In fact, these and similar values are outlined in the [*Zen of Python*](https://en.wikipedia.org/wiki/Zen_of_Python) document. For example:

* Beautiful is better than ugly  
* Explicit is better than implicit  
* Simple is better than complex  
* Complex is better than complicated  
* Readability counts  

Try to think about these values as you're writing Python code the next two weeks. How does it feel different than writing code in Java (Processing), or any other language you've used?

*Above: a screenshot of the classic bot [@everyword](https://twitter.com/everyword) by Allison Parrish.*  

### STRETCH GOALS  
Try adding these elements to your bot:

* Can you make your bot mimic a certain kind of text, such as the author of a novel or a type of viral headline?  
* Try looking into [regular expressions](https://www.tutorialspoint.com/python/python_reg_expressions.htm), a difficult-to-get-used-to but very powerful library that lets you manipulate text based on patterns. Lots more info in the [Python docs](https://docs.python.org/2/library/re.html), [this cheatsheet](https://www.cheatography.com/davechild/cheat-sheets/regular-expressions/pdf/), and [this online regex builder](https://www.debuggex.com/).  

### FOR THURSDAY, NOVEMBER 1  
For next week, you'll start building the skeleton of your bot:

* Please read Allison Parrish's [*Bots: A Definition and Some Historical Threads](https://points.datasociety.net/bots-a-definition-and-some-historical-threads-47738c8ab1ce) on the Data & Society blog  
* Continue developing your bot's template, like we did in class – come up with at least two templates that your bot can randomly select from (see the example templates below)  
* Select a corpus (or multiple *corpora*) for your bot to work with – this might be some of the pre-built word lists provided, one you find online (see the `Corpora` section below for suggestions), or some of your own making  
* Come up with a name for your bot! Something descriptive, catchy, and (hopefully) available as a Twitter handle  
* Sign up for a Twitter account (it can be private) for your bot – if you already have an account, you can use it (though we'll be posting lots of random stuff) or create a new one with a fresh email address (Gmail is great for this)  
* Install `pip` and the `python-twitter` library – see the `Installing Python Libraries` section below for instructions  

**EXAMPLE TEMPLATES:**  
A template defines the structure of your bot's tweets. It's basically like a [Mad Lib](https://en.wikipedia.org/wiki/Mad_Libs), where you insert random words into the overall pattern, generating cohesive (sometimes), funny, weird text. A few examples:

* A `<noun>` in the hand is worth `<number>` in the `<noun>` (as in *A bird in the hand is worth two in the bush*)     
* The `<noun>` `<adjective>` `<animal>` jumps over the `<adjective>` `<animal>` (as in *The quick brown fox jumps over the lazy dog*)  
* `<do>` `<a/an>` `<media>` `<verb>` `<approach>` `<topic>`, due `<date>` (which is one that my @artassignbot uses, as in *Make a drawing exploring your relationship to booms, due Thursday, October 26*)  

### FOR THURSDAY, NOVEMBER 8  
For next week, your assignment is to finish your bot! Get your OAuth settings from Twitter and run some test posts. Once all done, post a bunch of tweets and assemble your documentation:

* Create a folder called `LastnameFirstname_Bot`, in it put...  
* Five screenshots of favorite tweets from your bot  
* Your bot's Python code – at the top, be sure to include your name, the name of your bot, its Twitter handle, and list any special libraries it needs to run (including URL or instructions to install)  
* Zip the folder and upload to Canvas  

Please also read the excerpt from *10 PRINT CHR$*, found in the `Readings` folder. We'll talk about Critical Code Studies and analyzing code. Write up two responses, questions, or provocations and post them as an issue on this repository under the title `Firstname Lastname: 10 PRINT CHR$`. (Optionally, also check out the amazing collection *Software Studies: A Lexicon*, also in the `Readings` folder.)

### INSTALLING PYTHON LIBRARIES  
To post our tweets, we'll need a library to handle all the messy bits. There are a few Python libraries for this, but we're going to use `python-twitter`, [available here](https://github.com/bear/python-twitter). Use the instructions below to install the library, and others you might want to try.

* Install `pip`, a Python module that installs other libraries. Your version of Python might already have it installed: type `pip` in the command line to check. If not, use [these instructions](https://pip.pypa.io/en/stable/installing/)  
* Windows woes? If you get an error that the `pip` command isn't found, try [these instructions](https://github.com/Langoor2/PokemonGo-Map-FAQ/wiki/%27python---pip%27-is-not-recognized-as-an-internal-or-external-command,-operable-program-or-batch-file.) – you might also have to [run Command Prompt as the administrator](https://technet.microsoft.com/en-us/library/cc947813(v=ws.10).aspx)  
* With `pip` installed, getting the Twitter library is easy! In the command line, simply run `pip install python-twitter`. You should see a bunch of text roll by, then success!  
* Some code includes amazingly rich documentation... this library not as much. There are a [few examples here](https://github.com/bear/python-twitter/tree/master/examples), but for this project you shouldn't need anything too fancy.  
* Optional: other tools for installing libraries on the Mac include the excellent [Homebrew](https://brew.sh/)  

### PROJECTS SHOWN  
* Historical examples of bot-like work include Dadist [Tristan Tzara's *Combinations*](http://www.in-vacua.com/tzara.shtml) and [William S. Burroughs and Brion Gysin's *The Third Mind*](http://www.ubu.com/historical/burroughs/William_S_Burroughs___Brion_Gysin_-_3rd_Mind.pdf) (also in the `Readings` folder)    
* Allison Parrish's classic [@everyword](https://twitter.com/everyword), which does exactly what you'd think it does  
* "Micropoetry" from [@poem_exe](https://twitter.com/poem_exe)  
* [@congressedits](https://twitter.com/congressedits) tweets when anonymous edits are made to Wikipedia from IP addresses in the US Congress  
* The hilarious video-generating [@freezeframebot](https://twitter.com/freezeframebot), [@thissummerbot](https://twitter.com/thissummerbot), and [@OminousZoom](https://twitter.com/ominouszoom)  
* [@wikisext](https://twitter.com/wikisext) generates sexts based on things it learns from WikiHow  
* [@unchartedatlas](https://twitter.com/unchartedatlas) ([waaayyy more detail](http://mewo2.com/notes/terrain) on this amazing bot)  
* Katie Rose Pipkin's [@tiny_star_field](https://twitter.com/tiny_star_field), [@viewgenerator](https://twitter.com/viewgenerator), [@unicode_birds](https://twitter.com/unicode_birds), and [@mothgenerator](https://twitter.com/mothgenerator)  
* Description-generating bots, like [@spacetravelbot](https://twitter.com/spacetravelbot), [@str_voyage](https://twitter.com/str_voyage), [@thanetguide](https://twitter.com/thanetguide), [@a_travel_bot](https://twitter.com/a_travel_bot), [@cant_miss_it](https://twitter.com/cant_miss_it), and [@gardensbritish](https://twitter.com/gardensbritish)  
* Lots more emoji-based landscape bots via [this list](https://twitter.com/muffinista/lists/tableau-ji)  
* My project [@artassignmentbot](https://twitter.com/artassignbot) and the real-life version [Bot Art School](http://botartschool.com/)  
* Tons more examples in Elizaveta Pritychenko's 2014 *Twitter Bot Encyclopedia*, found in this week's `Readings` folder  
* Christopher Strachey's 1953 [computerized love letter generator](https://www.newyorker.com/tech/elements/christopher-stracheys-nineteen-fifties-love-machine), and an updated Javascript version  
* Bot-ish project [Trump2Cash](https://github.com/maxbbraun/trump2cash) invests in companies Trump tweets about  

### RESOURCES  
* If you're new to the command line, try [these common commands for Mac/Linux](http://www.dummies.com/computers/macs/mac-operating-systems/how-to-use-basic-unix-commands-to-work-in-terminal-on-your-mac/) and [these for Windows](https://commandwindows.com/command3.htm)  
* There are lots of great resources for learning Python, including free ones like [learnpython.org](https://www.learnpython.org/) and [*Learn Python The Hard Way*](https://learnpythonthehardway.org/book/), and the always-good books from O'Reilly like [*Learning Python*](http://shop.oreilly.com/product/0636920028154.do)  
* If you have particular Python questions, try searching [Stack Overflow](https://stackoverflow.com)  
* Want your bot to run automatically and without having to pay for hosting? I've written [this tutorial on running your bots using a Raspberry Pi](http://www.jeffreythompson.org/blog/2014/08/31/setting-up-raspberry-pi-to-run-bots/)
* The tool `crontab` will automate the posting of your bot's tweets – it can be confusing, but [crontab.guru](https://crontab.guru/) is a helpful resource    
* You could also use the amazing [Cheap Bots Done Quick](http://cheapbotsdonequick.com/)  
* Lots of regular expressions tutorials and info are out there (and a few are listed in the `Stretch Goals` section above) – great to try if you want a challenge  
* If you want to get into fancier language processing, like tagging words with their parts-of-speech, try the [pattern](http://www.clips.ua.ac.be/pages/pattern-en) and [NLTK](http://www.nltk.org/) libraries  
* Allison Parrish, among her many great tutorials on language, has [this excellent introduction to the spaCy library in Python](https://gist.github.com/aparrish/f21f6abbf2367e8eb23438558207e1c3); see also [this post on building your own NLP system for bots](https://medium.com/rasa-blog/do-it-yourself-nlp-for-bot-developers-2e2da2817f3d)  

### CORPORA  
While making your own word lists can make way more interesting results, here are some online that you might find helpful. (Note they may not be in a format that you can easily use, so they might require manual formatting – this is normal bot-work.)  

* Bot-maker Darius Kazemi has [extensive word lists in this Github repo](https://github.com/dariusk/corpora), covering topics ranging from humans to foods, divination to medicine, and colors to archetypes  
* Slightly more complicated to use, the site [Wordnik](https://www.wordnik.com/) offers an [amazing, free API](http://developer.wordnik.com/docs.html) where you can get info like definition, etymology, and even audio  
* Find a good one? Let me know by email, or better yet create an issue in this repo!  

### OPTIONAL READINGS  
If you want to read more about bots, their history, etc, try these:

* Bot-maker Katie Rose Pipkin's excellent post [*A Long History of Generated Poetics: Cutups from Dickinson to Melitzah*](https://medium.com/@katierosepipkin/a-long-history-of-generated-poetics-cutups-from-dickinson-to-melitzah-fce498083233)  
* Geoff Shullenberger's [*The Birth of the Algorithmic Author*](https://thesocietypages.org/cyborgology/2016/01/12/the-birth-of-the-algorithmic-author/) on the Cyborgology blog  
* Training language models on existing texts can be dangerous – [this post on the ConceptNet blog](https://blog.conceptnet.io/2017/04/24/conceptnet-numberbatch-17-04-better-less-stereotyped-word-vectors/) does a good job talking about how to minimize this  

### GRADING RUBRIC  
Your project will be graded with the following rubric:

**10%:** Project meets technical requirements (correct file format, naming convention, etc)  
**30%:** Project shows creativity, attention to visual quality (composition, color, etc)  
**30%:** Project shows clear use of technical material covered in class  
**30%:** Project shows investigation and exploration of assignment topic  

