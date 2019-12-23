$kafka = Kafka.new(["kafka:9092"], client_id: "debug-app")
$kafka_producer = $kafka.async_producer(
  delivery_threshold: 10
)
