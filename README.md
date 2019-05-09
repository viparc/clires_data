
The `make_data.R` R script that generates the data can be generated by
the following command:

``` r
> # install.packages("knitr")
> knitr::purl("https://raw.githubusercontent.com/viparc/clires_data/master/make_data.Rmd", documentation = 1L)
```

The data set, as a flat rectangular CSV file, can be downloaded from
[here](https://raw.githubusercontent.com/viparc/clires_data/master/data/viparc.csv):

``` r
> # install.packages("readr")
> viparc <- readr::read_csv("https://raw.githubusercontent.com/viparc/clires_data/master/data/viparc.csv",
+                           col_types = paste(c("cii", rep("l", 6), rep("d", 45), "lil"), collapse = ""))
Warning: Unnamed `col_types` should have the same length as `col_names`.
Using smaller of the two.
Warning in rbind(names(probs), probs_f): number of columns of result is not
a multiple of vector length (arg 1)
Warning: 248119 parsing failures.
row # A tibble: 5 x 5 col     row col         expected actual file                                    expected   <int> <chr>       <chr>    <chr>  <chr>                                   actual 1     1 amoxicilli… a double FALSE  'https://raw.githubusercontent.com/vip… file 2     1 ampicillin… a double FALSE  'https://raw.githubusercontent.com/vip… row 3     1 apramycin_… a double FALSE  'https://raw.githubusercontent.com/vip… col 4     1 cefadroxil… a double FALSE  'https://raw.githubusercontent.com/vip… expected 5     1 cefotaxime… a double FALSE  'https://raw.githubusercontent.com/vip…
... ................. ... ........................................................................... ........ ........................................................................... ...... ........................................................................... .... ........................................................................... ... ........................................................................... ... ........................................................................... ........ ...........................................................................
See problems(...) for more details.
```

The data frame contains 5391 weeks of observation (rows) and 57
variables (columns). The variables are

  - **farm:** farm ID;
  - **flock:** flock ID (in a given farm);
  - **week:** week number (in a given flock of a given farm);
  - **respiratory, …, sudden\_death:** presence (`TRUE`) / absence
    (`FALSE`) of 6 clinical signs in the flock;
  - **amoxicillin\_g, …, unknown\_g:** mass, in g, of the 44
    antimicriobial used in the flock;
  - **completed:** boolean informing whether the flock is done (`TRUE`)
    or still ongoing (`FALSE`);
  - **nb\_chicken:** total number of chicken in the farm;
  - **sampling:** boolean informing whether there is feces sampling
    during the week (`TRUE`) or not (`FALSE`).
