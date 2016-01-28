Is it a prime number?
========================================================
author: Geerten Doornenbal
date: 28-01-2016

Testing for a prime
========================================================

Do you ever feel the need to know whether a number is a prime or not?

Well, we do too.

Therefore, we have developed the web app:
## "Is it a prime number?"

Usage
========================================================

The app can be accessed at any time at:

https://geertendoornenbal.shinyapps.io/developingdataproducts/

One simply inserts any integral number, press the submit button, and voila:

### The app automatically tests for it being a prime number or not.

Technical details
========================================================

Using the following function, the app tests for prime qualities:

```r
is.prime <- function(num) {
  if (num == 2) { TRUE } 
  else if (any(num %% 2:(num-1) == 0)) { FALSE } else { TRUE }
}
```

Which can be used as follows:


```r
is.prime(13)
```

```
[1] TRUE
```

Any place, any time
========================================================

So from now on, if you ever feel the need of testing a number for being prime or not?

Use our marvelous app:
## "Is it a prime number?"


https://geertendoornenbal.shinyapps.io/developingdataproducts/
