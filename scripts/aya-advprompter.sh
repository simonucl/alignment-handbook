export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

ACCELERATE_LOG_LEVEL=info nohup accelerate launch \
    --config_file recipes/accelerate_configs/deepspeed_zero3.yaml \
    scripts/run_dpo.py \
    recipes/aya-advprompter.yaml