gh <- \(x) paste0("https://github.com/", x)
rb <- \(x) paste0("rogiersbart/", x) |> gh()
df <- tibble::tribble(
         ~package, ~url, ~branch, ~subdir,

  # personal
            "bro",                  rb("bro"),                   NA, NA,

  # infrastructure
            "std",                  rb("std"),                   NA, NA,
            "rui",                  rb("rui"),                   NA, NA,
             "ra",                   rb("ra"),                   NA, NA,
             "ti",                   rb("ti"),                   NA, NA,
  "spectralscale",        rb("spectralscale"),                   NA, NA,

  # hydro
       "RMODFLOW",             rb("RMODFLOW"),                   NA, NA,
        "RMT3DMS",              rb("RMT3DMS"),                   NA, NA,
       "RMODPATH",     gh("cneyens/RMODPATH"),                   NA, NA,

  # microstructure
          "nmhsa",                rb("nmhsa"),                   NA, NA,
     "morphology",           rb("morphology"),                   NA, NA,

  # non-cran dependencies
       "cmdstanr",    gh("stan-dev/cmdstanr"),                   NA, NA,
        "raylibr",              rb("raylibr"), "prefix-class-names", NA,
    "RDCOMClient", gh("omegahat/RDCOMClient"),                   NA, NA,
       "rsthemes",   gh("gadenbuie/rsthemes"),                   NA, NA,
      "wateRinfo",   gh("ropensci/wateRinfo"),                   NA, NA,
)
jsonlite::write_json(df, 'packages.json', pretty = TRUE)
