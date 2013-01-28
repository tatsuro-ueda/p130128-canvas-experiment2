# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Image.delete_all

Image.create(path: 'sample01.jpg')
Image.create(path: 'sample02.jpg')
Image.create(path: 'sample03.jpg')
Image.create(path: 'sample04.jpg')
Image.create(path: 'sample05.jpg')
Image.create(path: 'sample11.jpg')
Image.create(path: 'sample12.jpg')
Image.create(path: 'sample13.jpg')
Image.create(path: 'sample14.jpg')
Image.create(path: 'sample15.jpg')
