FROM 1021723335/fcos_img:v1.4.6

RUN apt-get update && apt-get install -y git

RUN conda install -y ipython
RUN pip install ninja yacs cython matplotlib opencv-python tqdm scipy torchsampler
 
RUN git clone https://github.com/cocodataset/cocoapi.git \
 && cd cocoapi/PythonAPI \
 && python setup.py build_ext install
 
RUN git clone https://github.com/facebookresearch/maskrcnn-benchmark.git \
 && cd maskrcnn-benchmark \
 && python setup.py build develop
 
WORKDIR /maskrcnn-benchmark
