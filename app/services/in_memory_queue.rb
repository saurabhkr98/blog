require 'thread'

class InMemoryQueue
  def initialize
    @topics = Hash.new { |hash, key| hash[key] = [] }
    @consumers = Hash.new { |hash, key| hash[key] = [] }
    @mutex = Mutex.new
  end

  def create_topic(topic)
    @mutex.synchronize do
      @topics[topic] = []
    end
  end

  def publish(topic, message)
    @mutex.synchronize do
      if @topics.key?(topic)
        @topics[topic] << message
        notify_consumers(topic, message)
      else
        raise "Topic #{topic} does not exist"
      end
    end
  end

  def subscribe(topic, consumer)
    @mutex.synchronize do
      if @topics.key?(topic)
        @consumers[topic] << consumer
      else
        raise "Topic #{topic} does not exist"
      end
    end
  end

  private

  def notify_consumers(topic, message)
    @consumers[topic].each do |consumer|
      Thread.new { consumer.consume(message) }
    end
  end
end

class Producer
  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def publish(topic, message)
    @queue.publish(topic, message)
  end
end

class Consumer
  def initialize(id)
    @id = id
  end

  def consume(message)
    puts "#{@id} received #{message}"
  end
end

# Create queue and topics
queue = InMemoryQueue.new
queue.create_topic('topic1')
queue.create_topic('topic2')

# Create producers
producer1 = Producer.new('producer1', queue)
producer2 = Producer.new('producer2', queue)

# Create consumers
consumer1 = Consumer.new('consumer1')
consumer2 = Consumer.new('consumer2')
consumer3 = Consumer.new('consumer3')
consumer4 = Consumer.new('consumer4')
consumer5 = Consumer.new('consumer5')

# Subscribe consumers to topics
[consumer1, consumer2, consumer3, consumer4, consumer5].each { |c| queue.subscribe('topic1', c) }
[consumer1, consumer3, consumer4].each { |c| queue.subscribe('topic2', c) }

# Publish messages
producer1.publish('topic1', 'Message 1')
producer1.publish('topic1', 'Message 2')
producer2.publish('topic1', 'Message 3')
producer1.publish('topic2', 'Message 4')
producer2.publish('topic2', 'Message 5')

# Give some time for all threads to finish execution
sleep 1
