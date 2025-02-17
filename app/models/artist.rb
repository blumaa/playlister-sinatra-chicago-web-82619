require_relative './concerns/slugifiable.rb'

class Artist < ActiveRecord::Base
has_many :songs
has_many :genres, through: :songs
include Slugifiable::InstanceMethods
extend Slugifiable::ClassMethods

  # def genres
  #   self.songs.map{ |song| song.genres }.flatten
  # end

end
