print "Enter Title : "
title = gets.chomp()

print "Enter Note : "
note = gets.chomp()

print "Enter save/cancle : "
choose = gets.chomp()

if choose == "save"
  File.open("tutorial_file/#{title}.txt", "w") do |file|     
    file.write(note)   
  end
end

begin
  print "Enter open file name : "
  read_title = gets.chomp()
  file = File.open("tutorial_file/#{read_title}.txt", "r") 
  puts file.read
  file.close()
rescue
  puts "file not found"
end



