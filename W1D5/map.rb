
class Map
  def initialize
    @arr_nest = []
  end

  def assign(key, value)
    @arr_nest.push([key, value]) if @arr_nest.empty?
    idx = key?(key)
    if idx
      @arr_nest[idx][1] = value
    else
      @arr_nest.push([key, value])
    end
  end

  def lookup(key)
    idx = key?(key)
    return @arr_nest[idx][1] if idx
  end

  def remove(key)
    idx = key?(key)
    @arr_nest.delete_at(idx) if idx
  end

  def key?(key)
    key_exists = false
    @arr_nest.each_with_index do |pair, index|
      key_exists = index if pair[0] == key
    end
  end


  def show
    @arr_nest
  end
end
