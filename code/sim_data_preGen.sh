for DATASET in noisy3 constant switch45; do
  echo $DATASET
  python -u sim_cli.py \
    --duration 120 \
    --dataset_name $DATASET \
    --wind_magnitude 0.5 \
    --birth_rate 1.0 \
    --fname_suffix x5b5 > ${DATASET}x5b5.log 2>&1 &
 done

tail -f *.log
done
