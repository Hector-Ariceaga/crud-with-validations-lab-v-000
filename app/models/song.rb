class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: {scope: :release_year}
  validates :released, exclusion: {in: [nil]}
end
