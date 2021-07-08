#!/bin/sh


for j in 0 1 2 3 4 5 6 7 8 9 
do
    python -u get_params.py --network_arch segnet --network_weights_path ./savedmodels/resnet.pt --use_augs --idtest $j 
    python -u get_params.py --network_arch segnet --network_weights_path ./savedmodels/resnet.pt --use_boxconv --use_augs --idtest $j 
done
