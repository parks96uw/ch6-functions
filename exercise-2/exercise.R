# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  lengthA <- length(a)
  lengthB <- length(b)
  length <-  lengthA - lengthB
  return(paste("The difference in lengths is", length))
}

# Pass two vectors of different length to your `CompareLength` function
length <- CompareLength(c(1, 2, 3), c(2))


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  lengthA <- length(a)
  lengthB <- length(b)
  if(lengthA > lengthB) {
    return(paste("Your first vector is longer by", lengthA - lengthB))
  } else {
    return(paste("Your second vector is longer by", lengthB - lengthA))
  }
}

# Pass two vectors to your `DescribeDifference` function
difference <- DescribeDifference(c(1, 2, 3), c(2))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference2 <- function(a, b) {
  lengthA <- length(a)
  lengthB <- length(b)
  if(lengthA > lengthB) {
    return(cat(a, "is longer."))
  } else {
    return(cat(b, "is longer."))
  }
}
difference2 <- DescribeDifference2(c(1, 2, 3), c(2))