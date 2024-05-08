#!/user/bin/env/ bash

python -u  new_main.py --data=Games --gpu=1 --epoch=1 --user_long=orgat --user_short=att --item_long=orgat --item_short=att --user_update=rnn --item_update=rnn --batchSize=8 --layer_num=3 --lr=0.001 --l2=0.0001 --item_max_length=50 --user_max_length=50 --record --model_record  --k_hop=3