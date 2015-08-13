require 'spec_helper'

describe ChinookDatabase do
  it 'has a version number' do
    expect(ChinookDatabase::VERSION).not_to be nil
  end

  it 'returns correct counts' do
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

  it 'has album associations' do
    expect(Album.first.artist.id).to eq(1)
    expect(Album.first.track_ids).to eq([1, 6, 7, 8, 9, 10, 11, 12, 13, 14])
  end

  it 'has artist associations' do
    expect(Artist.first.album_ids).to eq([1, 4])
  end

  it 'has customer associations' do
    expect(Customer.first.support_rep.id).to eq(3)
    expect(Customer.first.invoice_ids).to eq([98, 121, 143, 195, 316, 327, 382])
  end

  it 'has employee associations' do
    expect(Employee.first.reports_to).to eq(nil)
    expect(Employee.second.reports_to.id).to eq(1)
    expect(Employee.find(3).customer_ids).to eq([1, 3, 12, 15, 18, 19, 24, 29, 30, 33, 37, 38, 42, 43, 44, 45, 46, 52, 53, 58, 59])
  end

  it 'has genre associations' do
    expect(Genre.first.track_ids.count).to eq(1297)
  end

  it 'has invoice associations' do
    expect(Invoice.first.customer.id).to eq(2)
    expect(Invoice.first.invoice_line_ids).to eq([1, 2])
  end

  it 'has invoice lines associations' do
    expect(InvoiceLine.first.invoice.id).to eq(1)
    expect(InvoiceLine.first.track.id).to eq(2)
  end

  it 'has media type associations' do
    expect(MediaType.first.track_ids.count).to eq(3034)
  end

  it 'has playlist associations' do
    expect(Playlist.find(3).tracks.count).to eq(213)
  end

  it 'has tracks associations' do
    expect(Track.first.album.id).to eq(1)
    expect(Track.first.media_type.id).to eq(1)
    expect(Track.first.genre.id).to eq(1)
    expect(Track.first.playlist_ids).to eq([1, 8, 17])
  end
end
