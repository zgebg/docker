FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-devel

RUN conda install -y ipython
RUN pip install opencv-python==3.4.2.17
RUN pip install ninja yacs cython matplotlib tqdm scipy torchsampler scikit-image
