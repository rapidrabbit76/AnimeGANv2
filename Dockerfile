FROM tensorflow/tensorflow:1.15.0-gpu-py3
WORKDIR /training

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx && apt-get clean

RUN pip install --no-cache-dir \ 
    opencv-python \
    tqdm \
    onnxruntime