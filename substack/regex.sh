#!/bin/bash
# regex
# regex are a pattern-matching language
# it's often used for text processing problems
# if you learn them, you can use them everywhere!

# system tools with regex
# grep
# sed
# perl
# vim
# less

# \s -> means space
# + -> means one or more -> any
# (h|-help) -> will match h and --help

########
# flags
#/PATTERN/FLAGS
# s/PATTERN/REP/FLAGS

# * i - case sensitive
# * g - match all occurences (global)

####

# * m - treat string as mutliple likes
# * s - treat string as a single line

####
# meta characters / quantifiers
# quantifiers are a way of specifying how many times something should appear
# `.` meatches any character
# `?` zero or one time
# `*` zero or more times
# `+` one or more times

# `[]` character class
# `^` anchor at the beginning
# `$` anchro at the end
# `(a|b) match a or b

# `()` capture group
# `(?:)` non catpure group

# `\d` digit `[0-9]`
# `\w` word `[A-Za-z0-9]`
# `\s` whitespace `[ \t\r\n\f ]`

###
# examples
# IN SOME ENGINES, YOU NEED TO ESCAPE MATHACHARACTERS SUCH AS `+`and `?`. IN MAC DON'T!!!!

echo hello beep boop | sed -E 's/b..p/XXXX/g' # replace anything between b and p with something else, with /g at the end it replaces every occurence
echo hello beep boop | sed -E 's/b..p/WHATEVER/' # if we don't pass /g, it's going to replace the first instance beep
echo 'dog and doge' | sed -E 's/doge?/DOGE/g' # will match dog or doge cause the e could appear ZERO or ONE time
echo 'beep bp beeeep' | sed 's/be*p/BEEP/g' # be* -> can appear ZERO or more times, you can have no e, you might just have bp or may of e beeeeep
echo 'beep bp beeeep' | sed -E 's/be+p/BEEP/g' # be\+ -> e can appear ONE or more times 
echo 'hey cooooool whatever cool' | sed -E 's/o{2,}/11/g' # you can use {} to specify how many times it should apper -> {2,4} between 2-4 times -> {2,} -> 2 and more

# In JS you don't need to escape metacharacters. to use sed and rep in a similar way, use:
# sed -E
# grep -E

####
# character class
# Character class is a way of specifying different characters
# `[...]` Any characters inside the square brackets will match
# For example, to match a vowel characters: `[aeiou]`
echo 'beep and boop' \
| sed -E 's/b[aeiou]+p/BXXP/g'

echo 'dog days cats' | sed -E 's/d[oa]+[gys]*/XXX/g'
echo 'dog days cats' | sed -E 's/d[ao]/DA/g'
echo 'doooog days cats' | sed -E 's/d[ao]+/DA/g'
## negation
echo 'doog days cats deg dx' | sed -E 's/d[^aeiou]/DA/g' # the carrot symbol is negation, means everything that is not [] square brackets
## ranges
echo 'hello1234 what9999 50505' | sed -E 's/[0-9]+//g' # removes the numbers from the string
echo 'hello1234 what9999 50505' | sed -E 's/[a-z]+//g' # removes all the letters
echo 'Hello1234 What9999 50505' | sed -E 's/[a-z]+//g' # it's going to remove all the lower case letters
echo 'Hello1234 What9999 50505' | sed -E 's/[A-Za-z]+//g' # it's going to remove capital / lower case letters -> you can mix ranges
echo 'Hello1234 What9999 50505 __' | sed -E 's/[A-Za-z_]+//g' # you can also put underscores that we wan to get rid of
echo 'Hello1234 What9999 50505 __' | sed -E 's/[A-Za-z_ ]+//g' # to get rid of the spaces, just put the space

## node examples
#node
#const pw = 'abc432!A'
#/^[\w!@$%^&*\-+]{8,}$/.test(pw) && /[a-z]/.test(pw) && /[A-Z]/.test(pw) && /\d/.test(pw) && /[!@$%^$*\-]/.test(pw)
#process.exit()

######
# negated character class
# [^...] Put a ^ after the opening square braket in a character class to negate it.

#### achchors
# ^ beginning of the line
# $ end of the line
echo "cool beans" | sed -E "s/beans$/BEANS/g"
echo "beans cool" | sed -E "s/^beans/BEANS/g"

# groups
# either one of this patterns is valid
# (a|b) match a or b
# `()` capture group
# `(?:)` non capture group

# we want to match either ee or oo
echo "beep boop" | sed -E "s/b(ee|oo)p/XXX/g"
echo "beep boop" | sed -E "s/b(e|o){2}p/XXX/g"

# regex reference

# documentation about the regex -> remember regex is it's own language that was created to parse strings
perldoc perlreref
