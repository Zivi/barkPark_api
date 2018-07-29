require 'rails_helper'

RSpec.describe Park, type: :model do
  it { should belong_to(:county) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:lat) }
  it { should validate_presence_of(:lng) }
  it { should validate_presence_of(:active) }
  it { should validate_presence_of(:notes) }
  it { should validate_presence_of(:address) }
end
