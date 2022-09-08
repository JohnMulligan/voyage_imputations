# Voyages imputation script sandbox

Experimenting with the spss imputation scripts in Voyages.

First crack, I rewrote the age and gender variables imputation scripts (untested).

The method was to

1. call the voyage number variables
1. extract their spss var names and map those to the options file
1. pull the current values for the voyage from the api
1. use those as hooks for rewriting the spss scripts
1. and updating the values in that extended options dictionary as we go

A lot of it comes down to hard-coded factors, though, so my method won't scale well.

Instead, it could be smarter to just keep the first couple steps and then use spss as an external service?

1. bring in all of the voyage spss vars
1. extract the spss var names
1. pull the current values from the api
1. fire those into the spss script, values mapped to var names
1. get the imputations back and update the json object

Why do it this way? Because it's hard to see how one would inspect and potentially refactor that code otherwise.

Eventually I think it should be in notebooks or some other modern data science pipeline, but right now, forcing all this into Python just obscures what the code is doing more than it helps.