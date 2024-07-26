import findspark
findspark.init()

import os
from pyspark.sql import SparkSession

jdbc_jar_path = os.path.expanduser("~/postgresql-42.7.3.jar")

if not os.path.isfile(jdbc_jar_path):
    raise FileNotFoundError(f"El archivo {jdbc_jar_path} no existe.")

spark = SparkSession.builder \
    .appName("PostgreSQL Init") \
    .config("spark.jars", jdbc_jar_path) \
    .getOrCreate()

globals()['spark'] = spark
