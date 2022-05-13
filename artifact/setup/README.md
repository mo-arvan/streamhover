# Setup

Instructions for creating or organizing the artifacts of a given project. 

## Steps

- Copy the artifacts folder into your projects. 
- Identify the first (or the main) procedure of running the scripts.
- (Optional) If the repository comes with specified requirements, use those.
- Select an appropriate docker image base
- Iteratively run the script that cover missing dependencies, fix bugs, etc.
- Finally, export the docker image to file using the command below `docker save` ()

### Docker
```bash

docker build -t ${PROJECT_NAME}_image -f artifact/setup/dockerfile .


docker run --rm --ipc=host --gpus all -v ${PWD}:/workspace -it ${PROJECT_NAME}_image bash

python run_summarization.py --log_file ../logs/behance_train_c1024_e100.log --batch_size 20 --accum_count 20 --mode train --label_smoothing 0 --num_min_word 5 --num_cluster 1024 --ch_dim 100 --epochs 30 --sep_optim --warmup_steps_bert 3000 --warmup_steps_not_bert 1500 --save_checkpoint_steps 2000 --report_every 50
# inside the container, run the required commands

```

### Useful tools
- `unzip`: `unzip file_name`
- `docker save --output hello-world.tar image_name`