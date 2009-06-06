module Recommend
  # data should be a Hash
  def similarity_by_euclidean_distance(data1, data2)
    sum = (data1.keys & data2.keys).inject(0) do |result, key|
      result + (data1[key] - data2[key])**2
    end
    1.0 / (sum + 1)
  end
  module_function :similarity_by_euclidean_distance
end
