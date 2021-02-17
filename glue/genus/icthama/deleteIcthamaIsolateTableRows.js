
// Delete custom-table table rows for icthama genus extension sequences
 var resultList = glue.tableToObjects(glue.command(["list", "sequence", "sequenceID", "source.name", "-w", "source.name = 'ncbi-refseqs-icthama'"]));	
 	 
 _.each(resultList,function(resultObj) {

	var sequenceID = resultObj["sequenceID"];
	glue.log("INFO", "Deleting isolate data table for:", sequenceID);
	glue.command(["delete", "custom-table-row", "isolate_data", sequenceID]);				

});

