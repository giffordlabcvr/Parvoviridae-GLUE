Begin SCREENDB;
	db_name=eve_1_parvoviridae;
	mysql_server=localhost;
ENDBLOCK;

BEGIN SCREENSETS;
	query_aa_fasta=/home2/giff01r/DIGS/projects/eve/final_fasta/parvo-probes.faa;
	reference_aa_fasta=/home2/giff01r/DIGS/projects/eve/final_fasta/parvo-refs.faa;

	output_path=./tmp/;
	bitscore_min_tblastn=60;
	seq_length_minimum=40;
	defragment_range=10;
	consolidate_range=3000;
	blast_threads=8;
ENDBLOCK;

BEGIN TARGETS;
	Agnatha/
	Actinopterygii/
	Sarcopterygii/
	Chondrichthyes/
	Amphibia/
	Squamata/
	Crocodilia/
	Aves/
	Mammalia/
ENDBLOCK;


BEGIN EXCLUDE;
	Mammalia/Ailuropoda_melanoleuca/complete/ensembl_79_ailMel1/
	Mammalia/Bos_taurus/complete/ensembl_79_UMD3.1/
	Mammalia/Callithrix_jacchus/complete/ensembl_79_C_jacchus3.2.1/
	Mammalia/Cavia_porcellus/complete/ensembl_79_cavPor3/
	Mammalia/Choloepus_hoffmanni/complete/ensembl_79_choHof1/
	Mammalia/Canis_familiaris/complete/ensembl_79_CanFam3.1/
	Mammalia/Dasypus_novemcinctus/complete/ensembl_79_Dasnov3.0/
	Mammalia/Felis_catus/complete/ensembl_79_Felis_catus_6.2/
	Mammalia/Mus_musculus/complete/ensembl_79_GRCm38/
	Mammalia/Mus_musculus/complete/goldenpath_mm10/
	Mammalia/Mus_musculus/low_coverage/129S1_SvImJ/
	Mammalia/Mus_musculus/low_coverage/A_J/
	Mammalia/Mus_musculus/low_coverage/BALB_cJ/
	Mammalia/Mus_musculus/low_coverage/C3H_HeJ/
	Mammalia/Mus_musculus/low_coverage/CBA_J/
	Mammalia/Mus_musculus/low_coverage/DBA_2J/
	Mammalia/Mus_musculus/low_coverage/FVB_NJ/
	Mammalia/Mus_musculus/low_coverage/LP_J/
	Mammalia/Mus_musculus/low_coverage/NOD_ShiLtJ/
	Mammalia/Mus_musculus/low_coverage/NZO_HlLtJ/
	Mammalia/Callithrix_jacchus/complete/ensembl_79_C_jacchus3.2.1/
	Mammalia/Chlorocebus_sabaeus/complete/ensembl_79_ChlSab1.1/
	Mammalia/Bos_taurus/complete/ensembl_79_UMD3.1/
	Mammalia/Choloepus_hoffmanni/complete/ensembl_79_choHof1/
	Mammalia/Ornithorhynchus_anatinus/complete/ensembl_79_OANA5/
	Mammalia/Rattus_norvegicus/complete/ensembl_79_Rnor_5.0/
	Mammalia/Pongo_abelii/complete/ensembl_79_PPYG2/
	Mammalia/Equus_caballus_fjrod/complete/Henan_EquCab2_17Aug/
	Mammalia/Equus_caballus_arabian/complete/Henan_EquCab2_Jun15/
	Mammalia/Equus_caballus_arabian/complete/Equus_caballus_Icelandic/
	Mammalia/Equus_caballus_arabian/complete/Equus_caballus_connemara/
	Mammalia/Equus_caballus_arabian/complete/Equus_caballus_standardbred/
	Mammalia/Equus_caballus_arabian/complete/Equus_ferus_thistlecreek/
	Mammalia/Gorilla_gorilla/complete/ensembl_79_gorGor3.1/
	Mammalia/Homo_sapiens/complete/goldenpath_hg38_chromosome/
	Mammalia/Homo_sapiens/complete/goldenpath_hg38/
	Mammalia/Homo_sapiens/complete/ensembl_79_GRCh38/
	Mammalia/Ictidomys_tridecemlineatus/complete/ensembl_79_spetri2/
	Mammalia/Loxodonta_africana/complete/ensembl_79_loxAfr3/
	Mammalia/Macropus_eugenii/complete/ensembl_79_Meug_1.0/
	Mammalia/Macaca_mulatta/complete/ensembl_79_MMUL_1/
	Mammalia/Microcebus_murinus/complete/ensembl_79_micMur1/
	Mammalia/Monodelphis_domestica/complete/ensembl_79_BROADO5/
	Mammalia/Myotis_lucifugus/complete/ensembl_79_Myoluc2.0/
	Mammalia/Sus_scrofa/complete/ensembl_79_Sscrofa10.2/
	Mammalia/Monodelphis_domestica/complete/ensembl_79_BROADO5/
	Mammalia/Equus_caballus/complete/ensembl_79_EquCab2/
	Mammalia/Mus_musculus/complete/ensembl_79_GRCm38/
	Mammalia/Mus_musculus/complete/goldenpath_mm10/
	Mammalia/Mustela_putorius_furo/complete/ensembl_79_MusPutFur1.0/
	Mammalia/Nomascus_leucogenys/complete/ensembl_79_Nleu1.0/
	Mammalia/Ochotona_princeps/complete/ensembl_79_pika/
	Mammalia/Oryctolagus_cuniculus/complete/ensembl_79_OryCun2.0/
	Mammalia/Otolemur_garnettii/complete/ensembl_79_OtoGar3/
	Mammalia/Ovis_aires/complete/ensembl_79_Oar_v3.1/
	Mammalia/Pan_troglodytes/complete/ensembl_79_CHIMP2.1.4/
	Mammalia/Papio_anubis/complete/ensembl_79_PapAnu2.0/
	Mammalia/Procavia_capensis/complete/ensembl_79_proCap1/
	Mammalia/Pteropus_vampyrus/complete/ensembl_79_pteVam1/
	Mammalia/Rattus_norvegicus/complete/ensembl_79_Rnor_5.0/
	Mammalia/Sarcophilus_harrisii/complete/ensembl_79_DEVIL7.0
	Mammalia/Sus_scrofa/complete/ensembl_79_Sscrofa10.2/
	Mammalia/Sorex_araneus/complete/ensembl_79_COMMON_SHREW1/
	Mammalia/Echinops_telfairi/complete/ensembl_79_TENREC/
	Mammalia/Tarsius_syrichta/complete/ensembl_tarSyr1/
	Mammalia/Tursiops_truncatus/complete/ensembl_79_turTru1/
	Mammalia/Tupaia_belangeri/complete/ensembl_79_TREESHREW/
	Mammalia/Vicugna_pacos/complete/ensembl_79_vicPac1/
	Aves/Gallus_gallus/complete/ensembl_Galgal4/
ENDBLOCK;

BEGIN SKIPINDEX;
	Plants/Pinus_lambertiana/
	Plants/Triticum_aestivum/
	Mammalia/Chrysochloris_asiatica/
	Mammalia/Ochotona_princeps/
	Mammalia/Orycteropus_afer/
	Arthropoda/Parhyale_hawaiensis/
	Arthropoda/Locusta_migratoria/
ENDBLOCK;


