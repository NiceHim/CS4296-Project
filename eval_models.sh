#!/bin/bash
cd benchmark
python3 run.py resnet50 -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 32
python3 run.py densenet121 -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 32
python3 run.py mobilenet_v3_large -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 32
python3 run.py vgg16 -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 32
python3 run.py resnext50_32x4d -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 32
python3 run.py BERT_pytorch -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 4
python3 run.py hf_Longformer -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 4
python3 run.py hf_DistilBert -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 4
python3 run.py hf_Reformer -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 4
python3 run.py hf_Albert -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 4
python3 run.py pytorch_unet -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py detectron2_maskrcnn_r_50_fpn -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py detectron2_maskrcnn_r_50_c4 -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py yolov3 -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 8 
python3 run.py vision_maskrcnn -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py detectron2_fasterrcnn_r_50_c4 -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py detectron2_fasterrcnn_r_50_dc5 -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py timm_vovnet -d cpu -t eval --metrics model_flops,cpu_peak_mem --bs 32 
python3 run.py nvidia_deeprecommender -d cpu -t eval --metrics model_flops,cpu_peak_mem 
python3 run.py dlrm -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py speech_transformer -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py demucs -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py hf_GPT2 -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py hf_GPT2_large -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py llama -d cpu -t eval --metrics model_flops,cpu_peak_mem
python3 run.py llama_v2_7b_16h -d cpu -t eval --metrics model_flops,cpu_peak_mem
