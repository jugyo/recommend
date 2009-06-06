require 'rubygems'
require 'recommend'

item_data = []
item_data << {1 => 1, 2 => 3, 4 => 1, 6 => 3, 9 => 1}
item_data << {1 => 2, 3 => 1, 4 => 1, 7 => 3}
item_data << {2 => 1, 4 => 3, 6 => 2, 7 => 2, 8 => 2}
item_data << {3 => 2, 5 => 1, 6 => 4, 7 => 1, 8 => 2, 9 => 3}
item_data << {2 => 4, 3 => 1, 4 => 1, 6 => 2}

item_data.each_with_index do |item, i|
  item_data.each_with_index do |other, j|
    next if i == j
    similarity = Recommend.similarity_by_euclidean_distance(item, other)
    puts "similarity of '#{i}' and '#{j}' => #{similarity}"
  end
end
