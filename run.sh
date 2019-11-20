#!/bin/bash

# Run all the experiments.

INFERENCE_DATASETS='citeseer cora epinions knowledge-graph-identification entity-resolution lastfm jester jester-full friendship-500M friendship-1B'
MEMORY_DATASETS='jester-full'

function main() {
    trap exit SIGINT

    # Fetch the data/models if they are not already present.
    if [ ! -e psl-examples ]; then
        echo "Models and data not found, fetching them."
        ./scripts/setup_psl_examples.sh
    fi

    local datasetPaths=''
    for dataset in $INFERENCE_DATASETS; do
        datasetPaths="${datasetPaths} psl-examples/${dataset}"
    done

    echo "Running inference experiments on datasets: [${INFERENCE_DATASETS}]."
    ./scripts/run_inference_experiments.sh $datasetPaths

    datasetPaths=''
    for dataset in $MEMORY_DATASETS; do
        datasetPaths="${datasetPaths} psl-examples/${dataset}"
    done

    echo "Running memory experiments on datasets: [${MEMORY_DATASETS}]."
    ./scripts/run_memory_experiments.sh $datasetPaths
}

main "$@"
