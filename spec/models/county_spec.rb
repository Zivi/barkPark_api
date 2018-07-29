require 'rails_helper'

RSpec.describe County, type: :model do
  it { should have_many(:parks).dependent(:destroy) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:lat) }
  it { should validate_presence_of(:lng) }
  it { should validate_presence_of(:active) }
end
