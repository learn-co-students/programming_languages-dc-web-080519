require "pry"

def reformat_languages(languages)
  # initialize hash
  new_hash = {}

  # loop over each language
  languages.each do |style, langs|
    langs.each do |lang, type|
      # check if language exists in new_hash
      if !(new_hash[lang])
        # populate hash with key-value pairs in new format
        new_hash[lang] = {
          :type => type[:type],
          :style => [style]
        }
      # if language is already there, push style onto array
      else
        new_hash[lang][:style] << style
      end
    end
  end

  # return value
  new_hash
end
