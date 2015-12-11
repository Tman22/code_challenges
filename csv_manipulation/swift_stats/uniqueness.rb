class Uniqueness

  def list
    file = File.open('lyrics.txt', "r").read.gsub('\n', ' ').gsub(/[^a-z0-9\s]/i, " ").split
    counter = Hash.new(0)
    file.each do |word|
      counter[word.downcase] +=1
    end
    counter.count
  end
end
