

class Map
  def initialize
    @arr_nest = Array.new
  end

  def assign(key, value)
    idx = key?(key)
    if idx
      @@arr_nest[idx][1] = value
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
    @arr_nest.each do |pair|
      pair.include?(key) ? key_exists = pair : key_exists = nil
    end
  end


  def show
    @arr_nest
  end
end
