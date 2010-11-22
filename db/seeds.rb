# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Brand.create(:name => 'Alpha')
Brand.create(:name => 'Beta')
Brand.create(:name => 'Gama')
BrandSubtype.create(:name => 'Alpha')
BrandSubtype.create(:name => 'Beta')
BrandSubtype.create(:name => 'Gama')
