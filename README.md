# Wavey
Ruby on Rails API backend for Wavey, a music production app that uses motions to play sounds.

## Getting Started

### Prerequisites

You'll need to install:

* PostgreSQL

The front-end repo can be found here:

* [Wavey Frontend](https://github.com/kristinatong/wavey-frontend)

### Installing

* Navigate to the `backend` folder and run:

  ```sh
  bundle install
  rails db:create
  rails db:migrate
  rails s
  ```
  
* In another terminal tab, navigate to the `frontend` folder and run:

  ```sh
  open index.html
  ```
  
## Built With

* [Ruby on Rails](https://rubyonrails.org/) - Server-side web application framework
* [PostgreSQL](https://www.postgresql.org/) - Database for Active Record
* [React](https://reactjs.org/) - Front-end framework
* [Redux](https://redux.js.org/) - State container
* [React-Konva](https://github.com/konvajs/react-konva) - Canvas with React
* [Semantic UI](https://react.semantic-ui.com/) - Front-end framework for styling
* [Material UI](https://material-ui.com/) - Front-end framework for styling

## Contributing

1. Fork it (<https://github.com/kristinatong/wavey-backend/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

## Versioning

* 0.1.0
    * First official release

## Authors

* **Kristina Tong** - [kristinatong](https://github.com/kristinatong)

## Acknowledgments

* [diff-cam-engine](https://github.com/lonekorean/diff-cam-engine) - Core engine for building motion detection web apps
