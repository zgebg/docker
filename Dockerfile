FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-devel

RUN conda install -y ipython
RUN pip install ninja yacs cython matplotlib tqdm scipy torchsampler scikit-image opencv-python
RUN apt-get update && apt-get install -y libgl1-mesa-glx libpci-dev curl nano psmisc zip
