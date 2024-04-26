#!/bin/bash
apt-get update -y
apt-get install libgl1 -y
apt-get install -y python3 python3-pip
python3 -m pip install --upgrade pip
python3 -m pip install torch
python3 -m pip install torchvision torchaudio torchtext
python3 -m pip install numba
export DNNL_DEFAULT_FPMATH_MODE=BF16
export LRU_CACHE_CAPACITY=1024
export HUGGING_FACE_HUB_TOKEN=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
git clone https://github.com/pytorch/benchmark.git
cd benchmark

models=(
	"resnet50" "densenet121" "mobilenet_v3_large" 
	"vgg16" "resnext50_32x4d" "BERT_pytorch" 
	"hf_Longformer" "hf_DistilBert" "hf_Reformer"
	"hf_Albert" "pytorch_unet" "detectron2_maskrcnn_r_50_fpn"
	"detectron2_maskrcnn_r_50_c4" "yolov3" "vision_maskrcnn"
	"detectron2_fasterrcnn_r_50_c4" "detectron2_fasterrcnn_r_50_dc5" "timm_vovnet"
	"nvidia_deeprecommender" "dlrm" "speech_transformer" "demucs"
	"tts_angular" "hf_GPT2" "hf_GPT2_large"
	"llama" "llama_v2_7b_16h"
)	


for model in "${models[@]}"; do
	echo "Installing $model..."
	python3 install.py $model
done

cd ..

echo "All Machine Learning Models installed successfully."
