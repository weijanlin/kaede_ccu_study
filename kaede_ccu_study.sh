set -e
echo "socsoc" | sudo -S apt-get install python3-pip -y
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran
pip3 install -U pip testresources setuptools==49.6.0
pip3 install -U numpy==1.16.1
pip3 install -U future==0.18.2 
pip3 install -U mock==3.0.5 
pip3 install -U h5py
pip3 install -U keras_preprocessing==1.1.1
pip3 install -U keras_applications==1.0.8 
pip3 install -U gast==0.2.2
pip3 install -U futures
pip3 install -U protobuf
pip3 install -U pybind11
pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v45 tensorflow
sudo apt-get install -y python-matplotlib
sudo apt-get install -y python3-opencv
echo export OPENBLAS_CORETYPE=ARMV8 >> ~/.bashrc

wget https://nvidia.box.com/shared/static/p57jwntv436lfrd78inwl7iml6p13fzh.whl -O torch-1.8.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install libopenblas-base libopenmpi-dev -y
pip3 install Cython
pip3 install numpy torch-1.8.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install -y libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev -y
git clone --branch v0.9.0 https://github.com/pytorch/vision torchvision
cd torchvision
echo export BUILD_VERSION=0.9.0 >> ~/.bashrc
python3 setup.py install --user
echo export LD_PRELOAD=/usr/lib/aarch64-linux-gnu/libgomp.so.1 >> ~/.bashrc
cd ~/
git clone https://github.com/kaede10263/CCU_class.git

