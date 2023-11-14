
smpl <- function(x, size, replace = FALSE, prob = NULL){
  sample(x, size, replace, prob)
}

su <- function(x, decreasing = FALSE, incomparables = FALSE, ...){
  srt <- sort(x, decreasing, ...)
  unique(srt, incomparables, ...)
}

lu <- function(x, incomparables = FALSE, ...){
  unq <- unique(x, incomparables, ...)
  length(unq)
}

tbl <- function(...,
                exclude = if (useNA == "no") c(NA, NaN),
                useNA = c("no", "ifany", "always"),
                dnn = list.names(...), deparse.level = 1){
  table(...)
}

proptbl <- function(...,
                exclude = if (useNA == "no") c(NA, NaN),
                useNA = c("no", "ifany", "always"),
                dnn = list.names(...), deparse.level = 1, margin = NULL){
  prop.table(table(...))
}

