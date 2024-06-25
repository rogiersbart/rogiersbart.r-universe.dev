df <- tibble::tribble(
  ~package, ~url, ~subdir,
  "RMODFLOW", "https://github.com/rogiersbart/RMODFLOW", NA,
  "ti", "https://github.com/rogiersbart/ti", NA
)
jsonlite::write_json(df, 'packages.json', pretty = TRUE)
