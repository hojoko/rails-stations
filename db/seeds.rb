# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create(name: 'movie1', image_url: 'https://picsum.photos/200', year: 2000, description: '概要です', is_showing: 1)
Movie.create(name: 'movie2', image_url: 'https://picsum.photos/200', year: 2000, description: '概要です', is_showing: 1)
Movie.create(name: 'movie3', image_url: 'https://picsum.photos/200', year: 2000, description: '概要です', is_showing: 0)
Movie.create(name: 'movie4', image_url: 'https://picsum.photos/200', year: 2000, description: '概要です', is_showing: 0)


#席のマスターデータ
(1..5).each do |col|
  ('a'..'c').each do |row|
    Sheet.create(column: col, row: row)
  end
end