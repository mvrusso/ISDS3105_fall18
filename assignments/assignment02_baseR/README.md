Assignment 2
================
Mark Russo

The goal of this practice is to improve your understanding of vectors and how to manipulate them. The data we use are the prices of the [2017 Big Mac Index](http://www.economist.com/content/big-mac-index).

For each question, please create a new chunck with your reponse. Use narratives to comment the output whenever the question requires to do so.

1.  Edit the code below to assign country names to the vector `countries` and prices to the vector `prices`. Hide the code below when you knit (check the Rmarkdown cheatsheet to find the appropriate chunk option to hide code).

2.  Use `typeof()` to report the type of both vectors.

``` r
typeof(countries)
```

    ## [1] "character"

``` r
typeof(prices)
```

    ## [1] "double"

1.  Use `names()` to name the `prices` using `countries`. Show the first 5 values of your new vector

``` r
names(prices) <- countries
prices[1:5]
```

    ## Argentina Australia    Brazil   Britain    Canada 
    ##  4.125534  4.527955  5.101568  4.111432  4.655697

1.  Use `round()` to round the prices at the 3rd decimal. Overwrite `prices` with the rounded prices.

``` r
prices <- round(prices, digits = 3)
```

1.  Use indexing to report the prices for Canada, United States, Mexico

``` r
c(prices[5], prices[21], prices[41])
```

    ##        Canada        Mexico United States 
    ##         4.656         2.754         5.300

``` r
prices[c('Canada', 'United States', 'Mexico')]
```

    ##        Canada United States        Mexico 
    ##         4.656         5.300         2.754

``` r
## I found two methods that work.The second is more efficient since we don't have to count to find the positions of the countries.
```

1.  Use inline code and the function `length()` to display the following sentence:

"The are x observations in the Big-Mac Index"

There are 56 in the Big-Mac Index

1.  Convert the prices from Dollar to Euro (1 Dollar = .83 Euro). In the narrative, comment about the property which allows you to combine a vector of length 1 (the exchange rate) with a vector of length 56 (the prices).

``` r
euro_prices <- .83*prices

##In R we can multiply a vector of arbitrary length with a scalar.
```

-   Could you use the vector `rep(.83, 28)` to do the same?

``` r
##Yes. If you type rep(.83, 28)*prices, it will give the same result as .83*prices.
```

-   Could you use the vector `rep(.83, 112)` to do the same?

``` r
##Yes. Since 112 is exactly twice 56, the values get repeated.
```

-   Would `rep(.83, 45)` also work? Why?

``` r
##This does work, but I receive an error message since 45 is not a multiple of 56.
```

1.  In your narrative, mention that we are going to drop the 46th element. Use dynamic code to report the country that will drop.

``` r
##We are going to exclude the 46th element.
paste('We are dropping', countries[46], 'from our report.' )
```

    ## [1] "We are dropping Belgium from our report."

1.  Overwrite the vector of prices with a new vector without observation 46. Use `length()` to make sure you have one observation less.

``` r
prices <- prices[-46]
length(prices)
```

    ## [1] 55

1.  Knit, commit and push to your GitHub repo `assignment`. Then submit the link to the *assignment folder* on Moodle.
