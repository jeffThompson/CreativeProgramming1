
'''
SAVING STRINGS TO FILE
Jeff Thompson | 2017 | jeffreythompson.org

Printing to the screen is ok (tweeting is better) but often you'll want
to save the output of your program to a file. Fortunately, Python
again makes this easier than many other languages.

'''

from random import choice

# some random names
first_names = [ 'James', 'John', 'Robert', 'Michael', 'Mary', 'William', 'David', 'Richard', 'Charles', 'Joseph', 'Thomas', 'Patricia', 'Christopher', 'Linda', 'Barbara', 'Daniel', 'Paul', 'Mark', 'Elizabeth', 'Donald', 'Jennifer', 'George', 'Maria', 'Kenneth', 'Susan', 'Steven', 'Edward', 'Margaret', 'Brian', 'Ronald' ]
last_names = [ 'Smith', 'Johnson', 'Williams', 'Jones', 'Brown', 'Davis', 'Miller', 'Wilson', 
'Moore', 'Taylor' ]

# create a random name
first_name =  choice(first_names)
last_name =   choice(last_names)
full_name = first_name + ' ' + last_name
print full_name

# write to file
# the 'w' designator means 'write' (instead of the default read) - this will 
# overwrite any contents of the file, though!
# to add (append) to the file, use 'a' instead of 'w'
with open('GeneratedNames.txt', 'w') as f:
	f.write(full_name)

