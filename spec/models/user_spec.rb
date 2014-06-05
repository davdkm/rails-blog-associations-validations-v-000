require 'spec_helper'

describe User do
  context 'User validations' do 
    its "user is valid" do 
      expect(User.create(name: "Scabbers")).to be_valid
    end

    its "invalid with no name" do 
      expect(User.create(name: nil)).to_not be_valid
    end

    its "invalid if name already exists" do 
      User.create(name: "Scabbers")
      expect(User.create(name: "Scabbers")).to_not be_valid
    end
  end

  context 'User relationship to Post' do 
    it 'has many posts' do 
      expect(@crookshanks.posts.count).to eq(2)
    end
  end

end