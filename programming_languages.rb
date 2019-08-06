require "pry"

def reformat_languages(languages)
new_languages= {}
# build empty hash as a container
languages.each do |type, hash|
# iterate down to languages hash, then key (type) and value (hash)
  hash.each do |name, attributes|
  # iterate down to the hash and grab its name and attributes (hash)
    new_languages[name] ||= attributes
    # sets name as the key and attributes as the value
    new_languages[name][:style] ||= []
    # builds empty array for the style value
    new_languages[name][:style] << type  
    # shovels in the type as the value
  end
end
new_languages
# prints out the new hash
end
