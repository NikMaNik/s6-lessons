import boto3

AWS_ACCES_KEY_ID = "YCAJEiyNFq4wiOe_eMCMCXmQP"
AWS_SECRET_ACCES_KEY = "YCP1e96y4QI8OmcB4Eaf4q0nMHwhmtvGbDTgBeqS"

session = boto3.session.Session()
s3_client = session.client(
    service_name="s3",
    endpoint_url="https://storage.yandexcloud.net",
    aws_access_key_id=AWS_ACCES_KEY_ID,
    aws_secret_access_key=AWS_SECRET_ACCES_KEY,
)

s3_client.download_file(
    Bucket='sprint6',
    Key='groups.csv',
    Filename='/home/nikolay/python_projects/practicum_yandex/s6-lessons/Тема 3.  Разработка аналитической базы данных/2. Изучим исходные данные/Задание 1/data/groups.csv'
)


