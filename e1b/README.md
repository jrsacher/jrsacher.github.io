# CSCI E-1b

## Spring 2020

## http://jrsacher.github.io/e1b

+ [Technology Stacks](#technology-stacks)
+ [Web Development](#web-development)
+ [Internet Technologies](#internet-technologies)
+ [Programming Languages](#programming-languages)
+ [Computational Thinking](#computational-thinking)
+ [General Info](general_info)

### Technology Stacks

#### [Attendance](https://docs.google.com/forms/d/e/1FAIpQLScUIILWkSn3ATWeaKo-pUyEMAPHqPONWTWFi4WtlFmDUsoVgA/viewform?usp=sf_link)

#### [Slides](https://docs.google.com/presentation/d/1f69NorkDb-KLgF6I5WtYlthBTzIVF_opHOFJfOqSYgo/edit?usp=sharing)

#### General

+ Assignment due Thursday, April 16
  + As always, look things up online!
+ *Cloud Computing* released Friday, April 17
+ Exam details coming soon
+ Questions?

#### Mini-quiz

+ What are CRUD operations?
+ In a few sentences, distinguish between a website's front end and its back end.
+ Distinguish between when one might use a SQL versus a NoSQL database.

---

### Web Development

#### [Attendance](https://docs.google.com/forms/d/e/1FAIpQLScg_iIhxeTf8V66x_QfpK3UITzS3TkTx8x0h9hMR_c6KsrbzA/viewform?usp=sf_link)

#### [Slides](https://docs.google.com/presentation/d/1n3yW6-etkvX9x9dSLbhOC29e4ZP4FdFGrdEBVPz32H8/edit?usp=sharing)

#### [Sandbox](https://bit.ly/2QFKVoG) with example webpage

#### General

**Resources**

+ W3 Schools
  + [HTML](https://www.w3schools.com/html/default.asp)
  + [CSS](https://www.w3schools.com/css/default.asp)
  + [JavaScript](https://www.w3schools.com/js/default.asp)
+ HTML dog (links from the assignment)
  + [HTML](https://htmldog.com/guides/html/)
  + [CSS](https://htmldog.com/guides/css/)
  
Questions?

#### Mini-quiz

+ Uses for the inspector tab in your browser?
+ Purpose of CSS Selectors?
+ Why might you want to use JavaScript?

#### Assignment

+ **Start ASAP**
+ Look things up online!
+ Be sure to use relative links so that it works on the Staff's computers
+ The Sandbox environment doesn't have a lot of the useful features of code editors. Alternatives:
  + Full [CS50 IDE](ide.cs50.io) for online use
  + [VS Code](https://code.visualstudio.com/)
  + [Atom](https://atom.io)
  + [SublimeText](https://sublimetext.com)
  

---

### Internet Technologies

#### [Attendance](https://docs.google.com/forms/d/e/1FAIpQLScZM-IBBt5iDC6eYMdoDb_1PkiwfT6BxmHoohdx6sRiAL5tLg/viewform?usp=sf_link)

#### [Slides](https://docs.google.com/presentation/d/14Fq13Y7_VYvzvvLusDjO6wisQFY0Fx16UyfGOW__WFI/edit?usp=sharing)

#### General

+ Homework reminders
  + Start early!
  + Late work is generally not accepted
    + _If there are extenuating circumstances, contact business@cs50.harvard.edu_
+ No sections/office hours for Spring Break (March 14 to 22)
+ Questions from the first homework assignment?
+ I'm grading assignment 2 -- hope to have it done this weekend!
+ Other questions or concerns?

#### Topics

+ Internet Alphabet Soup!
+ See slides

#### Mini Quiz

+ Difference between TCP and UDP?
+ Why might entries show as " *\** " during `traceroute`?
+ HTTP "response codes" that David shows?
  + 200 "OK"
  + 301 "Moved Permanently"
  + 404 "Not Found"
  
#### Assignment

+ Questions?

#### Questions from Section

+ _How do you know what protocol is being used?_
  + You can see all of your computer's internet connections by opening up a terminal (Mac) or command prompt (Windows) and running `netstat`. I was able to see a whole bunch of TCP and UDP connections and identify what some of them (but not all) were.
  + There may be ways to more directly see what's happening for a specific application, etc., but I don't know them
+ _DNS hijacking and HTTPS?_
  + It turns out security is only as good as its weakest link. If you're able to redirect traffic to your site _and_ get a valid certificate that says your site is "real," HTTPS won't protect you. ([Source](https://krebsonsecurity.com/2019/02/a-deep-dive-on-the-recent-widespread-dns-hijacking-attacks/))
  + In the Wikileaks case, their use of HTTPS Strict Transport Security provided a bit of added security, but didn't prevent the hack from occurring
  + People are coming up with new ways to make DNS more secure, such as [DNSSEC](https://www.cloudflare.com/learning/dns/dns-security/), [encyption methods](https://www.opendns.com/about/innovations/dnscrypt/) and mores
+ _How are people exploiting internet-related vulnerabilities in the real world?_
  + DNS hijacking, as above and in the homework
  + [Cross Site Scripting (XSS)](https://en.wikipedia.org/wiki/Cross-site_scripting), which allows people to add their code to the code sent by legitimate websites
  + [CROSS-SITE REQUEST FORGERY (CSRF)](https://en.wikipedia.org/wiki/Cross-site_request_forgery), where a user ends up sending a request that wasn't intended
  + [SQL injection attacks](https://en.wikipedia.org/wiki/SQL_injection) that gives an adversary access and/or modify information on your database.
  + General lack of security practices (unencrypted passwords, unsecured databases, human error exposing credentials, etc.)
  + **In the news**
    + [Equifax - 2017](https://www.cnet.com/news/equifaxs-hack-one-year-later-a-look-back-at-how-it-happened-and-whats-changed/): vulnerability in the server's software
    + [Facebook - 2018](https://www.nytimes.com/2018/09/28/technology/facebook-hack-data-breach.html): Security tokens
    + [US Government website - 2020](https://arstechnica.com/information-technology/2020/01/unpatched-us-government-website-gets-pwned-by-pro-iran-script-kiddie/): SQL injection
    + [Twitter - 2010](https://www.theguardian.com/technology/blog/2010/sep/21/twitter-bug-malicious-exploit-xss): XSS
    + [Facebook - 2019](https://latesthackingnews.com/2019/02/19/facebook-awarded-25000-bounty-for-reporting-a-csrf-vulnerability/): CSRF (identified before any known breach)
    + [Indian Government - 2019](https://latesthackingnews.com/2019/02/19/facebook-awarded-25000-bounty-for-reporting-a-csrf-vulnerability/): Unsecured database
  + David Malan on [security in general](https://youtu.be/QQmFyybzon0); Brian Yu with some [more in-depth details](https://youtu.be/bR1AZMk7SNs)


---

### Programming Languages

#### [Attendance](https://docs.google.com/forms/d/e/1FAIpQLScKC6lpUFlRQpmmEbihcUkP4SBtGI_zEqMa9CnYT5yUeFK_aQ/viewform?usp=sf_link)

#### [Slides](https://docs.google.com/presentation/d/1mPEl15WoJnJoRLDoNjYFXv_t8mA11UMBXfm33Hap9Z0/edit?usp=sharing)

#### General

+ Questions, comments, or concerns?

#### Topics

+ Variables
+ Conditionals
+ Loops
+ Functions
+ Compiled vs Interpreted languages

#### Mini Quiz

1. What is a sprite?
1. What is a Boolean expression?
1. What is bytecode?

#### Assignment

+ [Scratch](https://scratch.mit.edu/)
+ Questions (that I can carefully try to answer)?

#### Bonus

[Here's a Scratch game](https://scratch.mit.edu/projects/173019982/) I spent WAY to much time on!

---

### Computational Thinking

#### [Attendance](https://docs.google.com/forms/d/e/1FAIpQLScKh5zjjaSBO8BYR2gfJCMxx8KuCS9Hb1kbfFVwSufyW99C0A/viewform?usp=sf_link)
#### [Slides](https://docs.google.com/presentation/d/1r7yA4kITfc8U72nVRyZ1Eumsalo9dQdzvzE5waBWLSQ/edit?usp=sharing)

#### Housekeeping

+ Read the [syllabus](https://cs50.harvard.edu/extension/business/2020/spring/syllabus/)!
+ General questions, comments, or concerns?

#### Topics

+ Binary
+ ASCII
+ Colors
  + Side note: Hex
+ Abstraction
+ Algorithms
+ Pseudocode
+ Memory
+ Searching and sorting
+ Data structures
  + Arrays
  + Linked lists
  + Hash tables
  
#### Mini Quiz

1. With what actual form of input is a modern computer storing the 0s and 1s of binary?
1. What is pseudocode?
1. As described in lecture, a hash table is typically a combination of what two other data structures?

---

### General Info

[Course Website](https://cs50.harvard.edu/extension/business/2020/spring/)

Contact [Josh](mailto:josh@cs50.harvard.edu) or [all course staff](mailto:business@cs50.harvard.edu)

Sections (_feel free to attend whichever is convenient_):
+ [Zoom link](https://vault.cs50.io/5841eb19-32a4-436c-a9f3-33fd2e7c6cc1) -- the same for all sections
+ Wed 8:00–9:15 pm ET with Greg
+ Thur 7:00–8:15 pm ET with Josh
+ Sun 12:30–1:45 pm ET with Spencer

Office hours:
+ [Office hours link](https://vault.cs50.io/b758e292-8a08-4ef5-beae-85e8814f3761)
+ Sat 1:00–2:00 pm ET with Greg
+ Sun 2:00–3:00 pm ET with Spencer
+ Thu 9:00–10:00 pm ET with Josh
+ Potentially by appointment -- ask your assigned TF
