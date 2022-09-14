# frozen_string_literal: true
module Fossa
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
