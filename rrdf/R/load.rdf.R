load.rdf <- function(f, format="RDF/XML") {
    .jcall(
        "com.hp.hpl.jena.rdf.model.ModelFactory",
        "Lcom/hp/hpl/jena/ontology/OntModel;",
        "createOntologyModel"
    )


}

merge.rdf <- function(model1, model2) {
    if (attr(model2, "jclass") != "Lcom/hp/hpl/jena/rdf/model/Model") {
        model2 <- .jcast(model2, "com/hp/hpl/jena/rdf/model/Model")
    }

    .jcall(
        model1, "Lcom/hp/hpl/jena/rdf/model/Model;", 
        "add", model2
    )
}