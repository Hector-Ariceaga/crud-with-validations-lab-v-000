class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :release_year, uniqueness: true, if: -> {self.artist_name == song.artist_name}
end
