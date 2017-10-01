module Fossa
  class Log < ApplicationRecord
    serialize :ip, IpEncoder.new
    before_save do
      self.referer = self.referer.try(:[], 0..254)
      self.path = self.path.try(:[], 0..254)
    end
  end
end
