def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
  data.each do |pigeon_attributes, values|
    values.each do |value, array|
      array.each do |name|
        if new_pigeon_hash[name] == nil 
          new_pigeon_hash[name] = {}
          new_pigeon_hash[pigeon_attributes][name] = []
        else 
          new_pigeon_hash[pigeon_attributes][name] = []
        end
      end
    end
end
