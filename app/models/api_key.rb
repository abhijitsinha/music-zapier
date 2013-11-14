class ApiKey < ActiveRecord::Base
  attr_accessible :access_token

  before_create :generate_access_token

  private
    def generate_access_token
      begin
        self.access_token = SecureRandom.hex
      end
    end
end
