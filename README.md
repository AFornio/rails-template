# rails-template

1. Change database name on config/database.yml

2. Run:
  ```
  rails db:create
  ```
3. To install devise:
  ```
  rails generate devise:install
  rails generate devise User
  ```
4. To install active admin:
  ```
  rails g active_admin:install --skip-users
  ```
5. Run migrations and seeds:
  ```
  rails db:migrate
  rails db:seed
  ```
6. You're done.


## Gem's included:
- dotenv
- postgres
- devise
- active admin
- carrierwave
- aws 
