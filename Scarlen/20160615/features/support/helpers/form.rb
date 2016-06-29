def get_phone_number_inputs label_found
    array_inputs = Array.new
    label_found.all('input').each do |input|
      array_inputs.push input
    end
    return array_inputs
end 

def fill_phone_number array_inputs, phone_number
	number = phone_array(phone_number)
	index = 0
	for input in array_inputs do 
			input.set number[index]
		index = index + 1
	end 
end

def phone_array phone_number
	number_split = phone_number.split("-")
	return number_split
end



