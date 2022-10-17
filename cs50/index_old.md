# CS50 Fall 2019

## Section materials for CS50, Fall 2019 edition

### Joshua Sacher

#### In-Between Section: Wednesdays 6:00 PM [Boylston Hall](https://www.google.com/maps/place/Boylston+Hall+Cambridge,+MA+02138/@42.373327,-71.1194602,17z/) 104

---

## [Sections](#sections)

* [Week 8](#week-8)
* [Week 7](#week-7)
* [Week 6](#week-6)
* [Week 5](#week-5)
* [Week 4](#week-4)
* [Week 3](#week-3)
* [Week 2](#week-2)

## [Other Stuff](#other-stuff)

* [Useful Resources](#resources)
* [Contact Josh](#contact-info)
* [About Josh](#about-josh)

---

## Sections

### Week 8

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSeWEzvjFhyuhQTPnrqs7wrDcIUibUyEwPBbmbpy9ObFVu0XpQ/viewform?usp=sf_link)

Resources
* [CS50 Seminars 2018](https://cs50.harvard.edu/college/2018/fall/seminars/) -- Useful videos on a number of topics
  * Also see links to 2017 and 2016 videos at the bottom
  * One of the most useful is [Brian's Github Seminar](https://www.youtube.com/watch?v=MJUJ4wbFm_A&list=PLhQjrBD2T382IHcDBSQYC4ZG4C2aTiA6C&index=7). 
    * If you plan to do _any_ coding in the future, LEARN GIT/GITHUB!

CS @ Harvard: Life After CS50
  - Classes to take after CS50: CS20, CS51, CS61, CS121, CS124, CS181, CS182
  - Concentration requirements: [https://harvardcs.info/concentration/requirements/](https://harvardcs.info/concentration/requirements/)
  - Secondary requirements: [https://harvardcs.info/secondary/](https://harvardcs.info/secondary/)
  - Research opportunities: [https://harvardcs.info/research/](https://harvardcs.info/research/)
  - Internship preparation (e.g. [Cracking the Coding Interview](http://www.crackingthecodinginterview.com/), [HackerRank](https://www.hackerrank.com/))

Interested in teaching yourself?
* CS50 has a [YouTube channel](https://www.youtube.com/user/cs50tv) with courses on:
  * [Web Programming](https://www.youtube.com/playlist?list=PLhQjrBD2T382hIW-IsOVuXP1uMzEvmcE5) with Brian Yu
  * [Mobile App Development](https://www.youtube.com/playlist?list=PLhQjrBD2T382gdfveyad09Ierl_3Jh_wR) using React Native (platform independent!!!) with Jordan Hayashi
  * [Game Development](https://www.youtube.com/playlist?list=PLhQjrBD2T383Vx9-4vJYFsJbvZ_D17Qzh) with Colton Ogden
* Interested in biology/bioinformatics? [Rosalind](http://rosalind.info/) will teach you through problem solving.
* Like puzzles? Dig Python? [Python challenge](http://www.pythonchallenge.com/) will entertain and infuriate you.

Want to learn useful programming languages?
* Check out Stack Overflow's [survey data](https://insights.stackoverflow.com/survey/2019#most-loved-dreaded-and-wanted)
* Python is a must
* JavaScript is both loved and hated, but is important
* [C++](https://en.wikipedia.org/wiki/C%2B%2B) and/or [Java](https://en.wikipedia.org/wiki/Java_(programming_language)), as compiled languages are _much_ faster
* [R](https://www.r-project.org/) for data science, statistics, and data analysis
* All modern information lives in databases, so SQL is a must!
  * (Slightly) different implementations depending on the database software
* [Web Assembly](https://webassembly.org/) is a really neat, relatively new thing to look into
  * Get the speed of compiled languages in a web page
  * Different way of compiling C++, Rust, etc.

If you haven't already, get a full-featured stand-alone IDE!
* [VS Code](https://code.visualstudio.com/) is one of the most popular (and my personal choice)
* [Atom](https://atom.io/)
* [SublimeText](https://www.sublimetext.com/)
* And many others

---

### Week 7

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSfXwpqMNNiGdS1DmDxaklWUC_c32PdtLQj7WHk8gFTuc_6RIQ/viewform?usp=sf_link)

[SQLite Browser Download](http://sqlitebrowser.org/dl/)

[Questions for today](https://github.com/jrsacher/cs50-2019-fall/blob/master/queries.sql)

[Demo DB zip file](https://github.com/jrsacher/cs50-2019-fall/blob/master/chinook.zip) (or from the original source, https://www.sqlitetutorial.net/sqlite-sample-database/)

[Solutions](https://github.com/jrsacher/cs50-2019-fall/blob/master/queries_solutions.sql) on Github

#### Housekeeping

* Last lecture on Privacy is Friday, 11/1, 10:30am–11:45am
  * If you can't attend, watch online!
* Test next week
  * NO HUMAN HELP
    * No TFs/CAs
    * No sections, tutorials, office hours
    * Q&A Forum shut down
  * Contact heads@cs50.harvard.edu if you have questions
* One more section 11/19 and 11/20
  * Wrap-up, next steps, final questions, etc.

#### PSet 6 Postmortem

* [Sandbox](https://sandbox.cs50.io/77f25172-68e9-46dd-a388-937071dab58e)
  * List comprehension
  * "Pythonic" implementation of C propgrams

#### Topics for week 7

* Databases
* Types
* `CREATE TABLE`
* `INSERT`
* `SELECT`
* `UPDATE`
* `DELETE`
* SQL built-in functions
* Indexes
* SQL Injection, race conditions

#### Hands On

* Build some SQL!
* Advice:
  * Write queries backward -- especially `INSERT`, `UPDATE`, and `DELETE`
  * `DELETE` should make you nervous in the real world

#### Test review questions?

---

### Week 6

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSf1TQEQS7w7DlSkPJ6fZmq50Ji9bgP7kKVUtf60Duf1JMnjHA/viewform?usp=sf_link)

[Sandbox](https://sandbox.cs50.io/18386063-a5de-4791-b7d6-b7b82ad7b44c) or download in your IDE: `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week6.zip`

[Solutions sandbox](https://sandbox.cs50.io/cb2ad216-655c-40c4-a4fc-5993e78e996c) or download `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week5_solutions.zip`

#### Housekeeping

* A test is on the horizon!
  * Released Mon 11/4, 7:30pm
  * Due Fri 11/8, 11:59pm
* Tracks
  * Questions?
* I know it feels early, but start thinking about projects!
  * Pre-Proposal due Sun 11/10, 11:59pm <-- *before the first Track PSet is due!*
  * Happy to chat about potential projects ahead of time
* [Documentation](https://docs.python.org/3/index.html) is your friend!
  * I have the [Library Reference](https://docs.python.org/3/library/index.html) bookmarked
* Google and StackOverflow are your friends
  * CAUTION: Python 3 != Python 2
    * `print("Hello!")` is Python 3
    * `print "Hello!"` is Python 2

#### PSet 5 Postmortem

* Questions?
* Tricky parts you'd like explained?

#### Topics for week 6

* Interpreted vs. compiled
  * Drawbacks?
  * Benefits?
* Python syntax
  * String slicing (covered in demo)
* Python data types
  * Mutable
    * List
    * Dict
    * Set
  * Immutable
    * String
    * Tuple
* Useful [python operators](https://www.tutorialspoint.com/python/python_basic_operators.htm)
  * Division: 
    * `5 / 2` = 2.5 (as expected!)
    * `5 // 2` = 2 (like C)
  * Exponent
    * `5 ** 2` = 25
    * NOT `5 ^ 2`! (binary XOR)
* [Object-oriented vs procedural programming](https://medium.com/@LiliOuakninFelsen/functional-vs-object-oriented-vs-procedural-programming-a3d4585557f3)
  * Most things in python are *objects*
    * "Attributes" -- think data in a C struct
    * "Methods" -- functions that "belong" to the object
  * A *class* is a template for a specific *object*
  * An *object* is an instance of a *class*

#### PSet advice

* Think "pythonically," don't just translate exactly
  * See [Zen of Python](https://en.wikipedia.org/wiki/Zen_of_Python) or, in the python interpreter, `import this`

#### Hands on

* Demos:
  * `do while` alternatives in `while.py`
  * Removing the training wheels (optional)
    * Using `input()` in `input.py`
    * Error handling with `try` and `except` in `get_int0.py` and `get_int1.py`
* String manipulation in `string.py`
* CSV file manipulation with 2018 NFL data in `pats.py`

---

### Week 5

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLScamPmNvNY5KpXHMJSZgXwgCWJB4mJ_S8ZWLWffVuUUermfJw/viewform?usp=sf_link)

[Sandbox](https://sandbox.cs50.io/08a8ded0-4f31-4b54-b72c-3d4908325b80) or download in your IDE: `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week5.zip`

[Solutions sandbox](https://sandbox.cs50.io/4ab3ccec-5f69-4c48-9b0b-e51aeb7afe5f) or `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week5_solutions.zip`

#### Housekeeping

* No class, section, or homework next week -- get caught up on life!
* Last section of C!
  * A lot of material in next couple classes, but MUCH less difficult conceptually
    * Python
    * SQL
    * Tracks
* Logistics/quiz questions?

#### PSet 4 Postmortem

* Use helper functions where needed
  * Can you write it as a tiny function? Consider `#define`ing a macro.

#### Topics for week 5

* [Linked Lists](https://www.youtube.com/watch?v=zQI3FyWm144)
* [Hash Tables](https://www.youtube.com/watch?v=nvzVHwrrub0)
* Trees
* [Tries](https://www.youtube.com/watch?v=MC-iQHFdEDI)
* Stacks, Queues, and other [data structures](https://www.youtube.com/watch?v=3uGchQbk7g8)

#### PSet advice

* If feeling competitive, hash tables (generally) perform better on the [Big Board](https://speller.cs50.io/cs50/problems/2019/fall/challenges/speller)
  * DO NOT use the first letter as a hash function! It's horrible. See `hash1.c` for some free advice.
* Tries are generally more elegant and more real-world applicable, but conceptually a bit more difficult.
  * Don't forget about `'`

#### Hands on

* Linked lists gallore!

---

### Week 4


[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSf0bBZ7AG5157DEnJkPVsCddgcf9Tj6CtEuUxKwSK1JPYcieQ/viewform?usp=sf_link)

[Sandbox](https://sandbox.cs50.io/830753c8-968e-4b82-ac98-1d4d0608804d) or download in your IDE: `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week4.zip`

[Solutions sandbox](http://bit.ly/2oBlvxg) or, in your IDE: `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week4_solutions.zip`

#### Housekeeping

* Reminders: 
  * Go to any section you want. No permission needed.
  * Code reviews with your TF or online (via Zoom)
* Start (casually) thinking about tracks, final projects
* Logistics questions?
* Quiz-related questions?

#### PSet 3 Postmortem

* Questions?
* General things:
  * COMMENT YOUR CODE
  * Pick good variable names
  * No need to store a variable if you're only going to use it once on the next line
    * Completely reasonable to disagree with this for readability
  * An `if` doesn't *have* to have an `else`
  * If you're using `continue`, it might make sense to reorder things or check for the *opposite*
  * Have an `if` inside another `if`? Consider using `&&`

```C
// Okay
if (candidates[preferences[i][j]].eliminated == false)

// Better
if (!candidates[preferences[i][j]].eliminated)

// Exception (my personal taste
if (strcmp(candidates[i].name, name) == 0)
```

#### Topics for Week 4

- Pointers
- Hexadecimal
- `malloc` and `free` (bonus: [`calloc`](https://man.cs50.io/3/calloc))
- File I/O

#### Hands on

* Q: Knowing what we learned this week, how can a function like `void bubble(int values[], int n)` sort values in `main()` without `return`ing anything?
* segfault
* concatenate
* copy
* gif

---

### Week 3

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLScrFuv1VxEFbMmyGjzanYx6kJ_ZL8FGmLRaRzKwxEZHtMIKRA/viewform?usp=sf_link)

[Sandbox](https://sandbox.cs50.io/e7440ff8-e33a-4c59-abc5-937b93c83538) or download in your IDE:
```bash
mkdir week3
cd week3
wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week3.zip
unzip week3.zip
rm week3.zip
```

[Solutions sandbox](https://sandbox.cs50.io/85d79102-0853-471a-b5cf-b7747365ba0c) or `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week3_solutions.zip`

#### Housekeeping

* Logistics questions?
* Resources
   * [Shorts for week 3](https://cs50.harvard.edu/college/weeks/3/)
   * Walkthrough videos!

#### PSet 2 Postmortem

* Looks pretty good!

#### Topics for Week 3

* Structs
* Searching
* Sorting
* Running Time (_O_, Ω, θ)
* Recursion

#### Hands on

* Reading distribution code

[Sandbox](https://sandbox.cs50.io/e7440ff8-e33a-4c59-abc5-937b93c83538) or `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week3.zip`
* Structs
* Recursion
* Sorting

---

### Week 2

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSfgilQK1cMerPQ-WI6luuuUMja2E1-E0kDZkRDJfdmydOIcLg/viewform?usp=sf_link)

[Sandbox](http://bit.ly/2UVljot)  

[Hangman solutions](http://bit.ly/2UVljot):  
* `hangman0.c` as in class
* If you thought that solution was repetitive, you were right. See `hangman1.c` for some improvements
* `hangman2.c` implements all features of traditional hangman (except drawing a person, sorry)

#### Housekeeping

* Expectations
    * Class
        * Attend if at all possible!
        * Watch online if not
        * Quizzes due Tuesday morning at 10:30 AM
    * Section
        * Attend/watch lecture before section
        * Read through the PSet specifications (or, better, start them!)
        * Feel free to attend any section you'd like
        * General structure of my section:
            * Housekeeping
            * Brief review of last week's PSet
            * This week's topics, Q and A
            * Hands-on practice
    * PSets
        * Do and submit the less comfy problems
        * Try the more comfy ones! Can't hurt -- best score of the two options is taken
        * Use outside resources -- cite with comments
* Resources
    * Office hours
        * 3-5 PM Sunday in Widener
    * Tutorials
        * Small group office hours
        * Get answers to questions, have space to work with help available
        * Expectation is that you show up on time (but you can leave when done)
    * Stuff on the website
        * [Manual pages](https://man.cs50.io/)
        * [Discussion forum](https://cs50.harvard.edu/ed)
    * [CS50 Shorts](https://www.youtube.com/playlist?list=PLhQjrBD2T381k8ul4WQ8SQ165XqY149WW)

#### Pset 1 postmortem

* Questions, comments, and concerns?
* Some common issues

#### Week 2 material

* Questions?
* [Topics](https://cs50.harvard.edu/college/syllabus/#week-2--abstractions)

#### Hands on

[Sandbox](http://bit.ly/2UVljot)
* A quick note on style
* CLI practice, tips and tricks
* Hangman

---

## Other Stuff

### Resources

* [Tutorials](http://harvard.cs50.me/tutorials) and [office hours](https://cs50.harvard.edu/college/hours/)
* [Manual pages](https://man.cs50.io/)
* [Discussion forum](https://cs50.harvard.edu/ed)
* [CS50 Shorts](https://www.youtube.com/playlist?list=PLhQjrBD2T381k8ul4WQ8SQ165XqY149WW)
* [Google](https://www.google.com) and [Stack Overflow](https://www.stackoverflow.com)

### Contact Josh

[Email me!](mailto:joshuasacher@g.harvard.edu?subject=CS50%3A%20%5Byour%20subject%20here%5D)

### About Josh

Drug discovery chemist at [Broad Institute](https://www.broadinstitute.org/CDoT) by day, CS50 TF by night (and day). 

If you [search my name](https://www.google.com/search?q=Joshua+Sacher), most of what comes up should be me.
