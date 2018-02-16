class Queue
  def initialize
    @line = []
  end

  def enqueue(el)
    @line.push(el)
  end

  def dequeue
    @line.shift
  end

  def show
    @line
  end
end
