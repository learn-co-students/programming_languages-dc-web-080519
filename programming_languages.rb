require 'pry'

def reformat_languages(languages)
  # your code here
  # top keys :oo and :functional are to be replaced as :style for each respective lang
  # javascript is unique that it has both :oo and functional style
  new_hash = {}
  languages.each do |topkey, languagecollection|
    languagecollection.each do |languagenames, attributes|
      if new_hash[languagenames]  
        new_hash[languagenames][:style] << topkey
      end
      if !new_hash[languagenames]
        new_hash[languagenames] = {:type => attributes[:type], :style =>[]}
        new_hash[languagenames][:style] << topkey
      end
    end
  end
  new_hash
end
