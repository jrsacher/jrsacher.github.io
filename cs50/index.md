# CSCI E-50 Spring 2019

***

## Section 8

### 

```sql
INSERT INTO cs50 (sections) VALUES (‘the end’)
```

[Slides](https://docs.google.com/presentation/d/1MMW2hq89d81PwHO18bFGo_J1fHvT0IAJ1aSAwryOp5A/edit?usp=sharing)

No sandbox, but run the following in your IDE:  
`wget https://cdn.cs50.net/hbs/2019/spring/classes/4/imdb.db`

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSe_8tsCIalm9Pd1cP-fXNRXi8Tyf2d0oB55B9ZpIZ_m0yiOxw/viewform?usp=sf_link)

***

## Section 7

### Writing HTML by hand is boring

[Slides](https://docs.google.com/presentation/d/1EE6zpD2FDUBrKAGla5XYOijsv7D1jlNc24JexEO-z4s/edit?usp=sharing)

Sandboxes:  
* [Mario revisited](http://bit.ly/2IjGBb3)
* [Telling time](http://bit.ly/2ImJEiL)
* [Decorators](http://bit.ly/2G7fYoh)

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSeQHfBTSSGFKxj726zl3fyq8etc0oQmv-feSmmpqxJtPSyTLw/viewform?usp=sf_link)

***

## Section 6

### [import this](https://en.wikipedia.org/wiki/Zen_of_Python)

```python
for person in section:
    print(f"hello, {person}!")
```

[Slides](https://docs.google.com/presentation/d/1jxRUsDgHDGhAQjznlOPrJLs8jnW02y3gd4EwHYjJKmA/edit?usp=sharing)

[Sandbox](http://bit.ly/2WDQHYp)

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLScrklxp-YDq7ykKf9GjzXhbEp4-XzaMXkPQ1WfkoycjeY_EoA/viewform?usp=sf_link)

***

## Section 5

### ...a series of tubes[?](https://en.wikipedia.org/wiki/Series_of_tubes)

[Best resource for all things HTML/CSS](https://w3schools.com)

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSd_y-wyzL2j-2LQ0XV0gVXBM5sgr8Yx3cPiSflNwtPAxTMthw/viewform?usp=sf_link)

***

## Section 4

### C ya later!

[Slides](https://docs.google.com/presentation/d/15irxsSaR153HbkBpnNTbX4G4dO9Fb-4rvDbQMCzw6Kg/edit?usp=sharing)

[Sandbox](http://bit.ly/2SQdDkQ)

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSewsRdowBnb7rt9i-VACLjpardY7kUo6Xvq8Cq0XDe1jYwKsA/viewform?usp=sf_link)

***

## Section 3 part 2

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSf725jcJcc9VqzuPmzmdUx8CCBUOCNGq8Ppr1wsriPqdoCevw/viewform?usp=sf_link)

***

## Section 3

### What’s the point(er)?

```C
int main(int argc, char *argv[])
{
    char *name = "section";
    
    if (argc == 2)
    {
        name = argv[1];
    }

    printf("Hello, %s!\n", name);
}
```

[Slides](https://docs.google.com/presentation/d/15KseYAGGgPp9MuThNyhcCEWbYNDFOzcvUKZW2KSw60I/edit?usp=sharing)

[Sandbox](http://bit.ly/2tyIMPs)

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLScxgwxd3X_XjBy2BsHBDkGI2K2YJOvt5uP3Iicg3xHyi4IirQ/viewform?usp=sf_link)

***

## Section 2

### Arrays are awesome

```C
int main(void)
{
    string s = "Hello, section!";
    for (int i = 0, len = strlen(s); i < len; i++)
    {
        printf("%c\n", s[i]);
    }
}
```

[Slides](https://docs.google.com/presentation/d/1hctnYNQlqztHs8Xu4FXwrAmctZ1X7-XDuGBp5C3YkQk/edit?usp=sharing)

[Sandbox](http://bit.ly/2S92c7w)

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLScB8yba6sMvsY1aItvE5n-8fwmQxLP9WfgJNNZgO5erzr-Cdw/viewform?usp=sf_link)

***

## Section 1

### From [**C**olorful **C**ats](https://scratch.mit.edu) to plain old `C`

```C
int main(void)
{
    printf("Hello, section!");
}
```

[Slides](https://docs.google.com/presentation/d/1-cHEmUAWGQ6z9_lM5xYrmzClZ4aGNXc9pz8Zy8IxYQw/edit?usp=sharing) for today's section

[Sandbox](http://bit.ly/2GxHVGA) for section 1

[Attendance](https://docs.google.com/forms/d/e/1FAIpQLSd4skycpQnoi8WfxsyrSehdJ_jG9a3u_sSUyfmTFpmlWO3M6Q/viewform?usp=sf_link)

#### Resources

* [CS50 Resource Guide](https://cs50.harvard.edu/extension/2019/spring/guide.pdf): A wonderful summary, thanks to [Emily Hong](https://cdn.cs50.net/2018/fall/video_projects/staff_gifs/gifs/Emily-Hong.gif)
* [CS50 Reference](https://reference.cs50.net/): A simplified guide to `C` functions
* [Discourse](https://discourse.cs50.net/c/cs50-2019-spring): the best place to get answers asynchronously
* [Reference sheets](https://drive.google.com/open?id=1WgsqoeDJ4v3ywVF8LqtUXE0KS0tEO4vU): A series of one-pagers on various topics
* [CS50 Shorts](https://www.youtube.com/playlist?list=PLhQjrBD2T381k8ul4WQ8SQ165XqY149WW): Short videos on specific topics

[Contact Josh](mailto:cs50@jrsacher.com)

Learn more about Josh by [googling](https://www.google.com/search?q=Joshua+Sacher) (I'm not the crossfit guy, so pretty much anyone that looks out of shape is me)
