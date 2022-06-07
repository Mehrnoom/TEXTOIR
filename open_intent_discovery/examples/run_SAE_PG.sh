#!/usr/bin bash

for dataset in 'pocketgem_topics'
do
    for seed in 0
    do
        python run.py \
        --dataset $dataset \
        --method 'SAE' \
        --setting 'unsupervised' \
        --seed $seed \
        --backbone 'sae' \
        --config_file_name 'SAE' \
        --gpu_id '0' \
        --save_results \
        --train \
        --results_file_name 'results_SAE.csv' \
        --save_model
    done
done
