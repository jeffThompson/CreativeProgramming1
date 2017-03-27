
'''
BASIC BOT
Jeff Thompson | 2017 | jeffreythompson.org

With some basic Python code, we can build a generative bot
that posts directly to Twitter! In this example, we pick some
random words from three corpi (lists of text) and merge them
using a sentence template.

TWITTER DEV ACCOUNT SETUP
To get your new bot account (or your personal one) set up for
Twitter, see these instructions:

	https://github.com/jeffThompson/CreativeProgramming1/blob/
	master/Code/Week08/TwitterDevAccountSetup.md

REQUIRED LIBRARY
For this project, you'll need the Twitter library, available here:

	https://github.com/bear/python-twitter

You can install it using the Pip program in the command line, or
manually. Instructions for both methods are here:

	https://python-twitter.readthedocs.io/en/latest/installation.html

CHALLENGES
1. Experiment with the template, or build your own!
2. Can you make several templates that get chosen at random? (Hint: use
   the random library's random.random() method to get a number between
   0–1 to drive an if/else conditional like we did in the Randomness
   examples.)
3. Can you double-check that your Tweet is less than 140 characters?
   (Hint: len('some string of text') will give you the number of
   chars in a string.)

'''

import random  			# for selecting random elements from lists
import twitter 			# twitter library for posting

# some lists for our bot
animals = [ 'fish', 'cat', 'zebra', 'sparrow', 'pterodactyl' ]
verbs =   [ 'waltzed', 'ran', 'crept', 'soared', 'swam' ]
places =  [ 'hotel', 'park', 'Louvre', 'sun' ]

# OAuth settings for the Twitter API
consumer_key =    'b66fQGVdhmwSzmqONJnzukRlw'
consumer_secret = '9W1UAiVP1h2T5du4wX4qgydeVYix6SYdTtWYdr06Ex749xD1ve'
oauth_token =     '4181522602-8GwjvT37UqeogD4Nx2SqEwY1OJ5NOqbBywdm3sn'
oauth_secret =    'CNzIusmhFJjf3AyXDcXAf0s2Q9PDAZfGQbZr8zQPGYW9x'

# pick some random words for our tweet
animal = random.choice(animals)
verb =   random.choice(verbs)
place =  random.choice(places)

# format the tweet
tweet = 'The ' + animal + ' ' + verb + ' through the ' + place + '.'
print tweet

# save your tweet for posterity
with open('Tweets.txt', 'a') as f:		# 'a' = append to the file, not overwrite everything :)
	f.write(tweet + '\n')				# be sure to add a line break so your tweets don't get mashed together

# connect to Twitter with our OAuth settings
api = twitter.Api(consumer_key = consumer_key, consumer_secret = consumer_secret, access_token_key = oauth_token, access_token_secret = oauth_secret)

# post tweet
print 'posting tweet...'
try:
	status = api.PostUpdate(tweet)	# try posting
	print '- success!'
except twitter.TwitterError, e:		# if an error, let us know
	print '- error posting!'
	print e

