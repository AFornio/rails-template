# rails-template

0. Run:

```
bundle install
yarn install
```

1. Change database name on config/database.yml

2. Run:

```
rails db:create
```

3. To install devise:

```
rails generate devise:install
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

## Included:

- Bootstrap & Jquery
- gem dotenv
- gem postgres
- gem devise
- gem active admin
- gem carrierwave
- gem aws
