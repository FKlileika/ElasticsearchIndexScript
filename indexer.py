from elasticsearch import Elasticsearch
import requests

def connect_and_insert(elasticsearch_host, elasticsearch_port, index_name, document):
    # Подключение к кластеру Elasticsearch
    es = Elasticsearch([{'host': elasticsearch_host, 'port': elasticsearch_port}])

    # Создание индекса (если он еще не существует)
    if not es.indices.exists(index=index_name):
        es.indices.create(index=index_name)

    # Добавление записи в индекс
    es.index(index=index_name, body=document)

    # Проверка успешности добавления записи
    response = requests.get(f'http://{elasticsearch_host}:{elasticsearch_port}/{index_name}/_search')
    if response.status_code == 200:
        print('Запись успешно добавлена в индекс.')
    else:
        print(f'Произошла ошибка: {response.text}')

# Пример использования функции
elasticsearch_host = 'localhost'  # Заменить на хост
elasticsearch_port = 9200  # Заменить на порт
index_name = 'ваш_индекс'  # Заменить на имя индекса
document = {'field1': 'value1', 'field2': 'value2'}  # Заменить на запись ключ-значение

connect_and_insert(elasticsearch_host, elasticsearch_port, index_name, document)
