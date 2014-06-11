
# Writing reports in R

Writing reports (papers, homework, assignments) is quite easy. You can do this by installing a Latex environment for your operating system, then installing `rmarkdown`. 

## Basics of markdown

## Basics of R markdown

## Writing full reports

Writing reports requires some simple front matter on your document. 

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



