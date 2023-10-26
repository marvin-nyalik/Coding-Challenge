def custom_sort(a, b)
    if a.is_a?(Integer) && b.is_a?(Integer)
      a <=> b
    elsif a.is_a?(Float) && b.is_a?(Float)
      a <=> b
    else a.is_a?(String) && b.is_a?(String)
      a <=> b
    end
end

def sort(array)
  integer_el = []
  string_el = []
  float_el = []
 
  array.each do |el|
    case el
    when Integer
      integer_el << el
    when String
      string_el << el
    when Float
      float_el << el
    end
  end
  integer_el.sort! { |a, b| custom_sort(a, b) }
  string_el.sort! { |a, b| custom_sort(a, b) }
  float_el.sort! { |a, b| custom_sort(a, b) }

  sorted_array = integer_el + float_el + string_el 

end

data = [1, 2.5, 'apple', 3, 'banana', 2, 1.0]
p sort(data)
# expected output : [1, 2, 3, 1.0, 2.5, "apple", "banana"]