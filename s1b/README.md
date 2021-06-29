# CSCI S-1b

## Summer 2021

## http://jrsacher.github.io/s1b

---
<!--
### [Review Session Topics](review.md)

---

+ [Cloud Computing](#cloud-computing)
+ [Technology Stacks](#technology-stacks)
+ [Web Development](#web-development)
+ [Internet Technologies](#internet-technologies)
-->
+ [Programming Languages](#programming-languages)
+ [Computational Thinking](#computational-thinking)
+ [General Info](#general-info)

<!--
---

### Cloud Computing

#### [Slides](https://docs.google.com/presentation/d/1WRqmlBgDFjCx8b-9AC_1LPRB_Yh-zP9sDPcXH3TOuYI/edit?usp=sharing)

#### General

+ Additional exam details will likely go out soon
  + Released Fri 5/7
  + Due Wed 5/12 @ 11:59 PM EDT
  + Questions about the exam during that period need to be directed to Doug (lloyd@cs50.harvard.edu). Other staff will not reply
+ Questions/comments/concerns?
 
#### Mini-quiz

+ Provide some examples of "single points of failure".
+ Distinguish between IaaS, PaaS, and SaaS.
+ What is the difference between vertical and horizontal scaling?

---

### Technology Stacks

#### [Slides](https://docs.google.com/presentation/d/1yLhjVmpji3eKwtwwtIIJSfHoJBWFaOtuVPBE7YH5bI0/edit?usp=sharing)

#### General

+ Assignment due Sunday, April 18
  + As always, look things up online!
+ *Cloud Computing* released Monday, April 19
+ Exam details coming soon
+ Questions?

#### Mini-quiz

+ What are CRUD operations?
+ In a few sentences, distinguish between a website's front end and its back end.
+ Distinguish between when one might use a SQL versus a NoSQL database.

#### **Questions from previous Sections**

+ Examples of cross-platform mobile apps?
  + The Xamarin framework lets you build platform-independent mobile apps using C#. [Examples from their site](https://dotnet.microsoft.com/apps/xamarin/customers) include UPS, Alaska Airlines, and the American Cancer Society.
  + React Native lets you develop in JavaScript for both iOS and Android. [Some React apps include](https://reactnative.dev/showcase) things Facebook owns (can't believe I didn't think of that!) -- Facebook, Instagram and more; Tesla; Pinterest; Delivery.com; etc.
+ Are there database "frameworks?"
  + Not really "database frameworks," but there are [persistence frameworks](https://en.wikipedia.org/wiki/Persistence_framework) that help applications communicate with databases.
  + [Object-relational mapping](https://en.wikipedia.org/wiki/Object-relational_mapping) tools are [frameworks used *with* databases](https://www.killerphp.com/articles/what-are-orm-frameworks/), but not "database frameworks" themselves.

---

### Web Development

#### [Slides](https://docs.google.com/presentation/d/1TwSFrqmcP2U0ArFhpXlCjBE8KIdxWjt_AGOydRhwNNA/edit?usp=sharing)

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

#### [Slides](https://docs.google.com/presentation/d/1d4cvm-vn-vnkFS8GiA3gcSw1ga3TR9gmqCeZuCjHrgI/edit?usp=sharing)

#### General

+ Homework reminders
  + Start early!
  + Late work is generally not accepted
    + _If there are extenuating circumstances, contact business@cs50.harvard.edu_
+ No sections/office hours for "Spring Break"
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

#### Questions from Previous Years

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

-->
---

### Programming Languages

#### [Slides](https://docs.google.com/presentation/d/17FPoSh48OUpYkepCQHZkZalDrtdGZM8bzVVGSUk2KZA/edit?usp=sharing)

#### [Sandbox](http://bit.ly/2SIisQs) example of compiled vs. interpreted languages

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

#### [Slides](https://docs.google.com/presentation/d/19fXVejCYs1TPLwi5zQknJwwHWs1PBsLjOM3ZimbwKzI/edit?usp=sharing)

#### Housekeeping

+ Read the [syllabus](https://cs50.harvard.edu/summer/business/2021/syllabus/)!
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

[Course Website](https://cs50.harvard.edu/summer/business/2021/)

Contact [Josh](mailto:josh@cs50.harvard.edu) or [all course staff](mailto:business@cs50.harvard.edu)

Sections (_feel free to attend whichever is convenient_):
+ [Zoom link](https://vault.cs50.io/197494c6-35ec-428d-8de2-602eeb2a5717) -- the same for all sections
+ Tues 7:00 – 8:30 pm ET with Josh
+ Wed 6:00 – 7:30 pm ET with Greg
+ Wed 9:00 – 10:30 pm ET with Eric


Office hours:
+ [Office hours link](https://vault.cs50.io/ab9370a8-8662-4e81-955f-c6e4eb88c77f)
+ Thur 9:00 – 10:30 pm ET with Eric
+ Fri 7:00 – 8:30 pm ET with Josh
+ Sun 11:00 am – 12:30 pm ET with Greg
+ Potentially by appointment -- ask your assigned TF

[Discussion forum](https://edstem.org/us/courses/5047/discussion/)
