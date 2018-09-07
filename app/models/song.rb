class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :release_year, uniqueness: true, if: {current_song.artist == song.artist}
end
