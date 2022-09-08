FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-devel
 
RUN conda install -y ipython
RUN pip install ninja yacs cython matplotlib opencv-python tqdm
 
 RUN git clone https://github.com/cocodataset/cocoapi.git \
 && cd cocoapi/PythonAPI \
 && python setup.py build_ext install
 
 RUN git clone https://github.com/facebookresearch/maskrcnn-benchmark.git \
 && cd maskrcnn-benchmark \
 && python setup.py build develop
 
 WORKDIR /maskrcnn-benchmark
