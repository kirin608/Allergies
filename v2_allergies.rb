#  Second version of allergies score. This version makes allergies scoring more accurate.
def get_user_input
    print 'Please enter the allergy number: '
    gets.chomp.to_i  
end

def allergen_score
    allergen_score = {
        1 => "eggs" ,          2 => "peanuts" ,     4 => "shellfish" ,
        8 => "strawberries" ,  16 =>"tomatoes"  ,   32 => "chocolate" ,
        64 => "pollen",        128 => "cats"
    }
end

def v2_allergies (user_a_number = get_user_input())
    allergies_array = []
    allergen_score.reverse_each.each do |score , allergy|
        if score <= user_a_number
            allergies_array.push(allergy)
            user_a_number = user_a_number - score
        end
    end
   p allergies_array
end
v2_allergies