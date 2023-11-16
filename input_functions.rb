# Display the prompt and return the read string
def read_string prompt
   puts prompt
   value = gets.chomp
end

# Display the prompt and return the read float
def read_float prompt
   value = read_string(prompt)
   value.to_f
end

# Display the prompt and return the read integer
def read_integer prompt
   value = read_string(prompt)
   value.to_i
end

# Read an integer between min and max, prompting with the string provided

def read_integer_in_range(prompt, min, max)
   value = read_integer(prompt)
   while (value < min or value > max)
       puts "Please enter a value between " + min.to_s + " and " + max.to_s + ": "
       value = read_integer(prompt);
   end
   value
end

# Display the prompt and return the read Boolean

def read_boolean prompt
   value = read_string(prompt)
   case value
   when 'y', 'yes', 'Yes', 'YES'
       true
   else
       false
   end
end