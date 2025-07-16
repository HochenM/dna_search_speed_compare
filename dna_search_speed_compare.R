nuclotide = c("A", "T", "C", "G")
DNA = sample(nuclotide, 100000, replace = TRUE)

myf1 = function(x){
  if(class(x) != "character") stop("Input must be character")
  indx = c()
  for(i in 1:length(x)){
    if(x[i] == "A") indx = c(indx, i)
  }
  return(indx)
}

myf2 = function(x){
  if(class(x) != "character") stop("Input must be character")
  return(which(x == "A"))
}

myf3 = function(x){
  if(class(x) != "character") stop("Input must be character")
  return(x[x == "A"])
}

system.time(myf1(DNA))
system.time(myf2(DNA))
system.time(myf3(DNA))
