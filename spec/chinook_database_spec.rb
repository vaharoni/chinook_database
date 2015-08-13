require 'spec_helper'

describe ChinookDatabase do
  it 'has a version number' do
    expect(ChinookDatabase::VERSION).not_to be nil
  end

  it 'returns correct values' do
    expect(Album.count).to eq(347)
    expect(Artist.count).to eq(275)
    expect(Customer.count).to eq(59)
    expect(Employee.count).to eq(8)
    expect(Genre.count).to eq(25)
    expect(Invoice.count).to eq(412)
    expect(InvoiceLine.count).to eq(2240)
    expect(MediaType.count).to eq(5)
    expect(Playlist.count).to eq(18)
    expect(Track.count).to eq(3503)
  end
end
