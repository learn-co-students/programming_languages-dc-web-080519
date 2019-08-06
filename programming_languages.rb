require 'pry'

def reformat_languages(languages)

  # loop over hash
  # add languages to new hash as keys, empty values
  # loop over old hash, if language = new hash language
  # add key value pair to value of new hash language

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

# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }
