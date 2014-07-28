require 'spec_helper'

describe Searcher, '#results' do 
  it 'returns results from a twitter search' do 
    searcher = Searcher.new('TechTalk')
    expect(searcher.results.length).to eq 100
  end
end