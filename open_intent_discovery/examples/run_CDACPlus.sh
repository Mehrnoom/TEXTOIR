#!/usr/bin bash

for dataset in 'banking'
do
    for known_cls_ratio in 0.75
    do
        for seed in 7 8
        do 
            python run.py \
            --dataset $dataset \
            --method 'CDACPlus' \
            --known_cls_ratio $known_cls_ratio \
            --seed $seed \
            --backbone 'bert_CDAC' \
            --config_file_name CDACPlus \
            --gpu_id '0' \
            --train \
            --save_results \
            --results_file_name 'results_CDACPlus.csv' \
            --save_model
        done
    done
done

for dataset in 'clinc'
do
    for known_cls_ratio in 0.75
    do
        for seed in 1 2 3 4 5 6 7 8 9
        do 
            python run.py \
            --dataset $dataset \
            --method 'CDACPlus' \
            --known_cls_ratio $known_cls_ratio \
            --seed $seed \
            --backbone 'bert_CDAC' \
            --config_file_name CDACPlus \
            --gpu_id '0' \
            --train \
            --save_results \
            --results_file_name 'results_CDACPlus.csv' \
            --save_model
        done
    done
done
