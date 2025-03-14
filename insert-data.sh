curl -X POST -d '{"name":"student1", "age": 55, "email":"student1@codelytv.com"}' -H "Content-Type: application/json" http://localhost:9200/codelytv/students/1

curl http://localhost:9200/codelytv/_search?q=name:student1

# Datasets from https://www.elastic.co/guide/en/kibana/7.1/tutorial-load-dataset.html
pushd /tmp
curl -O https://download.elastic.co/demos/kibana/gettingstarted/7.x/accounts.zip
unzip accounts.zip
curl -H 'Content-Type: application/x-ndjson' -XPOST 'localhost:9200/bank/account/_bulk?pretty' --data-binary @accounts.json
popd

curl -X GET "localhost:9200/_cat/indices?v&pretty"
