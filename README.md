
![Logo of the project](https://github.com/Lucasdfg07/iachei_app/blob/master/app/assets/images/iachei.png)


## Iachei APP
Iachei APP is a PWA to show and know other establishments near of you!! You choose the city that you live and can find all the sales of the city that you live.
Good to know places, see the rating and know where is, what products or services they sell, and much more!


## Technology 

Here are the technologies used in this project.

* Ruby version  2.5.1
* Rails version 5.0.1
* Docker 
* Docker Compose
* PostgreSQL

## Services Used

* Github

## Ruby Gems

* Devise
* Bootstrap
* JQuery-rails
* Omniauth
* Omniauth-facebook
* Omniauth-google-oauth2
* Carrierwave
* Serviceworker-rails
* Ransack
* Select2-rails
* Kaminari


## Getting started

* Dependency
  - Docker
  - Docker Compose

* To build the containers:
>    $ sudo docker-compose build

* To create the bank and do as migrations:
>    $ sudo docker-compose run --rm app bundle exec rake db:seed

* To install as gens:
>    $ sudo docker-compose run --rm app bundle install

* To run the project:
>    $ sudo docker-compose up


## How to use

### The app's initial page have google and facebook auth to Login or register. You can choose which way is better for you :p

![Initial image](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/initial_page.png)

![Login image](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/login_page.png)

![Register image](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/register_page.png)

### Yayyy, we're logged. For now you have to choose if it's a watcher client or a shopkeeper.

![Choose type image](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/choose_type.png)

### Now, tell the city that you live.

![Cities image](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/choose_city.png)

### We're on the way!!! That's the initial page of the app.

#### If it has establishments registered:

![Establishments image](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/establishments2.png)

![Establishments image](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/establishments3.png)

#### But if it's not:

![Establishments image](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/establishments.png)

### If you're a shopkeeper, you have some additional options on menu.

![Shopkeeper initial page](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/shopkeeper_initial_page.png)

### We can register a new establishment.

![New Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/new_establishment.png)

![New Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/new_establishment2.png)

### Let's see my establishment's tab.

![My Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/my_establishments.png)

### Hmmm, so we can edit or delete the establishment if it's mine...

![Show Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/show_establishment.png)

![Show Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/show_establishment_2.png)

![Show Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/show_establishment3.png)

![Show Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/show_establishment4.png)

![Show Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/show_establishment5.png)

![Show Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/show_establishment6.png)

### We can also edit or register some new address to the establishment. It's easier for franchises at the same city or not.

![Show Establishment](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/show_establishment6.png)

### If you have the Admin Permission:

![Admin Initial](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/admin_initial_page.png)

### You can register new cities:

![Admin Cities](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/about_cities.png)


### Or Edit Some city

![Admin City](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/about_city.png)


### And register or Edit some category

![Admin Categories](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/admin_categories.png)


![Admin Category](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/admin_category.png)


![Admin Category](https://github.com/Lucasdfg07/iachei_app/blob/master/public/iachei_photos/admin_category2.png)


## Features

The main features of the application are:
 - All Users
  - See Establishments.
  - Rate the Establishment.
  - See Category.
  - See Establishment's Category.
 - Shopkeeper
  - Register new Establishments.
  - Register Establishment's Address.
  - Edit Establishment's Address.
  - Delete Establishment's Address.
  - Edit Establishment.
  - Delete Establishment.
 - Admin
  - Register Categories.
  - Edit Categories.
  - Delete Categories.
  - Register Cities.
  - Edit Cities.
  - Delete Cities.


## Links
  - Repository: https://github.com/Lucasdfg07/iachei_app
    - In case of sensitive bugs like security vulnerabilities, please contact
      Lucassiqueiraferandes07@gmail.com directly instead of using issue tracker. We value your effort
      to improve the security and privacy of this project!

  ## Versioning

  1.0.0.0


  ## Authors

  * **Lucas Siqueira Fernandes** 

  Please follow github and join us!
  Thanks to visiting me and good coding!
