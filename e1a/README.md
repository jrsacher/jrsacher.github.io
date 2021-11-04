# CSCI E-1a

## Fall 2021

## http://jrsacher.github.io/e1a

### [Contact Josh](mailto:josh@cs50.harvard.edu)

### [General Information](#general-info)


## Sections

<!--
+ [Programming](#programming)
-->
+ [Web Development](#web-development)
+ [Security](#security)
+ [Multimedia](#multimedia)
+ [Internet](#internet)
+ [Hardware](#hardware)

--- 

<!--
## Programming

### [Slides](https://docs.google.com/presentation/d/1zZKhSomzMlXl7IDmKNmQwQJDAQE1fNiiR4c98krwUqM/edit?usp=sharing)

### [Sandbox](http://bit.ly/2SIisQs)

Demo of compiled vs. interpreted languages

### Quiz questions

+ What is a Boolean expression?

A yes/no true/false statement. Often used with _loops_ and _conditionals_ (below).

+ What is bytecode?

An intermediate code created from _source code_ in interpreted languages such as Python which is then executed by a virtual machine

+ What are loops and conditions?

Methods of controlling program flow. Loops let a chunk of code be repeated, while conditionals provide branching options.

+ What does it mean for a program to be multithreaded?

More than one piece of code is being executed at the same time

+ What is an event, in the context of programming?

A sort of notification sent from one thread to another

---
-->

## Web Development

### [Slides](https://docs.google.com/presentation/d/1-YtW8ek0QSHrmxZYhhKyAn2IdaD7KMhm9TkaPsJsXpc/edit?usp=sharing)

### [Sandbox](https://bit.ly/2QFKVoG) with example webpage

**Resources**

+ W3 Schools
  + [HTML](https://www.w3schools.com/html/default.asp)
  + [CSS](https://www.w3schools.com/css/default.asp)
  + [JavaScript](https://www.w3schools.com/js/default.asp)
+ HTML dog (links from the assignment)
  + [HTML](https://htmldog.com/guides/html/)
  + [CSS](https://htmldog.com/guides/css/)

### Quiz questions

+ What is a web server and what is a web client? 

A _web server_ is a computer that can listen for requests and then send websites back to a user. The _client_ is your web browser (or another application) that makes the requests.

+ Identify three different HTTP status codes and describe what they mean/represent.

See [here](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) for a list of codes

+ What is a CSS selector?

A way of grabbing a particular piece of HTML and applying style to it

+ In your own words, what is the action attribute of an HTML form used for?

The [action](https://www.w3schools.com/tags/att_form_action.asp) attribute tells the webpage what to do on form submission

+ What is the DOM? What might we use it for?

The [Document Object Model](https://en.wikipedia.org/wiki/Document_Object_Model) is a tree-like structure for a webpage. It's useful for CSS selectors, JavaScript, and more.

### Assignment

+ **Start ASAP**
+ Look things up online!
+ Be sure to use relative links so that it works on the Staff's computers

  
---

## Security

### [Slides](https://docs.google.com/presentation/d/1gqQEVrDoSaJRzWLd7N9pzY99Vm6whAYtjEcnHV-Mwvs/edit?usp=sharing)

### Quiz questions

+ What is incognito mode? What privacy features might it offer?

The browser starts "clean" and any cookies, history, or information acquired during that session is removed on exit.

+ How does a password manager work?

One master password protects a "vault" of other passwords, meaning you only have to remember a single password to access all login info for all sites.

+ Why is it not a problem for me to release my public key, in a cryptography context?

The public key only allows data to be encrypted. The private key is needed for decryption.

---

## Multimedia

### [Slides](https://docs.google.com/presentation/d/1pcx8CL2B4xjF7pcJOYJrYftQdlUOGBQA_QVrZz8YhBc/edit?usp=sharing)

### Quiz questions

+ How are MIDI files different from MP3 files for the same song?

While MP3 files are recordings of the song, MIDI files are instructions for a computer to play a song -- similar to sheet music.

+ In the context of digital audio, what are the sample rate and bit depth?

Sample rate is the number of audio snapshots/slices taken per second. Bit depth is a measure of how many bits are used to store each sample.

+ In the context of RGB color, what is ff00ff, most likely?

<strong style="color:#ff00ff">Magenta!</strong> See [here](https://www.colorhexa.com/ff00ff), for instance

+ In the context of video compression, what are (and why might we want to use) keyframes? 

Keyframes are complete images stored at regular intervals. After that, only the _changes_ to the image(s) have to be recorded until the next keyframe. This allows us to use less data to store the same information.

---

## Internet

### [Slides](https://docs.google.com/presentation/d/1uhPK4pLTZK1YECoIQqiEMULDfMldyk4FGD--KzHJsbY/edit?usp=sharing)

### Quiz questions

+ Describe the difference between a cable modem and a router, in the context of home networking.

A router (wireless or otherwise) connects your devices to the modem. The modem is responsible for sending/receiving information. The two are sometimes housed in the same unit. 

+ Identify two port numbers that are commonly used, and what services/protocols use them.

See [here](https://en.wikipedia.org/wiki/Port_(computer_networking)) and links therein.

+ Why do we have multiple versions of the Internet Protocol?

We thought we had enough addresses for all the devices ever. It turns out we were wrong -- internet connected refrigerators weren't a thing when IPV4 was implemented.

---

## Hardware

### [Slides](https://docs.google.com/presentation/d/1NgdX-Ea1ueZo34U8N_HrCrfUCcwBGnMJJn3ockmNbiM/edit?usp=sharing)

### Quiz questions

+ How would we represent the number "28" in binary?

| 16 | 8 | 4 | 2 | 1 |
|:--:|:-:|:-:|:-:|:-:|
|  1 | 1 | 1 | 0 | 0 |

+ Describe at least one key difference between RAM and hard disk

RAM is faster at data transfer and has less storage capacity. A disk will maintain its state when power is removed, but RAM is _volatile_ -- it can't store anything without constant power.

+ What is an operating system? 

Software that sits between the user and hardware. Runs programs, manages resources, provides a user interface.

---

## General Info

[Course Website](https://cs50.harvard.edu/extension/technology/2021/fall/)

Contact [Josh](mailto:josh@cs50.harvard.edu) or [all course staff](mailto:technology@cs50.harvard.edu)

Sections (_feel free to attend whichever is convenient_):
+ [Zoom link](https://vault.cs50.io/ef732b06-375b-4f53-bf52-4eb7f0ea00c3) -- the same for all sections
+ Wed 6:00 – 7:30 pm ET with Greg
+ Thur 7:00 – 8:30 pm ET with Josh

Office hours:
+ [Office hours link](https://vault.cs50.io/67af4cb1-dba5-4bf3-9488-e68c084be0f8)
+ Thur 6:00 – 7:30 pm ET with Josh
+ Sun 11:00 am - 12:30 pm ET with Greg
+ Potentially by appointment -- ask your assigned TF
