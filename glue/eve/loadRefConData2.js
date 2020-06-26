// Load EVE data from tab file 
var loadResult;
glue.inMode("module/parvoviridaeTabularUtility", function() {
	loadResult = glue.tableToObjects(glue.command(["load-tabular", "tabular/eve/epv-refseqs-side-data.tsv"]));
	// glue.log("INFO", "load result was:", loadResult);
});

_.each(loadResult, function(eveObj) {

	glue.inMode("custom-table-row/refcon_data/"+eveObj.id, function() {
	
		// glue.log("INFO", "Processing sequence:", eveObj.id);


		glue.command(["set", "field", "locus_numeric_id", eveObj.locus_numeric_id]);
		glue.command(["set", "field", "reftype", eveObj.seq_type]);
		glue.command(["set", "field", "host_group_taxlevel", eveObj.host_group_taxlevel]);
		glue.command(["set", "field", "host_group_name", eveObj.host_group_name]);

	});
	
	glue.inMode("sequence/fasta-refseqs-epv/"+eveObj.sequenceID, function() {
	
		glue.log("INFO", "Entering sequence table data for EVE reference:", eveObj.sequenceID);

		glue.command(["set", "field", "name", eveObj.insertion_name]);
		glue.command(["set", "field", "full_name", eveObj.insertion_full_name]);

	});

});


	