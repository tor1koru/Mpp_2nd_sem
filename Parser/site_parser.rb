require 'nokogiri'
require 'open-uri'
require 'csv'

url = 'https://www.enchantedlearning.com/wordlist/furniture.shtml#wls-id-a'

doc = Nokogiri::HTML(URI.open(url))

titles = doc.css(".wordlist-item")

titles.each do |title|
  puts title.text.strip
end

File.open('parsed.csv', 'w') do |file|
  file.truncate(0)
end

puts "Файл 'parsed' очищен"

File.open('parsed.csv', 'w') do |file|
  titles.each do |title|
    file.puts title.text.strip
  end
end

puts "Данные сохранены в файл 'parsed'"