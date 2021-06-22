# Exam Review

## Overall themes

+ **Tradeoffs!** Everything comes at some kind of cost
+ It's all about layers of abstraction and building on them

## Computational Thinking

### Building from the ground up

+ Binary
+ ASCII
+ Colors

### Core concepts

+ Abstraction
+ Pseudocode
+ Algorithms
  + Complexity of algorithms

### Dealing with data

+ Memory
+ Data structures
  + Arrays
  + Linked lists
  + Hash tables
+ Sorting
+ Searching

## Programming Languages

### Constructs

+ Variables: `x = 50`
+ Boolean expressions: `x < 100`
+ Conditionals: `if ... else if ... else`
+ Loops
  + `for` loops: repeat a set number of times
  + `while` loops: repeat while some Boolean expression is true
+ Functions
  + Reusable pieces of code that do a specific task

### Programming

+ Compiled languages
  + text --> compiler --> machine code
  + Generally better performing
+ Interpreted languages
  + text --> interpreter --> byte code --> virtual machine
  + Generally easier to work with, especially for prototyping


## Internet Technologies

### Protocols that make the internet work

+ DHCP - Dynamic Host Configuration Protocol
  + Assigns your device an _IP address_ (ex: 10.75.234.190)
+ DNS - Domain Name Service
  + Lookup service that can translate a domain name into an IP address 
  + "google.com" --> 172.217.12.132
+ TCP - Transmission Control Protocol
  + Used to move data between _routers_ with minimal loss
  + Data is divided into discrete _packets_
  + Uses _ports_ to identify the type of traffic
    + http: 80
    + https: 443
    + smtp: 587
+ UDP - User Datagram Protocol
  + Prioritizes speed at the expense of some data loss
  + Good for real-time applications
+ HTTP - Hypertext Transfer Protocol
  + Used to ask for and receive web pages
  + Envelope analogy for requests
    + Need both a recipient address and a return address (headers)
    + Data "inside" the envelope
  + Response codes can tell you what happened
    + 200: OK
    + 404: Not found

## Web Development

+ HTML - Hypertext Markup Language
  + Tells us what to display and some basics about how to do it
  + Uses _tags_ to do this
    + Tags use angle brackets: `<body>`
    + Tags (usually) need to be closed: `</body>`
  + Tags can have _attributes_
    + `class`
    + `id`

+ CSS - Cascading Style Sheets
  + Provides robust control over style, layout, formatting, etc.
  + Uses _selectors_ to choose HTML elements
    + Text on its own gets HTML tags
    + `.` used for `class`es
    + `#` used for `id`s
  + Many different `attribute: parameter;` combinations
    + `text-align: center;`
    + `color: darkred;`

+ JavaScript
  + Makes websites more interactive and responsive
  + Code runs in the client's web browser
  + Uses the Document Object Model (DOM) to interact with the HTML page
    + Tree-like hierarchy of HTML elements


## Technology Stacks

### Front end vs. Back end

+ Front end
  + User-facing portion of the web page or application
  + For web apps: HTML, CSS, JavaScript, JS frameworks
+ Back end
  + Server-side portion of the application 
  + Handles logic, interaction with front end and databases, etc.
  + Python, Ruby, Java, C++, etc. and related frameworks
  
### Frameworks

+ Programs that provide big-picture functionality allowing you to focus on the parts unique to your app/site
+ When using a framework, you must fit your code into theirs
+ Contrasts somewhat with a _library_
  + Still someone else's code that solves a problem
  + But you get to decide how to use it
+ A _framework_ uses your code; your code uses _libraries_
+ Delineation can often be a bit fuzzy

### Databases

+ SQL
  + Organizes data into tables
    + Think spreadsheet-like organization
  + _Relational_ database
    + Uses _primary_ and _foreign keys_ to join data across multiple tables
    + Avoids duplication of data and means changes only need to be made in one place
  + Columns must be assigned a _data type_
    + Specific names depent on database software, but include some form of text, number, and date fields, among others
+ NoSQL
  + Non-tabular data storage
    + More like a document than a spreadsheet
    + Data stored in _objects_ (example: key/value pairs in MongoDB)
+ Database operations (CRUD)
  + Create
  + Read
  + Update
  + Delete
  
### Mobile development

+ Platform-specific languages
  + Android: Kotlin, Java
  + iOS: Swift, Objective-C
  + Takes advantage of all device features and is generally faster
  + Need 2 separate code bases if developing for both platforms
+ Platform-independent applications
  + Possible to make a web app that looks and feels similar to a native app
  + Tools available for writing code in JavaScript, C#
  + May not perform as well or look the same as native applications

## Cloud Computing

### Scalability

+ Vertical scaling -- get bigger, faster hardware
+ Horizontal scaling -- get MORE hardware
  + Can become complex, as servers and load balancers are needed
  + Offers elasticity, as you can turn off a server if it isn't needed anymore
+ Database scaling
  + Sharding -- dividing data across DBs
  + Replication -- multiple copies of the data
+ If possible, design to avoid having a _single point of failure_
  
### \_\_\_\_\_ as a Service

+ Infrastructure (IaaS)
  + Purchase time/space on someone else's hardware
  + _Vitrual Machines_ allow multiple "computers" to run on the same hardware
+ Platform (PaaS)
  + Abstract away much of the hardware -- someone else will deal with it for you
  + Allows you to focus on your application, but you have less control
+ Software (SaaS)
  + Don't even worry about making the software, just use it!
  + Gmail, Google Docs, Office 365, etc.

