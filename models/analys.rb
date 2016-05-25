require 'csv'
#customers = CSV.read('k2.csv')
#files = Dir.glob(".")
#puts files
#puts Dir.pwd

CSV.foreach ('/Users/user/ownCloud/cx3-4/21/db/k2.csv') do |row|
  #puts row.inspect
  first_name=row[1]
  puts first_name
end
