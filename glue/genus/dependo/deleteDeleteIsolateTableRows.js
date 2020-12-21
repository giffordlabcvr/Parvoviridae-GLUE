
// Delete custom-table table rows for dependo genus extension sequences
 var resultList = glue.tableToObjects(glue.command(["list", "sequence", "sequenceID", "source.name", "-w", "source.name = 'ncbi-refseqs-dependo'"]));	
 	 
 _.each(resultList,function(resultObj) {

	var sequenceID = resultObj["sequenceID"];
	glue.log("INFO", "Deleting isolate data table for:", sequenceID);
	glue.command(["delete", "custom-table-row", "isolate_data", sequenceID]);				

});

