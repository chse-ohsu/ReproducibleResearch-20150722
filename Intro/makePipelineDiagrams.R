if (!require(DiagrammeR)) {install.packages("DiagrammeR", dependencies=TRUE, repos="http://cran.r-project.org/")}
library(DiagrammeR, quietly=TRUE)

# Create research pipeline graph
productLabels0 <-c("Observed\ndata",
                   "Transformed\ndata",
                   "Results",
                   "Tables",
                   "Figures",
                   "Manuscript")
scriptLabels0 <-  c("Processing\nscripts",
                   "Analytic\nscripts",
                   "Presentation\nscripts")
productNodes0 <- create_nodes(nodes=letters[1:length(productLabels0)],
                              label=productLabels0,
                              style="filled",
                              fontcolor="white",
                              color=rgb(1, 67, 134, maxColorValue=255),
                              shape="box")
scriptNodes0 <- create_nodes(nodes=LETTERS[1:length(scriptLabels0)],
                             label=scriptLabels0,
                             style="filled",
                             fontcolor="black",
                             color=rgb(223, 122, 28, maxColorValue=255),
                             shape="ellipse")
productEdges0 <- create_edges(from=c("a", "b", "c", "c", "d", "e"),
                              to  =c("b", "c", "d", "e", "f", "f"),
                              color="black")
scriptEdges0 <- create_edges(from=c("A", "B", "C", "C", "A", "B"),
                             to  =c("b", "c", "d", "e", "B", "C"),
                             color="black")

productNodes1 <- create_nodes(nodes=letters[length(productLabels0) + 1],
                              label="Text",
                              style="filled",
                              fontcolor="white",
                              color=rgb(1, 67, 134, maxColorValue=255),
                              shape="box")
scriptNodes1 <- create_nodes(nodes=LETTERS[length(scriptLabels0) + 1],
                             label="Master\nscript",
                             style="filled",
                             fontcolor="white",
                             color="white",
                             shape="ellipse")
productEdges1 <- create_edges(from=c("g"),
                              to  =c("f"),
                              color="black")
scriptEdges1 <- create_edges(from=c("D", "D"),
                             to  =c("A", "f"),
                             color="white")

productNodes2 <- create_nodes(nodes=letters[length(productLabels0) + 1],
                              label="Text",
                              style="filled",
                              fontcolor="white",
                              color="white",
                              shape="box")
scriptNodes2 <- create_nodes(nodes=LETTERS[length(scriptLabels0) + 1],
                             label="Master\nscript",
                             style="filled",
                             fontcolor="black",
                             color=rgb(223, 122, 28, maxColorValue=255),
                             shape="ellipse")
productEdges2 <- create_edges(from=c("g"),
                              to  =c("f"),
                              color="white")
scriptEdges2 <- create_edges(from=c("D", "D"),
                             to  =c("A", "f"),
                             color="black")

G1 <- create_graph(nodes_df=combine_nodes(productNodes1, scriptNodes1, productNodes0, scriptNodes0), 
                   edges_df=combine_edges(productEdges1, scriptEdges1, productEdges0, scriptEdges0),
                   node_attrs="fontname=Helvetica", 
                   graph_attrs=c("layout=dot", "rankdir=LR"))
# render_graph(G1)

G2 <- create_graph(nodes_df=combine_nodes(productNodes2, scriptNodes2, productNodes0, scriptNodes0), 
                   edges_df=combine_edges(productEdges2, scriptEdges2, productEdges0, scriptEdges0),
                   node_attrs="fontname=Helvetica", 
                   graph_attrs=c("layout=dot", "rankdir=LR"))
# render_graph(G2)

cat(render_graph(G1, output="SVG"), file="pipelineAlmostReproducible.svg")
cat(render_graph(G2, output="SVG"), file="pipelineFullyReproducible.svg")
