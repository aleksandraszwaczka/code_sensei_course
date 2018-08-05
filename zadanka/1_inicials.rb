puts "Jan Kozłowski".split.collect{ |full_name| full_name[0].capitalize }.join

 "Jan Krzysztof Rakoczy".split do |full_name|
  puts full_name[0].capitalize
end #to nie działa

puts "marcin nowak".split.collect{ |full_name| full_name[0].capitalize }.join
