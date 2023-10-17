# `yens-gpu-demo`: finBERT Training on Yen's GPU Node

This repository contains the code and scripts required to train a BERT model for sentiment analysis on financial news using GSB <a href="https://rcpedia.stanford.edu/topicGuides/yenGPU.html" target="_blank">Yen's GPU node</a> at Stanford. The BERT model is trained on a <a href="https://www.kaggle.com/datasets/ankurzing/sentiment-analysis-for-financial-news/" target="_blank">Kaggle dataset</a> of financial phrase bank. The project utilizes the `transformers` library along with `PyTorch Lightning` for streamlined model training and evaluation.

Please refer to <a href="https://rcpedia.stanford.edu/topicGuides/finBERT.html" target="_blank">this RCpedia</a> Topic Guide for details.

## Table of Contents

- [Getting Started](#getting-started)
- [Repository Structure](#repository-structure)
- [Training Script Details](#training-script-details)
- [Usage](#usage)
- [Monitoring Training](#monitoring-training)
- [Output](#output)
- [Authors](#authors)

## Getting Started

Clone the repository to the Yens to run the example trainig script. 

```bash
$ git clone https://github.com/gsbdarc/yens-gpu-demo.git 
$ cd yens-gpu-demo
```

## Repository Structure
- `Sentences_AllAgree.txt`: dataset of 2,264 financial news headlines labeled with a sentiment (<a href="https://arxiv.org/abs/1307.5336" target="_blank">Malo et al., 2014</a>).  
- `finBERT-train.slurm`: Slurm script for training the BERT model to be run on the Yens.
- `finBERT-train.py`: Python script to train the model on Yen's GPU node.

## Training Script Details
The training script `finBERT-train.py` performs the following:

- Defines a custom dataset to read in financial news texts and their labels.
- Utilizes the BERT model from the `transformers` library for sentiment analysis.
- Trains the model using PyTorch Lightning's Trainer on Yen's GPU.

## Usage
Modify the Slurm script to include your email address. Slurm will report useful metrics via email such as queue time, runtime, CPU and RAM utilization and will alert you if the job has failed.

Submit the Slurm script to initiate the model training on `gpu` partition on the Yens:

```bash
$ sbatch finBERT-train.slurm
```

Monitor the training progress by checking the Slurm queue for your username:

```bash
$ squeue -u $USER
```

## Monitoring Training
Instructions for monitoring GPU utilization and other training metrics can be found in the <a href="https://rcpedia.stanford.edu/topicGuides/finBERT.html" target="_blank">Topic Guide</a>.

## Output
After the training is complete, check the output file `finBERT-train.out` for training and evaluation metrics:

```bash
$ cat finBERT-train.out
```

# Authors
- Stanford GSB DARC Team (gsb_darcresearch@stanford.edu) 
