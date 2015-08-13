# ChinookDatabase

The Chinook database is an open source sample database that represents a store selling music tracks to customers. 
It can be useful as test fixtures for other gems and libraries requiring sample data.

See official site: https://chinookdatabase.codeplex.com/.

This gem contains the sample sqlite database that was adapted to conform with ActiveRecord standards, 
as well as ActiveRecord wrapper classes.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'chinook_database'
end  
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chinook_database

## Usage

```ruby
require 'chinook_database'

# Same as running:
# ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ChinookDatabase.path
ChinookDatabase.connect

Artist.count
# => 275
```

## The Schema

### Artists, albums and tracks
```
genres
  id
  name
  
media_types
  id
  name

artists
  id
  name
  
albums
  id
  title
  artist_id
  
tracks
  id
  name
  album_id
  media_type_id
  genre_id
  composer
  milliseconds
  bytes
  unit_price
```  
  
### Playlists and tracks they contain
```  
playlists
  id
  name

playlists_tracks
  playlist_id
  track_id
```    
  
### Employees and reporting structure  
```  
employees
  id
  last_name
  first_name
  title
  reports_to_employee_id  (employee)
  birth_date
  hire_date
  address
  city
  state
  country
  postal_code
  phone
  fax
  email
```
  
### Customers and invoices
```  
customers
  id
  first_name
  last_name
  company
  address
  city
  state
  country
  postal_code
  phone
  fax
  email
  support_rep_id  (employee)

invoices
  id
  customer_id
  invoice_date
  billing_address
  billing_city
  billing_state
  billing_country
  billing_postal_code
  total
  
invoice_lines
  id
  invoice_id
  track_id
  unit_price
  quantity
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

To build the sqlite db from the sql file run: `rm lib/db/Chinook.sqlite && cat lib/db/Chinook_Sqlite_AutoIncrementPKs.sql | sqlite3 lib/db/Chinook.sqlite`

## Contributing

1. Fork it ( https://github.com/[my-github-username]/chinook_database/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
