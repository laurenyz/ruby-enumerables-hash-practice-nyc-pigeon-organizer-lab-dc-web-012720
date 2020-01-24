require 'pry'
# def nyc_pigeon_organizer(data)
# organized_pigeons = {}
# i = 0
# k = 0 
#   while i < data[:gender][:male].length 
#   organized_pigeons[data[:gender][:male][i]] = {
#     :color => [], 
#     :gender => [], 
#     :lives => []
#   }
#   i += 1
#   end
#   while k < data[:gender][:female].length
#   organized_pigeons[data[:gender][:female][k]] = {
#     :color => [], 
#     :gender => [], 
#     :lives => []
#   }
#   k += 1 
#   end 
 
# if data[:color].select {|key, array| array[i] == organized pigeons }
 
#   p organized_pigeons
# end

def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  data.each do |categories, value|
    value.each do |specifics, names|
      names.each do |name|
        if organized_pigeons[name] == nil 
          organized_pigeons[name] = {}
        end
        if organized_pigeons[name][categories] == nil
          organized_pigeons[name][categories] = []
        end 
        organized_pigeons[name][categories].push(specifics.to_s)
        binding.pry
      end
    end
  end
  organized_pigeons
end

# pigeon_data = {
#   :color => {
#     :brown => ["Luca"],
#     :black => ["Lola"],
#   },
#   :gender => {
#     :male => ["Luca", "Lick"],
#     :female => ["Lola"]
#   },
#   :lives => {
#     "Central Park" => ["Lola"],
#     "Library" => ["Luca"]
#   }
# }

# nyc_pigeon_organizer(pigeon_data)

