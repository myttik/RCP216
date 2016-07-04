library(networkD3)

edges1 = read.table("edgesJ1.txt",header = T,sep="\t") #interaction ayant eu lieu le premier jour
edges2 = read.table("edgesJ2.txt",header = T,sep="\t") #interactions ayant eu lieu avant la fin du 2ème jour
edges3 = read.table("edgesJ3.txt",header = T,sep="\t")
edges4 = read.table("edgesJ4.txt",header = T,sep="\t")
edges5 = read.table("edgesJ5.txt",header = T,sep="\t")
edges6 = read.table("edgesJ6.txt",header = T,sep="\t")

test = read.table("edgesJ20.txt",header = T,sep="\t")
## on va tracer les graphe pour suivre l"volution de la dispersion de l'information (retweet) au cours des jours
## on se servira de cette bae pour dessiner des petits multiples
head(edges1)
dim(edges4)
simpleNetwork(test,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=20)
simpleNetwork(edges2,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=10, charge=-100)
simpleNetwork(edges3,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=-100)
simpleNetwork(head(edges4,150000),height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=-100)

## la puissance d emon ordinateur ne me permet de représenter les graphes suivants : 
##simpleNetwork(edges5,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=-100)
##simpleNetwork(edges1,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=20)



