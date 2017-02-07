require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe User, type: :model do
  it "is valid by default" do
    user = User.new
    user.save!
    p user
    expect(user).to be_valid
  end
end
