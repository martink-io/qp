# 3-Steps Quotation Process

### Time of completion: ~4 hours


##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby 2.4.1
- Rails 5.2.2

##### 1. Clone the repository

```bash
git clone git@github.com:martink-io/qp.git
```

##### 2. Database

Default sqlite3 used

Pin sqlite3 to v1.3.13 due to sqlite3_adapter conflict with the new version of sqlite3 gem

```bash
gem 'sqlite3', '~> 1.3.13'
```

##### 3. Create,setup and seed the database

Run the following commands:

```ruby
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

Access the site with the URL http://localhost:3000
