class Stack
  def initialize
    @trays = []
  end

  def add(el)
    @trays.push(el)
  end

  def remove
    @trays.pop
  end

  def show
    @trays
  end
end
