# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Weapon.create(name: "Sting", weapon_type: "sword", slug: "sting", slain: 4)
Weapon.create(name: "AK-47", weapon_type: "gun", slug: "ak-47", slain: 47)
Weapon.create(name: "Katana", weapon_type: "sword", slug: "katana", slain: 434)
Weapon.create(name: "Nintendo Light Gun", weapon_type: "light gun", slug: "nintendo-light-gun", slain: 0)
