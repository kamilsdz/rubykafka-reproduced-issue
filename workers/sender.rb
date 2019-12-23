class Sender
  TOPIC = "cats-data"

  def perform(iteration = nil)
    $kafka_producer.produce(data.merge(iteration: iteration).to_json, topic: TOPIC)
  end

  private

  def data
    @data ||= {
      payload: File.read("base64_cat")
    }
  end
end
