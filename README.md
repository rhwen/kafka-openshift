# Build Kafka Image
$ docker build -t registry.example.com:5000/rhwen-kafka:latest -f Dockerfile.rhel7 .

# Run for Test
docker run -it --rm -e "BROKER_ID=0" -e "ZOOKEEPER_CONNECT=192.168.31.209:2181" registry.example.com:5000/rhwen-kafka:latest

