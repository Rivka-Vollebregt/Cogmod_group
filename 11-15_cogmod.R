### 11

# Monkey RDM
NeuroRDM <- read.table("NeuroRDM")
neuro = melt(NeuroRDM)

# Average neural RDM
meanparticipants

# Correlation monkey vs avg participant
cor_test = cor.test(neuro$value, meanparticipants$value, method = c("pearson"))
(cor_test)

# Process data 
meanparticipants = melt(NeuroRDM)
neuro_RDM_processed <- data.frame(matrix(ncol=92, nrow=92))


#### Code Saul
# Cor test
neuroTable <- read.table('NeuroRDM', header = FALSE)
fmriData <- avg_part#as.data.frame(1 - cor(t(avg_part), method = c("pearson")))

tempNeuro <- c()
tempFMRI <- c()

for (x in 1:92)
{
  y <- x + 1
  for (z in y:91)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}

cor.test(tempNeuro, tempFMRI, method = c('pearson'))

#12
plot(tempNeuro, tempFMRI)

# Only animate
tempNeuro <- c()
tempFMRI <- c()

for (x in 1:49)
{
  y <- x + 1
  for (z in y:48)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}
plot(tempNeuro, tempFMRI)
cor.test(tempNeuro, tempFMRI, method = c('pearson'))

# Only inanimate
tempNeuro <- c()
tempFMRI <- c()

for (x in 48:91)
{
  y <- x + 1
  for (z in y:92)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}
plot(tempNeuro, tempFMRI)
cor.test(tempNeuro, tempFMRI, method = c('pearson'))

#14
BehaviourRDM <- read.table("BehaviourRDM")
melted_behaviorRDM <- melt(as.matrix(BehaviourRDM))

# heatmap neural data
plot1 <- ggplot(melted_behaviorRDM, aes(x = X1,y=X2,
                                 fill = value))+ geom_tile()+ scale_fill_distiller(palette = "Spectral")+ ggtitle("RDM original data")+ labs(fill = "Dissimilarity")
plot(plot1)

# ALL avg part
neuroTable <- BehaviourRDM
fmriData <- avg_part

tempNeuro <- c()
tempFMRI <- c()

for (x in 1:92)
{
  y <- x + 1
  for (z in y:91)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}

cor.test(tempNeuro, tempFMRI, method = c('pearson'))

# Inanimate
tempNeuro <- c()
tempFMRI <- c()

for (x in 49:91)
{
  y <- x + 1
  for (z in y:92)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}
plot(tempNeuro, tempFMRI)
cor.test(tempNeuro, tempFMRI, method = c('pearson'))

# Animate
tempNeuro <- c()
tempFMRI <- c()

for (x in 1:48)
{
  y <- x + 1
  for (z in y:47)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}
plot(tempNeuro, tempFMRI)
cor.test(tempNeuro, tempFMRI, method = c('pearson'))

#15
HmaxRDM <- read.table('HmaxRDM', header = FALSE)
melted_HmaxRDM <- melt(as.matrix(HmaxRDM))

# heatmap neural data
plot1 <- ggplot(melted_HmaxRDM, aes(x = X1,y=X2,
                                        fill = value))+ geom_tile()+ scale_fill_distiller(palette = "Spectral")+ ggtitle("RDM original data")+ labs(fill = "Dissimilarity")
plot(plot1)


# ALL avg part
neuroTable <- HmaxRDM
fmriData <- avg_part

tempNeuro <- c()
tempFMRI <- c()

for (x in 1:92)
{
  y <- x + 1
  for (z in y:91)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}

cor.test(tempNeuro, tempFMRI, method = c('pearson'))

# Inanimate
tempNeuro <- c()
tempFMRI <- c()

for (x in 49:91)
{
  y <- x + 1
  for (z in y:92)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}
plot(tempNeuro, tempFMRI)
cor.test(tempNeuro, tempFMRI, method = c('pearson'))

# Animate
tempNeuro <- c()
tempFMRI <- c()

for (x in 1:48)
{
  y <- x + 1
  for (z in y:47)
  {
    tempNeuro <- c(tempNeuro, neuroTable[x,z])
    tempFMRI <- c(tempFMRI, fmriData[x,z])
  }
}
plot(tempNeuro, tempFMRI)
cor.test(tempNeuro, tempFMRI, method = c('pearson'))
