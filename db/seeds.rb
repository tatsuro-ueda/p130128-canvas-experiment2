# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Image.delete_all

Image.create(type: 'reverse', path: 'sample01.jpg')
Image.create(type: 'reverse', path: 'sample02.jpg')
Image.create(type: 'reverse', path: 'sample03.jpg')
Image.create(type: 'reverse', path: 'sample04.jpg')
Image.create(type: 'reverse', path: 'sample05.jpg')
Image.create(type: 'original', path: 'sample11.jpg')
Image.create(type: 'original', path: 'sample12.jpg')
Image.create(type: 'original', path: 'sample13.jpg')
Image.create(type: 'original', path: 'sample14.jpg')
Image.create(type: 'original', path: 'sample15.jpg')
Image.create(type: 'divided', path: 'sample21.jpg')
Image.create(type: 'divided', path: 'sample22.jpg')
Image.create(type: 'divided', path: 'sample23.jpg')
Image.create(type: 'divided', path: 'sample24.jpg')
Image.create(type: 'divided', path: 'sample25.jpg')
Image.create(type: 'two-by-two', path: 'sample31.png')
Image.create(type: 'two-by-two', path: 'sample32.png')
Image.create(type: 'two-by-two', path: 'sample33.png')
Image.create(type: 'two-by-two', path: 'sample34.png')
Image.create(type: 'two-by-two', path: 'sample35.png')
