# Movies App

The Movies app is a simple master-detail application that displays a list of popular movies using data from [The Movie Database (TMDb)](https://www.themoviedb.org/). It features a list of popular movies and a detailed view of each movie's information.

<div style="display: flex;">
  <img src="https://github.com/Rabbia-Ijaz/Movies/assets/63001234/27dd7612-9876-430d-9597-66953483fb43" style="width: 49%;" alt="Image 1">
  <img src="https://github.com/Rabbia-Ijaz/Movies/assets/63001234/70ae125f-acf5-4132-a2ab-9f4e745444a7" style="width: 49%;" alt="Image 2">
</div>

## Prerequisites

Before getting started, you'll need to create a free account at [TMDb](https://www.themoviedb.org/) and generate an API key. You can follow these steps to obtain an API key:
1. Visit [TMDb API Settings](https://www.themoviedb.org/settings/api).
2. Generate an API key.
3. Save your API key for use in the app.

## Features

- Display a list of popular movies obtained from the TMDb API.
- Access movie details that provide information about each movie.
- Handle edge cases gracefully, such as missing poster images, incomplete movie data, or empty API responses.

## Implementation Details

- The app is built using Swift.
- Followed MVVM Architecture
- Added Unit Tests

## Getting Started

1. Clone or download the project from this GitHub repository.

2. Open the project in Xcode.
   
4. open Movies/Movies/APIService/TmdbAPI.swift file and in two places replace "add api key" with "Bearer yourAPIkey" you will get on [TMDb API](https://www.themoviedb.org/settings/api)

5. Before running the app, make sure to add your TMDb API key to the project. You can do this by editing the configuration file or constants in your code.

6. Build and run the app on your iOS device or simulator.

7. Explore the list of popular movies and click on a movie to view its details.

## Acknowledgments

- The Movies app utilizes data from [The Movie Database (TMDb)](https://www.themoviedb.org/).

## Contact

If you have any questions, suggestions, or feedback, please feel free to reach out to the project maintainers:


- Email: rabbiaijaz19@gmail.com

Thank you for using the Movies app!

