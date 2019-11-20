Experiments for "Tandem Inference: An Out-of-Core Streaming Algorithm For Very Large-Scale Relational Inference".

### Simple Execution

All the experiments can be run using the single `run.sh` script:
```
./run.sh
```

### Advanced Execution

If you need more control over the experiments or want to modify the experiments,
then you should start by examining the `run.sh` script.
There are three main steps:
 - Fetch the models/data using the `scripts/setup_psl_examples.sh` script.
 - Run the inference experiments using the `scripts/run_inference_experiments.sh` script.
 - Run the memory experiments using the `scripts/run_memory_experiments.sh` script.

Each script has options that can be set at the beginning of the script.
The `scripts/setup_psl_examples.sh` is the place to make modifications if you want to change the version of PSL being used.

### Requirements

These experiments expect that you are running on a POSIX (Linux/Mac) system.
The specific application dependencies are as follows:
 - Bash >= 4.0
 - PostgreSQL >= 9.5
 - Java >= 7
 - Git

### Citation

All of these experiments are discussed in the following paper:
```
@conference{srinivasan:aaai20,
	author = {Sriram Srinivasan* and Eriq Augustine* and Lise Getoor},
	title = {Tandem Inference: An Out-of-Core Streaming Algorithm For Very Large-Scale Relational Inference},
	booktitle = {AAAI Conference on Artificial Intelligence},
	year = {2020},
}
```
