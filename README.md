# nf-training

Training material for [workflows-nextflow](https://kerimoff.github.io/workflows-nextflow/01-getting-started-with-nextflow/index.html)


# Environment preparation guidelines with conda
Please make sure that you have a functioning conda environment before the environment creation:

First clone this repo and go inside the cloned directory:
```
git clone https://github.com/kerimoff/nf-training.git
cd nf-training
```

Then, build a conda environment
```
conda env create -f environment.yml
```

When/if the environment is build successfully activate it
```
conda activate nf-train
``` 

Checking if the software in created conda environment is functioning properly (the lines starting with # is the description of the expected output) :
```bash
java --version
# openjdk 11.0.9.1-internal 2020-11-04
# OpenJDK Runtime Environment (build 11.0.9.1-internal+0-adhoc..src)
# OpenJDK 64-Bit Server VM (build 11.0.9.1-internal+0-adhoc..src, mixed mode)
```

```bash
nextflow -version
#
#      N E X T F L O W
#      version 21.10.0 build 5640
#      created 11-11-2021 18:27 UTC (20:27 EEST)
#      cite doi:10.1038/nbt.3820
#      http://nextflow.io
# 
```


```bash
fastqc -version
# FastQC v0.11.5 
```


```bash
salmon --version
# salmon 1.5.2
```

### Depending on your OS the versions shown above can be slightly different. 
