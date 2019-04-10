require 'pry'

def find_all_pigeon_names(data)
  #return an array of all pigeons to be sorted
  new_hash = {}
  data.each do |attribute, attribute_value|
    attribute_value.each do |key,birds|
      birds.each do |bird|
        new_hash[bird] = {color:[],gender:[],lives:[]}
      end
    end
  end
  new_hash
end

def add_attributes(data,new_hash)
  #adds color data to the new Hash
  data.each do |attribute_key,attribute_hash|
    # binding.pry
    attribute_hash.each do |attribute,pigeon|
      # if (data[attribute_key][])
      pigeon.each do |name|
        if new_hash[name][attribute_key] == [] || !new_hash[name][attribute_key].include?(attribute.to_s)
          new_hash[name][attribute_key] << attribute.to_s
        end
      end
    end
  end
end

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = find_all_pigeon_names(data)
  add_attributes(data,new_hash)
  new_hash 
end
