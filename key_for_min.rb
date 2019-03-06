# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  prev = ""
  if name_hash.length > 0
    name_hash.each do |item|
      if name_hash[prev]
        prev = name_hash[prev] > name_hash[item] ? prev : item
      else
        prev = item
      end
    end
    return prev[0]
  end
  nil
end