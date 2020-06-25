# docker-metaphlan2 2.7.8


<a href="https://github.com/biobakery/MetaPhlAn">MetaPhlAn</a> docker image based on <a href="https://hub.docker.com/u/conda"><img src="https://secure.gravatar.com/avatar/f3257938262658419b4d2c95011b2e2e.jpg" alt="Conda" height="48px"/> Miniconda3</a>

MetaPhlAn 2: Metagenomic Phylogenetic Analysis
---
MetaPhlAn is a computational tool for profiling the composition of microbial communities (Bacteria, Archaea, Eukaryotes and Viruses) from metagenomic shotgun sequencing data (i.e. not 16S) with species-level. With the newly added StrainPhlAn module, it is now possible to perform accurate strain-level microbial profiling.

## Base Image
 * [Conda](https://hub.docker.com/u/conda) conda/miniconda2-centos7
  
## Installed
 * MetaPhlAn (2.7.8)

## Settings
	
    VOLUME /data/
    WORKDIR /data/

## Running

    docker run -it -v $(pwd):/data infotechsoft/metaphlan2 bash
    # metaphlan2.py metagenome.fastq --input_type fastq > profiled_metagenome.txt

# Maintainer 
<a href="http://www.infotechsoft.com">
<img src="http://infotechsoft.com/wp-content/uploads/2017/04/InfotechSoft_logo-small.png" alt="INFOTECH Soft"/>
</a>
