hw01\_exploring\_data.Rmd
================
Tyler Allan
1/23/2021

## The Penguins Package

``` r
library(palmerpenguins)
palmerpenguins::penguins
```

    ## # A tibble: 344 x 8
    ##    species island bill_length_mm bill_depth_mm flipper_length_~ body_mass_g
    ##    <fct>   <fct>           <dbl>         <dbl>            <int>       <int>
    ##  1 Adelie  Torge~           39.1          18.7              181        3750
    ##  2 Adelie  Torge~           39.5          17.4              186        3800
    ##  3 Adelie  Torge~           40.3          18                195        3250
    ##  4 Adelie  Torge~           NA            NA                 NA          NA
    ##  5 Adelie  Torge~           36.7          19.3              193        3450
    ##  6 Adelie  Torge~           39.3          20.6              190        3650
    ##  7 Adelie  Torge~           38.9          17.8              181        3625
    ##  8 Adelie  Torge~           39.2          19.6              195        4675
    ##  9 Adelie  Torge~           34.1          18.1              193        3475
    ## 10 Adelie  Torge~           42            20.2              190        4250
    ## # ... with 334 more rows, and 2 more variables: sex <fct>, year <int>

First some basic summary of the data.

``` r
summary(penguins)
```

    ##       species          island    bill_length_mm  bill_depth_mm  
    ##  Adelie   :152   Biscoe   :168   Min.   :32.10   Min.   :13.10  
    ##  Chinstrap: 68   Dream    :124   1st Qu.:39.23   1st Qu.:15.60  
    ##  Gentoo   :124   Torgersen: 52   Median :44.45   Median :17.30  
    ##                                  Mean   :43.92   Mean   :17.15  
    ##                                  3rd Qu.:48.50   3rd Qu.:18.70  
    ##                                  Max.   :59.60   Max.   :21.50  
    ##                                  NA's   :2       NA's   :2      
    ##  flipper_length_mm  body_mass_g       sex           year     
    ##  Min.   :172.0     Min.   :2700   female:165   Min.   :2007  
    ##  1st Qu.:190.0     1st Qu.:3550   male  :168   1st Qu.:2007  
    ##  Median :197.0     Median :4050   NA's  : 11   Median :2008  
    ##  Mean   :200.9     Mean   :4202                Mean   :2008  
    ##  3rd Qu.:213.0     3rd Qu.:4750                3rd Qu.:2009  
    ##  Max.   :231.0     Max.   :6300                Max.   :2009  
    ##  NA's   :2         NA's   :2

``` r
nrow(penguins)
```

    ## [1] 344

``` r
ncol(penguins)
```

    ## [1] 8

Next I’ll try out some of the other functions that are in the progdata
website.

``` r
head(penguins)
```

    ## # A tibble: 6 x 8
    ##   species island bill_length_mm bill_depth_mm flipper_length_~ body_mass_g sex  
    ##   <fct>   <fct>           <dbl>         <dbl>            <int>       <int> <fct>
    ## 1 Adelie  Torge~           39.1          18.7              181        3750 male 
    ## 2 Adelie  Torge~           39.5          17.4              186        3800 fema~
    ## 3 Adelie  Torge~           40.3          18                195        3250 fema~
    ## 4 Adelie  Torge~           NA            NA                 NA          NA <NA> 
    ## 5 Adelie  Torge~           36.7          19.3              193        3450 fema~
    ## 6 Adelie  Torge~           39.3          20.6              190        3650 male 
    ## # ... with 1 more variable: year <int>

``` r
tail(penguins)
```

    ## # A tibble: 6 x 8
    ##   species island bill_length_mm bill_depth_mm flipper_length_~ body_mass_g sex  
    ##   <fct>   <fct>           <dbl>         <dbl>            <int>       <int> <fct>
    ## 1 Chinst~ Dream            45.7          17                195        3650 fema~
    ## 2 Chinst~ Dream            55.8          19.8              207        4000 male 
    ## 3 Chinst~ Dream            43.5          18.1              202        3400 fema~
    ## 4 Chinst~ Dream            49.6          18.2              193        3775 male 
    ## 5 Chinst~ Dream            50.8          19                210        4100 male 
    ## 6 Chinst~ Dream            50.2          18.7              198        3775 fema~
    ## # ... with 1 more variable: year <int>

``` r
str(penguins)
```

    ## tibble [344 x 8] (S3: tbl_df/tbl/data.frame)
    ##  $ species          : Factor w/ 3 levels "Adelie","Chinstrap",..: 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ island           : Factor w/ 3 levels "Biscoe","Dream",..: 3 3 3 3 3 3 3 3 3 3 ...
    ##  $ bill_length_mm   : num [1:344] 39.1 39.5 40.3 NA 36.7 39.3 38.9 39.2 34.1 42 ...
    ##  $ bill_depth_mm    : num [1:344] 18.7 17.4 18 NA 19.3 20.6 17.8 19.6 18.1 20.2 ...
    ##  $ flipper_length_mm: int [1:344] 181 186 195 NA 193 190 181 195 193 190 ...
    ##  $ body_mass_g      : int [1:344] 3750 3800 3250 NA 3450 3650 3625 4675 3475 4250 ...
    ##  $ sex              : Factor w/ 2 levels "female","male": 2 1 1 NA 1 2 1 2 NA NA ...
    ##  $ year             : int [1:344] 2007 2007 2007 2007 2007 2007 2007 2007 2007 2007 ...

``` r
row.names(penguins)
```

    ##   [1] "1"   "2"   "3"   "4"   "5"   "6"   "7"   "8"   "9"   "10"  "11"  "12" 
    ##  [13] "13"  "14"  "15"  "16"  "17"  "18"  "19"  "20"  "21"  "22"  "23"  "24" 
    ##  [25] "25"  "26"  "27"  "28"  "29"  "30"  "31"  "32"  "33"  "34"  "35"  "36" 
    ##  [37] "37"  "38"  "39"  "40"  "41"  "42"  "43"  "44"  "45"  "46"  "47"  "48" 
    ##  [49] "49"  "50"  "51"  "52"  "53"  "54"  "55"  "56"  "57"  "58"  "59"  "60" 
    ##  [61] "61"  "62"  "63"  "64"  "65"  "66"  "67"  "68"  "69"  "70"  "71"  "72" 
    ##  [73] "73"  "74"  "75"  "76"  "77"  "78"  "79"  "80"  "81"  "82"  "83"  "84" 
    ##  [85] "85"  "86"  "87"  "88"  "89"  "90"  "91"  "92"  "93"  "94"  "95"  "96" 
    ##  [97] "97"  "98"  "99"  "100" "101" "102" "103" "104" "105" "106" "107" "108"
    ## [109] "109" "110" "111" "112" "113" "114" "115" "116" "117" "118" "119" "120"
    ## [121] "121" "122" "123" "124" "125" "126" "127" "128" "129" "130" "131" "132"
    ## [133] "133" "134" "135" "136" "137" "138" "139" "140" "141" "142" "143" "144"
    ## [145] "145" "146" "147" "148" "149" "150" "151" "152" "153" "154" "155" "156"
    ## [157] "157" "158" "159" "160" "161" "162" "163" "164" "165" "166" "167" "168"
    ## [169] "169" "170" "171" "172" "173" "174" "175" "176" "177" "178" "179" "180"
    ## [181] "181" "182" "183" "184" "185" "186" "187" "188" "189" "190" "191" "192"
    ## [193] "193" "194" "195" "196" "197" "198" "199" "200" "201" "202" "203" "204"
    ## [205] "205" "206" "207" "208" "209" "210" "211" "212" "213" "214" "215" "216"
    ## [217] "217" "218" "219" "220" "221" "222" "223" "224" "225" "226" "227" "228"
    ## [229] "229" "230" "231" "232" "233" "234" "235" "236" "237" "238" "239" "240"
    ## [241] "241" "242" "243" "244" "245" "246" "247" "248" "249" "250" "251" "252"
    ## [253] "253" "254" "255" "256" "257" "258" "259" "260" "261" "262" "263" "264"
    ## [265] "265" "266" "267" "268" "269" "270" "271" "272" "273" "274" "275" "276"
    ## [277] "277" "278" "279" "280" "281" "282" "283" "284" "285" "286" "287" "288"
    ## [289] "289" "290" "291" "292" "293" "294" "295" "296" "297" "298" "299" "300"
    ## [301] "301" "302" "303" "304" "305" "306" "307" "308" "309" "310" "311" "312"
    ## [313] "313" "314" "315" "316" "317" "318" "319" "320" "321" "322" "323" "324"
    ## [325] "325" "326" "327" "328" "329" "330" "331" "332" "333" "334" "335" "336"
    ## [337] "337" "338" "339" "340" "341" "342" "343" "344"

``` r
names(penguins)
```

    ## [1] "species"           "island"            "bill_length_mm"   
    ## [4] "bill_depth_mm"     "flipper_length_mm" "body_mass_g"      
    ## [7] "sex"               "year"
