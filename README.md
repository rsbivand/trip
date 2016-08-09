
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/mdsumner/trip.svg?branch=master)](https://travis-ci.org/mdsumner/trip) [![](http://www.r-pkg.org/badges/version/pkgconfig)](http://www.r-pkg.org/pkg/trip) [![](http://cranlogs.r-pkg.org/badges/pkgconfig)](http://www.r-pkg.org/pkg/trip) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/mdsumner/trip?branch=master&svg=true)](https://ci.appveyor.com/project/mdsumner/trip) [![Coverage Status](https://img.shields.io/codecov/c/github/mdsumner/trip/master.svg)](https://codecov.io/github/mdsumner/trip?branch=master)

Tools for animal track data
===========================

The trip package provides functions for accessing and manipulating spatial data for animal tracking. Filter for speed and create time spent plots from animal track data.

Installing
----------

The package is easily installed from CRAN in R.

``` r
install.packages("trip")
```

Install dev version
-------------------

To install the development package from Github, use `devtools`:

``` r
devtools::install_github("mdsumner/trip")
```

TODO
----

-   **Probability image**. The SGAT (and tripEstimation) packages have functions for dealing with spatial track summaries that are atomized to the level of each time step. There are methods for combining summaries from multiple tracks and for casting arbitrary durations (by sum) to standard image structures. This would be a good feature to replace the existing tripGrid function by storing the individual grid summaries for each implicit line segment.

-   **Coercion to/from other classes** The crawl and move packages contain objects that could be coerced in a straightforward way, see the Spatio Temporal Task View for more (in the Moving Objects / Trajectories section). The hyperframe in spatstat is another example, and to follow up Edzer's work in spacetime.

-   **Validation** Must include a detailed report object of where the problems are, and how to filter/fix/flush them.
