
# Writing reports in R

Writing reports (papers, homework, assignments) is quite easy. You can do this by installing a Latex environment for your operating system, then installing `rmarkdown`. 

## Basics of markdown

Let's try a simple online markdown editor first:

[https://stackedit.io/](https://stackedit.io/)

## Basics of R markdown

Try some rmarkdown here:

[https://public.opencpu.org/ocpu/library/markdownapp/www/](https://public.opencpu.org/ocpu/library/markdownapp/www/)

The markdown syntax is the same, except you can wrap R code inside code blocks. Code blocks are defined by 3 backticks (the key next to 1). The language (R) is defined inside curly braces right after the opening 3 backticks. Here you can:

- name the chunk of code
- Choose to execute the code or not
- Show the code or now
- Show the results or not
- Hide or show the error messages
- Hide or show the warning messages
- Set dimensions for figures
- Choose to Cache the results.


## Writing full reports

Writing reports requires some simple front matter on your document. This is called `yml` (pronounced YAML).

```
---
title: Title
author: Your name
output:
  pdf_document:
    toc: true
    highlight: default
---  
```

To produce the document (and also run all of the code contained within), simply run:

```S
library(rmarkdown)
render("Document_name.Rmd")
```
If you are already using RStudio, just click the knit HTML button (only visible when you have a file with a .Rmd extension open).




