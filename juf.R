# juf.R
# Jimi's Utility Functions...


shorten.names = function(n, sep="[_.]"){
  # remove redundancy from a bunch of names (which must have the same format!)
  splt = as.data.frame(strsplit(n, "[._]"))
  u = apply(splt,1,unique)
  i = which(lapply(u,length) > 1)
  newn = as.vector(unlist(lapply(splt[i,], paste, collapse="_")))
  return(paste("n", newn, sep = ""))
}


