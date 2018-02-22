class Octopus
  def sluggish_octopus(fish_arr)
    fish_length_arr = []
    fish_arr.each do |fish|
      fish_length_arr << fish_arr.length
    end
    fish_length_arr.max
  end

  def dominant_octopus(fish_arr)
    sorted = false
    until sorted == true
      sorted = true
      fish_arr.each_idx do |idx|
        idx2 = idx + 1
        if fish_arr[idx] > fish_arr[idx2]
          fish_arr[idx], fish_arr[idx2] = fish_arr[idx2], fish_arr[idx]
          sorted = false
        end
      end
    end
    fish_arr.last
  end

  def clever_octopus(fish_arr)
    biggest_fish = nil
    fish_length = 0

    fish_arr.each do |fish|
      biggest_fish = fish if fish.length >fish_length
    end
    biggest_fish
  end

tiles_array = ["up", "right-up", "right", "right-down", "down",
              "left-down", "left",  "left-up" ]
TILES = {"up" => 0, "right-up" => 1,  "right" => 2, "right-down" => 3,
        "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7 }
  def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |dir, idx|
      return idx if dir == direction
    end

  def fast_dance(direction, *tiles_hash)
    TILES[direction]
  end

end
