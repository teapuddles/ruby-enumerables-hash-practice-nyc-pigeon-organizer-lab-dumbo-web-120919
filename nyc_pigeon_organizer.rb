def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
  data.each do |pigeon_attributes, values|
    values.each do |value, array|
      array.each do |name|
        if new_pigeon_hash[name] == nil    ##why tho?
          new_pigeon_hash[name] = {}
          new_pigeon_hash[name][pigeon_attributes] = []
        else
          new_pigeon_hash[name][pigeon_attributes] = []
        end
      end
    end
  end
  new_pigeon_hash.each do |name, values|
    values.each do |single_attribute, array|
      data.each do |pigeon_attributes, values|
        values.each do |value, array|
          array.each do |element|
            if element == name && single_attribute == pigeon_attributes
              new_pigeon_hash[name][single_attribute] << value.to_s
            end
          end
        end
      end
    end
  end
  return new_pigeon_hash
end
    