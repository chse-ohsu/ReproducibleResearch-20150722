# Install devtools if needed
if (!require(devtools)) {install.packages("devtools", dependencies=TRUE, repos=repos)}
find_rtools()
require(devtools)
# Turn on dev mode
dev_mode(on=TRUE)
# Install the dev version of DiagrammeR
devtools::install_github('rich-iannone/DiagrammeR')
require(DiagrammeR, quietly=TRUE)

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
G <- create_graph(nodes_df=nodes, 
                  edges_df=edges,
                  node_attrs="fontname=Helvetica", 
                  graph_attrs=c("layout=dot", "rankdir=LR"))
cat(render_graph(G, output="SVG"),
    file="pipelineStandard.svg")

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
G <- create_graph(nodes_df=nodes, 
                  edges_df=edges,
                  node_attrs="fontname=Helvetica", 
                  graph_attrs=c("layout=dot", "rankdir=LR"))
cat(render_graph(G, output="SVG"),
    file="pipelineAlmostReproducible.svg")

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
scriptEdges <- create_edges(from=c("A", "B", "C", "C", "C", "D", "d", "e", "f"),
                            to  =c("b", "c", "d", "e", "f", "g", "g", "g", "g"))
nodes <- combine_nodes(productNodes, scriptNodes)
edges <- combine_edges(productEdges, scriptEdges)
G <- create_graph(nodes_df=nodes, 
                  edges_df=edges,
                  node_attrs="fontname=Helvetica", 
                  graph_attrs=c("layout=dot", "rankdir=LR"))
G <- add_edges(G,
               from=c("D", "A", "B"),
               to  =c("A", "B", "C"))
# render_graph(G)
cat(render_graph(G, output="SVG"),
    file="pipelineFullyReproducible.svg")

# Turn off dev mode
dev_mode(on=FALSE)
