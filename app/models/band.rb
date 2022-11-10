class Band < ActiveRecord::Base
    has_many :concerts
    has_many :venues, through: :concerts

    def play_in_venue(venue, date)
        Concert.create(date: date, venue_id: venue.id, band_id: self.id)
    end

    def all_introductions
        self.venues.map do |venue|  "Hello #{venue.city}!!!!! We are #{self.name} and we're from #{self.hometown}" end
    end

    def self.most_performances
        self.all.max_by {|band| band.concerts.count}
    end
end
