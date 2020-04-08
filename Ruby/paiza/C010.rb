def perfect(gets,readlines)
  con = gets.split(' ').map(&:to_i)
  trees = readlines.map{|line| line.split(' ').map(&:to_i)}
  trees.delete_at(0)

  trees.each_with_index do |tree,i|
    if (tree[0] - con[0])**2 + (tree[1] - con[1])**2 >= con[2]**2
      puts "silent"
    else
      puts "noisy"
    end
  end
end

perfect(gets, readlines)