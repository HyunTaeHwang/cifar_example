number=("5" "7" "9" "11" "13" "15" "17" "19")

for n in "${number[@]}"
do
  echo "run n=$n"
  python ./n_$n/cifar10_multi_gpu_train.py --train_dir=./n_$n/cifar10_train --num_gpus=2 >> ./n_$n/log.txt
done
echo "done"
