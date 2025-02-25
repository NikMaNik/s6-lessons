vertica_user = 'stv2025021816'

import csv 
from pathlib import Path

dataset = 'test_dataset.csv'
N = 10000 

with open (dataset, 'w') as csvfile:
    fwriter = csv.writer(csvfile, delimiter = '|')
    for i in range(N):
        fwriter.writerow([i, 'asds'])
print(Path(dataset).resolve())

with open(dataset, 'r') as csvfile:
    for i in range(5):
        print(csvfile.readline(), end = '')