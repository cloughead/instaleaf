# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'

file = File.read("#{Rails.root}/public/listings.json")
data = JSON.parse(file)


def set_type(t)
  return 'doctor' if t=="doctor"
  return ['storefront', 'smoke_spot'].sample
end

def hours_of_operation(obj)
  (d.beginning_of_week...d.beginning_of_week+7).map{|a|
    dh = d.dispensaryhours.new()
  }
end


data['data']['listings'].each do | listing |
  d = Dispensary.new(name: listing['name'], city: listing['city'], province: listing['state'], phone: '403-111-1111', email: 'test@instaleaf.ca', website: 'https://www.instaleaf.ca', kind: set_type(listing['type']), description: listing['intro_body'], lat:listing['latitude'], lng:listing['longitude'])
  # dh = d.dispensaryhours.new()
  d.save!

end

# DispensaryHour(id: integer, dispensary_id: integer, day: string, open: string, close: string, created_at: datetime, updated_at: datetime)

