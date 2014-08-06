class Document < ActiveRecord::Base
  dragonfly_accessor :file    # defines a reader/writer for image
  belongs_to :maintenance
end