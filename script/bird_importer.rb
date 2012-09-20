require "csv"
file_path = File.join("V:","eduerr","BirdsWeb","birds_info2.csv")
CSV.foreach file_path do |row|
	next if row[0] == "english_name"
	bird = Bird.where(common_name: row[0]).first || Bird.new
	bird.common_name = row[0]
	bird.chinese_name = row[1]
	bird.scientific_name = row[2]
	bird.set_seasons row[3]
	bird.size = row[4]
	bird.chapter = row[5]
	bird.english_description = row[6]
	bird.chinese_description = row[7]
	bird.save validate: false
end
	