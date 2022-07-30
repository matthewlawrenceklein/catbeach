require "rails_helper"

RSpec.describe Cat, type: :model do
  it { should belong_to(:user) }
end