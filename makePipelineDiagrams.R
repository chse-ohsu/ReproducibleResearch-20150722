if (!require(DiagrammeR)) {install.packages("DiagrammeR", dependencies=TRUE, repos="http://cran.r-project.org/")}
library(DiagrammeR, quietly=TRUE)

# Create standard research pipeline
productLabels <-c("Observed\ndata",
                  "Transformed\ndata",
                  "Results",
                  "Summaries",
                  "Tables",
                  "Figures",
                  "Text",
                  "Manuscript")
scriptLabels <- c("Processing\nscripts",
                  "Analytic\nscripts")
productNodes <- create_nodes(nodes=letters[1:length(productLabels)],
                             label=productLabels,
                             style="filled",
                             fontcolor="white",
                             color=rgb(1, 67, 134, maxColorValue=255),
                             shape="box")
scriptNodes <- create_nodes(nodes=LETTERS[1:length(scriptLabels)],
                            label=scriptLabels,
                            style="filled",
                            fontcolor="black",
                            color=rgb(223, 122, 28, maxColorValue=255),
                            shape="ellipse")
productEdges <- create_edges(from=c("a", "b", "c", "c", "c", "d", "e", "f", "g"),
                             to  =c("b", "c", "d", "e", "f", "h", "h", "h", "h"))
scriptEdges <- create_edges(from=c("A", "B"),
                            to  =c("b", "c"))
nodes <- combine_nodes(productNodes, scriptNodes)
edges <- combine_edges(productEdges, scriptEdges)
G1 <- create_graph(nodes_df=nodes, 
                   edges_df=edges,
                   graph_name="Standard pipeline",
                   node_attrs="fontname=Helvetica", 
                   graph_attrs=c("layout=dot", "rankdir=LR"))

# Create almost reproducible research pipeline
productLabels <-c("Observed\ndata",
                  "Transformed\ndata",
                  "Results",
                  "Summaries",
                  "Tables",
                  "Figures",
                  "Text",
                  "Manuscript")
scriptLabels <- c("Processing\nscripts",
                  "Analytic\nscripts",
                  "Presentation\nscripts")
productNodes <- create_nodes(nodes=letters[1:length(productLabels)],
                             label=productLabels,
                             style="filled",
                             fontcolor="white",
                             color=rgb(1, 67, 134, maxColorValue=255),
                             shape="box")
scriptNodes <- create_nodes(nodes=LETTERS[1:length(scriptLabels)],
                            label=scriptLabels,
                            style="filled",
                            fontcolor="black",
                            color=rgb(223, 122, 28, maxColorValue=255),
                            shape="ellipse")
productEdges <- create_edges(from=c("a", "b", "c", "c", "c", "d", "e", "f", "g"),
                             to  =c("b", "c", "d", "e", "f", "h", "h", "h", "h"))
scriptEdges <- create_edges(from=c("A", "B", "C", "C", "C"),
                            to  =c("b", "c", "d", "e", "f"))
nodes <- combine_nodes(productNodes, scriptNodes)
edges <- combine_edges(productEdges, scriptEdges)
G2 <- create_graph(nodes_df=nodes, 
                   edges_df=edges,
                   graph_name="Almost reproducible pipeline",
                   node_attrs="fontname=Helvetica", 
                   graph_attrs=c("layout=dot", "rankdir=LR"))

# Create fully reproducible research pipeline
productLabels <-c("Observed\ndata",
                  "Transformed\ndata",
                  "Results",
                  "Summaries",
                  "Tables",
                  "Figures",
                  "Manuscript")
scriptLabels <- c("Processing\nscripts",
                  "Analytic\nscripts",
                  "Presentation\nscripts",
                  "Master\nscript")
productNodes <- create_nodes(nodes=letters[1:length(productLabels)],
                             label=productLabels,
                             style="filled",
                             fontcolor="white",
                             color=rgb(1, 67, 134, maxColorValue=255),
                             shape="box")
scriptNodes <- create_nodes(nodes=LETTERS[1:length(scriptLabels)],
                            label=scriptLabels,
                            style="filled",
                            fontcolor="black",
                            color=rgb(223, 122, 28, maxColorValue=255),
                            shape="ellipse")
productEdges <- create_edges(from=c("a", "b", "c", "c", "c"),
                             to  =c("b", "c", "d", "e", "f"))
scriptEdges <- create_edges(from=c("A", "B", "C", "C", "C", "D", "d", "e", "f", "D", "A", "B"),
                            to  =c("b", "c", "d", "e", "f", "g", "g", "g", "g", "A", "B", "C"))
nodes <- combine_nodes(productNodes, scriptNodes)
edges <- combine_edges(productEdges, scriptEdges)
G3 <- create_graph(nodes_df=nodes, 
                   edges_df=edges,
                   graph_name="Fully reproducible pipeline",
                   node_attrs="fontname=Helvetica", 
                   graph_attrs=c("layout=dot", "rankdir=LR"))

# Render diagrams
G <- create_series(series_type="sequential")
G <- add_to_series(G1, G)
G <- add_to_series(G2, G)
G <- add_to_series(G3, G)
graph_count(G)
series_info(G)
# render_graph_from_series(G, 1)
# render_graph_from_series(G, 2)
# render_graph_from_series(G, 3)
cat(render_graph_from_series(G, 1, output="SVG"), file="pipelineStandard.svg")
cat(render_graph_from_series(G, 2, output="SVG"), file="pipelineAlmostReproducible.svg")
cat(render_graph_from_series(G, 3, output="SVG"), file="pipelineFullyReproducible.svg")
