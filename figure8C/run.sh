#python brainpy_impl2.py -platform gpu
#python brainpy_impl2.py -platform gpu -x64
#python brainpy_impl2.py -platform cpu
#python brainpy_impl2.py -platform cpu -x64

rm output/ -rf
python Wang_2002_standalone.py --backend cpp_standalone
rm output/ -rf
python Wang_2002_standalone.py --backend cpp_standalone --threads 12
rm output/ -rf
python Wang_2002_standalone.py --backend cuda_standalone --dtype f32
