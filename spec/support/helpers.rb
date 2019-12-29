module Helpers
  def have_movie(title)
    have_selector(".movie", text: title)
  end
end

RSpec.configure do |config|
  config.include Helpers
end
