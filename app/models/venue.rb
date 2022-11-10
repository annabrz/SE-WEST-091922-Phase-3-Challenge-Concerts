class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :bands, through: :concerts

    def concert_on(date)
        self.concerts.date.find {|date| date = self.concerts.date}
    end

    def most_frequent_band
        self.bands.max_by {|band| band.concerts.count}

    end


end
