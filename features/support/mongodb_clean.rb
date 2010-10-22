After do |scenario|
  Mongoid.database.collections.each do |collection|
    unless collection.name.match(/^system\./)
      collection.remove
    end
  end
end

