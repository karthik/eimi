
# Exercise for reports

1. Make a new report working through yesterday's climate example. Your report should contain a small paragraph of text describing the data, some notes on the data structure (how many rows, columns), range of temperature.
2. Then print the plot you made.
3. Knit the report and see if the PDF looks ok.

__Bonus:__

4. Turn the climate plot into a function called `myplot`. It should take an input `data.frame` and return a `ggplot`. Here is a rough skeleton for what you need to do:

```
myplot <- function(dd) {
    # move your code here.
    # just print the plot at the end 
}
```
Then you code should just called `myplot(climate)` to return a ggplot.

5. To add a title to a ggplot, all you need to do is:
```
+ ggtitle("title name")
```
See if you can update the function so it can take a title as an option. Here is an example:

```
myplot <- function(dd, my_title) {
    # move your code here.
    # just print the plot at the end 
    # just add + ggtitle(title = my_title)
}
```
Then you can do `myplot(climate, "Plot of temperature anomaly")`


6. If you got through this part without any trouble, go back to the `ggplot.pdf` document from yesterday and make a barplot of the same Anomaly data. See slide `61` of the PDF for what your output should look like. Read slides 55-60 to learn about 