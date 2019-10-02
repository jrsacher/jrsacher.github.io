# CS50 Fall 2019

## Section materials for CS50, Fall 2019 edition

### Joshua Sacher

#### In-Between Section: Wednesdays 6:00 PM [Boylston Hall](https://www.google.com/maps/place/Boylston+Hall+Cambridge,+MA+02138/@42.373327,-71.1194602,17z/) 104

---

## [Sections](#sections)

* [Week 4](#week-4)
* [Week 3](#week-3)
* [Week 2](#week-2)

## [Other Stuff](#other-stuff)

* [Useful Resources](#resources)
* [Contact Josh](#contact-info)
* [About Josh](#about-josh)

---

## Sections

### Week 4


[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSf0bBZ7AG5157DEnJkPVsCddgcf9Tj6CtEuUxKwSK1JPYcieQ/viewform?usp=sf_link)

[Sandbox](https://sandbox.cs50.io/830753c8-968e-4b82-ac98-1d4d0608804d) or download in your IDE: `wget https://github.com/jrsacher/cs50-2019-fall/raw/master/week4.zip`

[Solutions](#week-4) to be released after section

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
