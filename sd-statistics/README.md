Some simple statistics over the Minimum Viable Federated Catalogue provided for the [Gaia-X Hackathon #2](https://www.gaia-x.eu/news/events/gaia-x-hackathon-2).

The purpose of this exercise, which shall be applied to further decentral catalogues in the future, is to find out what attributes the creators of Self-Descriptions are using “in the wild”, such that we know how to evolve the basic level of standardization (“mandatory attributes”) that we so far have in the [Gaia-X Architecture Document](https://www.gaia-x.eu/sites/default/files/2021-10/Gaia-X_Architecture_Document_2109.pdf) and the corresponding Core Ontology and Self-Description Schemas published at https://w3id.org/gaia-x/core.

This work is done in the scope of the extended specification of Self-Description Schemas and related tools within the [Gaia-X Federation Services](https://www.gxfs.de/) effort.

* [`Makefile`](Makefile): running all tasks automatically
* [`get-sds-from-catalogue`](get-sds-from-catalogue): runs a query against the catalogue API to retrieve the full catalogue metadata
* [`all.json`](all.json): output of the former script
* [`extract-entities.jq`](extract-entities.jq): extracts just the entity self-descriptions from the former JSON document
* [`entities.json`](entities.json): the extracted entity self-descriptions
* [`flatten-nested.jq`](flatten-nested.jq): flattens nested JSON structures
* [`flat-entities.json`](flat-entities.json): the entity self-descriptions with flattened key paths
* [`count-frequency.jq`](count-frequency.jq): counts the frequency of keys in objects
* [`stats.json`](stats.json): the final output
