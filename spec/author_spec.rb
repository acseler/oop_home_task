require 'spec_helper'
require 'author.rb'

describe Author do
  before(:all) do
    @author = Author.new('Mark Twain', 'Now he is dead. The end.')
  end

  it 'should be a Author class' do
    expect(@author.class).to eq Author
  end

  it 'should has initialize method and getters/setters' do
    expect(@author.name).to eq 'Mark Twain'
    expect(@author.biography).to eq 'Now he is dead. The end.'
    @author.name = 'Shakespeare'
    @author.biography = 'He is dead too.'
    expect(@author.name).to eq 'Shakespeare'
    expect(@author.biography).to eq 'He is dead too.'
  end
end
