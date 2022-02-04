# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'j.k. rowling', price: 10.99, published: '2001-01-01')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end  

  it 'is not valid without a publish date' do
    subject.published = nil
    expect(subject).not_to be_valid
  end 

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end 

  it 'is title matches harry potter' do
    expect(subject.title).to match "harry potter"
  end

  it "is author matches jk rowling" do 
    expect(subject.author).to match "j.k. rowling"
  end

end