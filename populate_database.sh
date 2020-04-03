set -e
set -u
# Copy the commented files to your local machine where you cloned molgenis-app-genenetwork in a separate data/ directory, then run this code
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-23-goa_human_C.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_C.predictions.AUC.bonSigTerms_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_C.predictions.AUC.bonferonni_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_C.predictions.bonSigOnly.txt
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-23-goa_human_C.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/11_ImportToWebsite/*
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-23-goa_human_F.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_F.predictions.AUC.bonSigTerms_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_F.predictions.AUC.bonferonni_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_F.predictions.bonSigOnly.txt
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-23-goa_human_F.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/11_ImportToWebsite/*
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-23-goa_human_P.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_P.predictions.AUC.bonSigTerms_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_P.predictions.AUC.bonferonni_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-23-goa_human_P.predictions.bonSigOnly.txt
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-23-goa_human_P.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/11_ImportToWebsite/*
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-28-c2.cp.kegg.v7.0.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-28-c2.cp.kegg.v7.0.predictions.AUC.bonSigTerms_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-28-c2.cp.kegg.v7.0.predictions.AUC.bonferonni_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-28-c2.cp.kegg.v7.0.predictions.bonSigOnly.txt
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-28-c2.cp.kegg.v7.0.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/11_ImportToWebsite/*
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/11_ImportToWebsite/*
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-28-HPO-phenotype-to-genes.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-28-HPO-phenotype-to-genes.predictions.AUC.bonSigTerms_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-28-HPO-phenotype-to-genes.predictions.AUC.bonferonni_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/10_GeneNetwork_predictions/2020-03-28-HPO-phenotype-to-genes.predictions.bonSigOnly.txt
# /groups/umcg-biogen/tmp03/tools/brain_eQTL//GeneNetwork/GeneNetworkBackend/PathwayMatrix/2020-03-28-HPO-phenotype-to-genes.matrix_gnInputFormat.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/11_ImportToWebsite/*
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/list_of_genes.txt
# /groups/umcg-biogen/tmp03/output/2019-11-06-FreezeTwoDotOne/2020-02-28-MetaBrainNetwork//output/7_evd_on_correlation_matrix/MetaBrain.eigenvectors.70_eigenvectors.txt.gz
### 2020-03-23-goa_human_C ###
#sudo bash data_scripts/populate_geneset.sh \
#  -d /srv/metabrainnetwork/data/ \
#  -g data/list_of_genes.txt \
#  -b 2020-03-23-goa_human_C \
#  -t data/2020-03-23-goa_human_C.predictions.AUC.bonSigTerms_gnInputFormat.txt \
#  -i data/2020-03-23-goa_human_C.matrix_gnInputFormat.txt \
#  -z data/2020-03-23-goa_human_C.predictions.bonSigOnly.txt \
#  -a data/2020-03-23-goa_human_C.predictions.AUC.bonferonni_gnInputFormat.txt
### 2020-03-23-goa_human_F ###
sudo bash data_scripts/populate_geneset.sh \
  -d /srv/metabrainnetwork/data/ \
  -g data/list_of_genes.txt \
  -b 2020-03-23-goa_human_F \
  -t data/2020-03-23-goa_human_F.predictions.AUC.bonSigTerms_gnInputFormat.txt \
  -i data/2020-03-23-goa_human_F.matrix_gnInputFormat.txt \
  -z data/2020-03-23-goa_human_F.predictions.bonSigOnly.txt \
  -a data/2020-03-23-goa_human_F.predictions.AUC.bonferonni_gnInputFormat.txt 
### 2020-03-23-goa_human_P ###
sudo bash data_scripts/populate_geneset.sh \
  -d /srv/metabrainnetwork/data/ \
  -g data/list_of_genes.txt \
  -b 2020-03-23-goa_human_P \
  -t data/2020-03-23-goa_human_P.predictions.AUC.bonSigTerms_gnInputFormat.txt \
  -i data/2020-03-23-goa_human_P.matrix_gnInputFormat.txt \
  -z data/2020-03-23-goa_human_P.predictions.bonSigOnly.txt \
  -a data/2020-03-23-goa_human_P.predictions.AUC.bonferonni_gnInputFormat.txt
### 2020-03-28-c2.cp.kegg.v7.0 ###
sudo bash data_scripts/populate_geneset.sh \
  -d /srv/metabrainnetwork/data/ \
  -g data/list_of_genes.txt \
  -b 2020-03-28-c2.cp.kegg.v7.0 \
  -t data/2020-03-28-c2.cp.kegg.v7.0.predictions.AUC.bonSigTerms_gnInputFormat.txt \
  -i data/2020-03-28-c2.cp.kegg.v7.0.matrix_gnInputFormat.txt \
  -z data/2020-03-28-c2.cp.kegg.v7.0.predictions.bonSigOnly.txt \
  -a data/2020-03-28-c2.cp.kegg.v7.0.predictions.AUC.bonferonni_gnInputFormat.txt

sudo bash data_scripts/populate_geneset.sh \
  -d /srv/metabrainnetwork/data/ \
  -g data/list_of_genes.txt \
  -b 2020-03-28-Ensembl2Reactome_All_Levels \
  -t data/2020-03-28-Ensembl2Reactome_All_Levels.predictions.AUC.bonSigTerms_gnInputFormat.txt \
  -i data/2020-03-28-Ensembl2Reactome_All_Levels.matrix_gnInputFormat.txt \
  -z data/2020-03-28-Ensembl2Reactome_All_Levels.predictions.bonSigOnly.txt \
  -a data/2020-03-28-Ensembl2Reactome_All_Levels.predictions.AUC.bonferonni_gnInputFormat.txt

### 2020-03-28-HPO-phenotype-to-genes ###
sudo bash data_scripts/populate_geneset.sh \
  -d /srv/metabrainnetwork/data/ \
  -g data/list_of_genes.txt \
  -b 2020-03-28-HPO-phenotype-to-genes \
  -t data/2020-03-28-HPO-phenotype-to-genes.predictions.AUC.bonSigTerms_gnInputFormat.txt \
  -i data/2020-03-28-HPO-phenotype-to-genes.matrix_gnInputFormat.txt \
  -z data/2020-03-28-HPO-phenotype-to-genes.predictions.bonSigOnly.txt \
  -a data/2020-03-28-HPO-phenotype-to-genes.predictions.AUC.bonferonni_gnInputFormat.txt
