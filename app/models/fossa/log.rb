module Fossa
  class Log < ApplicationRecord
    serialize :ip, IpEncoder.new
  end
end
