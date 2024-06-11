#!/user/bin/env/ bash


# download if the data does not exist
if [ ! -d "Newdata/Games_50_50_3" ]; then
    curl -O https://dgsr-data.s3.eu-central-1.amazonaws.com/Games_50_50_3.zip
    unzip Games_50_50_3.zip -d ./Newdata/
    rm Games_50_50_3.zip
fi
# download if the data does not exist
if [ ! -f "Games_neg" ]; then
    curl -O https://dgsr-data.s3.eu-central-1.amazonaws.com/Games_neg
fi

#!/usr/bin/env bash

python -u  new_main.py \
    --data=Games \
    --gpu=1 \
    --epoch=1 \
    --user_long=orgat \
    --user_short=att \
    --item_long=orgat \
    --item_short=att \
    --user_update=rnn \
    --item_update=rnn \
    --batchSize=8 \
    --layer_num=3 \
    --lr=0.001 \
    --l2=0.0001 \
    --item_max_length=50 \
    --user_max_length=50 \
    --record \
    --model_record \
    --k_hop=3
