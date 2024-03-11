Elasticsearch API


Примеры запросов для работы с elasticsearch:

Создать данные в эластике через CURL из любого пода можно так:

curl -H "Content-Type: application/json" -XPOST "http://elasticsearch:9200/indexname/typename/qwe2" -d "{ \"2qweqweqwe\" : \"2awdawdawd\"}"

ответ будет такой:

{"_index":"indexname","_type":"typename","_id":"qwe","_version":1,"result":"*+created+*","_shards":\{"total":2,"successful":1,"failed":0}
,"_seq_no":3,"_primary_term":1}

 После чего в поде STS Elastic появится папка INDICIES

ls /usr/share/elasticsearch/data/nodes/0/

  
GET DATA: 
curl -i -H "Content-Type: application/json" -XPOST "https://elastic.webdev.open-broker.ru/indexname/typename/qwe2" -d "{ \"2qweqweqwe\" : \"2awdawdawd\"}" --insecure
DELETE DATA:
DELETE https://elastic.webdev.open-broker.ru/indexname/typename/qwe2



#
curl -H "Content-Type: application/json" -XPOST "http://es-web.openbroker.tech:9200/indexname/typename/qwe2" -d "{ \"2qweqweqwe\" : \"2awdawdawd\"}"
curl -H "Content-Type: application/json" -XPOST "http://es-web.openbroker.tech/indexname/typename/qwe2" -d "{ \"2qweqweqwe\" : \"2awdawdawd\"}"




#Получить данные с поискеового эластика:
curl -k --user open_journal:**********  -XGET "https://bd-srv-elk-01.openbroker.tech:9200/open_journal_prod/_stats"
