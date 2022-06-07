#!/usr/bin bash

for dataset in 'pocketgem_topics'
do
    for seed in 0
    do
        python run.py \
        --dataset $dataset \
        --method 'DEC' \
        --setting 'unsupervised' \
        --seed $seed \
        --backbone 'sae' \
        --config_file_name 'DEC' \
        --gpu_id '0' \
        --save_results \
        --train \
        --results_file_name 'results_DEC.csv'
    done
done
