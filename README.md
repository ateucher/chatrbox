
<!-- README.md is generated from README.Rmd. Please edit that file -->

# chatrbox

chatrbox was motivated by the Posit Open Source group’s Spring Cleaning,
where we all focus for a week on the parts of package maintenance that
don’t often come to the top of the priority list.

chatrbox has one function, `gc_prompt()` that sends a prompt to ChatGPT
in the form: “Write {format} about {topic} in the style of {style}”. By
default, `format`, `topic`, and `style` are randomly chosen from a list,
but you can choose them yourself. The pre-populated list of topics was
motivated by our Spring Cleaning activities.

## Installation

You can install the development version of chatrbox like so:

``` r
# install.packages("pak")
pak::pak("ateucher/chatrbox")
```

## Examples

Using the defaults:

``` r
library(chatrbox)

chatrbox()
#> 
#> *** ChatGPT input:
#> 
#> Write an opening paragraph of a newspaper article about spring cleaning in the style of a sports commentator.
#> ┌───────────────────────────────────────────────────────────────────────────┐
#> │                                                                           │
#> │   Ladies and gentlemen, it's that time of year again when the season      │
#> │   changes and the game of cleaning sweeps through households across the   │
#> │   nation. That's right, it's time for spring cleaning and it's not for    │
#> │   the faint of heart. Like a team getting ready for the playoffs,         │
#> │   households are preparing to clean every nook and cranny of their        │
#> │   homes, getting them ready for the warm weather ahead. From organizing   │
#> │   closets and clearing out garages, to deep cleaning carpets and          │
#> │   washing windows, folks are ready to take on the challenge of the        │
#> │   annual spring cleaning competition. So grab your brooms and dustpans,   │
#> │   because this is a game that anyone can participate in, but only the     │
#> │   strongest will emerge victorious.                                       │
#> │                                                                           │
#> └───────────────────────────────────────────────────────────────────────────┘
```

With custom prompts:

``` r
chatrbox(format = "a short political speech", 
         topic = "why R progammers love cats", 
         style = "Mary Poppins")
#> 
#> *** ChatGPT input:
#> 
#> Write a short political speech about why R progammers love cats in the style of Mary Poppins.
#> ┌───────────────────────────────────────────────────────────────────────────┐
#> │                                                                           │
#> │   Ladies and gentlemen, esteemed R programmers and cat lovers alike,      │
#> │                                                                           │
#> │   As Mary Poppins might say, "A spoonful of cuteness makes the coding     │
#> │   go down!" And that's why we R programmers love our feline friends.      │
#> │                                                                           │
#> │   Cats may seem like just another distraction in the world of data        │
#> │   analysis and statistical modeling, but they actually bring many         │
#> │   benefits to our work. Their purrs and cuddles have been known to        │
#> │   reduce stress levels, increase productivity, and even inspire           │
#> │   creative problem-solving.                                               │
#> │                                                                           │
#> │   Plus, cats are masters of the art of observation. They're always        │
#> │   watching and analyzing their environment with a keen eye - much like    │
#> │   how we R programmers meticulously examine and explore our datasets.     │
#> │   And just like how cats can predict a mouse's movements, we're always    │
#> │   trying to predict the outcomes and patterns in our data.                │
#> │                                                                           │
#> │   So let us embrace our furry friends, and remember that a cat's unique   │
#> │   perspective on the world can also enhance our own. As we continue to    │
#> │   write code and manipulate data, let's never forget the importance of    │
#> │   taking a pause, petting a cat, and appreciating the simple joys in      │
#> │   life.                                                                   │
#> │                                                                           │
#> │   Thank you, and meow-velous coding to all!                               │
#> │                                                                           │
#> └───────────────────────────────────────────────────────────────────────────┘
```
