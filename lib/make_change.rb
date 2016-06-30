class String
  define_method(:make_change) do |pennies,nickles,dimes,quarters|
    input_number = self.to_i
    available_change = [pennies.to_i,nickles.to_i,dimes.to_i,quarters.to_i]
    change_array = [0,0,0,0]
    final_array = []
    if available_change[3] > 0
      until input_number < 25
        change_array[3] += 1
        input_number -= 25
        available_change[3] -= 1
      end
    end
    if available_change[2] > 0
      until input_number < 10
        change_array[2] += 1
        input_number -= 10
        available_change[2] -= 1
      end
    end
    if available_change[1] > 0
      until input_number < 5
        change_array[1] += 1
        input_number -= 5
        available_change[1] -= 1
      end
    end
    if available_change[0] > 0
      until input_number < 1
        change_array[0] += 1
        input_number -= 1
        available_change[0] -= 1
      end
    end
    final_array.push(change_array).push(available_change)
    final_array
  end
end
puts "67".make_change(7,5,6,8)
