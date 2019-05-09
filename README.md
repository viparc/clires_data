
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
+                           col_types = paste(c("cii", rep("l", 51), rep("d", 90), "lil"), collapse = ""))
```

The data frame contains 5391 weeks of observation (rows) and 147
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
