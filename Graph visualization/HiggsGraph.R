library(networkD3)

edges1 = read.table("edgesJ1.txt",header = T,sep="\t")
edges2 = read.table("edgesJ2.txt",header = T,sep="\t")
edges3 = read.table("edgesJ3.txt",header = T,sep="\t")
edges4 = read.table("edgesJ4.txt",header = T,sep="\t")
edges5 = read.table("edgesJ5.txt",header = T,sep="\t")
edges6 = read.table("edgesJ6.txt",header = T,sep="\t")


## on va tracer les graphe pour suivre l"volution de la dispersion de l'information (retweet) au cours des jours
## on se servira de cette bae pour dessiner des petits multiples
head(edges1)
dim(edges4)
simpleNetwork(edges1,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=20)

simpleNetwork(edges2,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=10, charge=-100)
simpleNetwork(edges3,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=-100)
simpleNetwork(head(edges4,150000),height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=-100)
simpleNetwork(edges5,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=-100)
simpleNetwork(edges1,height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=50, charge=20)




simpleNetwork(head(edges,5000),height = 700,width=1400,zoom=T,opacity=0.8, linkDistance=10,charge=200)

data(MisLinks)
data(MisNodes)
forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.4, zoom = TRUE)

forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Nodesize = "size",
             radiusCalculation = "Math.sqrt(d.nodesize)+6",
             Group = "group", opacity = 0.4, legend = TRUE)

forceNetwork(Links = MisJson$links, Nodes = MisJson$nodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.4)
URL <- paste0("https://cdn.rawgit.com/christophergandrud/networkD3/",
              "master/JSONdata/miserables.json")
MisJson <- jsonlite::fromJSON(URL)
library(curl)

forceNetwork(Links = MisJson$links, Nodes = MisJson$nodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.4)
forceNetwork(Links = MisJson$links, Nodes = MisJson$nodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.4, zoom = TRUE)
