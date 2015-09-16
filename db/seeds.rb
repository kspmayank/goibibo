# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

File.open("/home/kspmayank/Downloads/rd.rb", "r") do |f|
  f.each_line do |line|
    s = line.split(/'/)
    p City.create(name: s[3], code: s[7], worldareacode: s[11], country: s[15], longitude: s[19], latitude: s[23], airport: s[27], gmt: s[31])
    #break
  end
end
# cityarr.each do |c|
# 	p City.create(name: c['city'], code: c['code'], worldareacode: c['worldareacode'], country: c['country'], longitude: c['longitude'], latitude: c['latitude'], airport: c['airportname'], gmt: c['gmt'])
# end

