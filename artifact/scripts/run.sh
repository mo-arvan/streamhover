python run_summarization.py --log_file ../logs/behance_train_c1024_e100.log --batch_size 8 --accum_count 20 --mode train --label_smoothing 0 --num_min_word 5 --num_cluster 1024 --ch_dim 100 --epochs 3 --sep_optim --warmup_steps_bert 3000 --warmup_steps_not_bert 1500 --save_checkpoint_steps 2000 --report_every 50 --debug --gpu 1


python run_summarization.py --log_file ../logs/behance_test_c1024_e100.log --batch_size 100 --mode test --label_smoothing 0 --train_from ../models/_c1024_e100/model_step_7_epoch_2.pt --num_min_word 5 --num_cluster 1024 --ch_dim 100 --num_sum_sent 3 4 5 --input_dist_level clip --is_sample_all --rouge_mean --gpu 1