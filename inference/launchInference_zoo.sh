export ANALYTICS_ZOO_HOME=/user/jwang/git/analytics-zoo/dist
export SPARK_HOME=/tools/spark-2.2.0-bin-hadoop2.7

${ANALYTICS_ZOO_HOME}/bin/spark-submit-with-zoo.sh \
  --master local[*] \
  --conf spark.driver.memory=16G \
  inference_zoo.py \
  --testDataset path-to-the-test-dataset.parquet \
  --models hlf gru inclusive \
  --modelsDir path-to-the-models-directory \
  --plotDir path-to-the-directory-containing-plots 
