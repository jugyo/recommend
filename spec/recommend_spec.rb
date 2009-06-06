$:.unshift(File.dirname(__FILE__) + '/../lib/')
require 'recommend'

describe Recommend do
  it 'should calc similarity by euclidean distance' do
    data1 = {1 => 1, 2 => 2, 5 => 1}
    data2 = {1 => 2, 2 => 1, 3 => 2}
    Recommend.similarity_by_euclidean_distance(data1, data2).should == 1.0 / (2 + 1)
  end

  it 'should calc similarity for same data by euclidean distance' do
    data1 = {1 => 1, 2 => 1, 5 => 1}
    data2 = {1 => 1, 2 => 1, 3 => 2}
    Recommend.similarity_by_euclidean_distance(data1, data2).should == 1.0
  end
end
