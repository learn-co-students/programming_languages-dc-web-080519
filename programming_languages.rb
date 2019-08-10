require('pry')
def reformat_languages(languages)
  new_hash = {}
  languages.each do |top_hash, sub_hash|
    sub_hash.each do |lang, type|
        if !!new_hash[lang] == false
          new_hash[lang] = {}
        end
      type.each do |type_of_lang, v|
        # binding.pry
        if !!new_hash[lang][type_of_lang] == false
          new_hash[lang][type_of_lang] = v
      end
      end
      if !!new_hash[lang][:style] == false
        new_hash[lang][:style] = [top_hash]
      elsif new_hash[:javascript][:style].length < 2
        new_hash[lang][:style] << top_hash
      end
    end
  end
return new_hash
end
