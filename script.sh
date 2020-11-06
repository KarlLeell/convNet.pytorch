M=(2 4 8 16 32)
for i in ${M[@]}
do
	echo "M: $i"
	python main.py --dataset cifar10 --model resnet --model-config "{'depth': 44}"  --duplicates $i --cutout -b 64 --epochs 100 --print-freq=100000 --save resnet44_cutout_m_$i
	echo "Done M: $i"
done
