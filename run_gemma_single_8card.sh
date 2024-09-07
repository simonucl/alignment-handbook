DS_SKIP_CUDA_CHECK=1 ACCELERATE_LOG_LEVEL=info nohup accelerate launch \
    --config_file recipes/accelerate_configs/deepspeed_zero3_8card.yaml \
    scripts/run_dpo.py recipes/gemma2-9b-agg-judge.yaml  > logs/dpo.yaml 2>&1 &