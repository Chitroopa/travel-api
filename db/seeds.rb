class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
      name: Faker::Address.street_name,
      country: Faker::Address.country,
      city: Faker::Address.city,
      review: Faker::HarryPotter.quote
      )

      puts "#{i} generate_destinations"
    end
  end

end

Seed.begin
