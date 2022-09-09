FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel

RUN conda install -y ipython
RUN pip install opencv-python==3.4.2.17
RUN pip install ninja yacs cython matplotlib tqdm scipy torchsampler
 
RUN git clone https://github.com/facebookresearch/maskrcnn-benchmark.git \
 && cd maskrcnn-benchmark \
 && python setup.py build develop
 
WORKDIR /maskrcnn-benchmark
