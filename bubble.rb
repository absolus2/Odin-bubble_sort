to_sort = [4,3,78,2,0,2]

def bubble_sort(array)
  a = array
  #repeat the block until items are sorted
  until check_sort(a) == true
    a.each_with_index do |item, index|
      # if index + 1 doens't exit, break.
      if a[index+1] == nil
        break
      end
      #if item is > than the next one swap it
      if a[index] > a[index + 1]
        a[index], a[index+1] = a[index+1], a[index]
      end
    end
  end
  return a
end

def check_sort(array)
  a = array
  a.each_with_index.all? do |item, index|
    if a[index+1] == nil
      item <= a.last
    elsif item <= a[index+1]
      true
    end
  end
end

p bubble_sort(to_sort)

# => [0, 2, 2, 3, 4, 78]