


file = File.open("logs.txt", "a+") do |file|
  file.puts Time.new
end
