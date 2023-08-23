<!-- Improved compatibility of back to top link: See: https://github.com/marchandmd/hockeyStats/pull/73 -->

<a name="readme-top"></a>

<!--
*** Thanks for checking out the hockeyStats. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">

  <h1 align="center">hockeyStats</h1>

  <p align="center">
    <h2>Monolithic Rails app consuming 3rd party NHL API</h2>
    <br />
    <img src="app/assets/images/mcdavid.png" alt="alt_text" >
    <br />
    <a href="https://gitlab.com/dword4/nhlapi/-/blob/master/stats-api.md"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/marchandmd/hockeyStats/issues">Report Bug</a>
    ·
    <a href="https://github.com/marchandmd/hockeyStats/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#schema">Schema</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

This is going to be a project to generate metrics for players, however, it is going to be iterative and focus on establishing just some basics for an MVP, and then grow from there.

This project is going to rely heavily on the NHL API, which has been well documented by Drew Hynes (and which I've contributed a small amount to). 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

-   [![Ruby][ruby.com]][ruby-url]
-   [![Rspec][rspec.com]][rspec-url]

Gems used in testing, development:

- `pg`
- `faraday`
- `pry-rails`
- `factory_bot_rails`
- `shoulda-matchers`


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

Until this app is deployed to a SaaS site, this project will only be living in a development environment

clone this repo, and `cd` into the root directory

setup the database (if you have postgres on your local machine) with `rails db:{create,seed}`

run `rails nhl:seed_regular_season_games` and `rails nhl:add_teams`

then spin up the server with `rails s`

### Prerequisites

ruby v2.7.4

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

The intended usage of this app will be natively in the browser, though with the intention of scaling to a full remote UX to be accessible via mobile devices.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!--SCHEMA  EXAMPLES -->

## Schema
<div>
    <img src="app/assets/images/schema_1.png" alt="alt_text" >
</div>


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap
- [x] Remove unneeded files from `poros` dir
- [ ] Add additional copy to the home page/landing page
- [ ] Add ability to log out
- [ ] Complete user stories 4 - 6
- [ ] Re-factor linescores/scores controller to use a Facade to process info from Linescores NhlApiService
- [ ] deploy to either Heroku, Render or Fly.IO
- [ ] troubleshoot app not respecting FILE path
- [ ] Integration testing for signing up
- [ ] Refactor `sessions#create` to extract and DRY up the method
- [ ] Refactor `sessions#create` to address the complexity around creating a new user and how to populate the password and or update it upon user creation when using Oauth
- [ ] Troubleshoot the zulu time format of the game date from the API for accuracy with testing
- [ ] Update to use dynamic data VS using the rake task to seed the database

See the [open issues](https://github.com/marchandmd/hockeyStats/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Michael Marchand - MichaelDavidMarchand@gmail.com

Project Link: [https://github.com/MarchandMD/hockeyStats](https://github.com/marchandmd/hockeyStats)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

-   [Choose an Open Source License](https://choosealicense.com)
-   [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
-   [Img Shields](https://shields.io)
-   [GitHub Pages](https://pages.github.com)
-   [Rubocop](https://rubocop.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/marchandmd/hockeyStats.svg?style=for-the-badge
[contributors-url]: https://github.com/marchandmd/hockeyStats/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/marchandmd/hockeyStats.svg?style=for-the-badge
[forks-url]: https://github.com/marchandmd/hockeyStats/network/members
[stars-shield]: https://img.shields.io/github/stars/marchandmd/hockeyStats.svg?style=for-the-badge
[stars-url]: https://github.com/marchandmd/hockeyStats/stargazers
[issues-shield]: https://img.shields.io/github/issues/marchandmd/hockeyStats.svg?style=for-the-badge
[license-shield]: https://img.shields.io/github/license/marchandmd/hockeyStats.svg?style=for-the-badge
[issues-url]: https://github.com/marchandmd/hockeyStats/issues
[license-url]: https://github.com/marchandmd/hockeyStats/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/mmarchand1/
[product-screenshot]: images/screenshot.png
[bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[bootstrap-url]: https://getbootstrap.com
[ruby.com]: https://img.shields.io/badge/ruby-v2.7.4-red
[ruby-url]: https://ruby-doc.org/core-2.7.2/
[rspec.com]: https://img.shields.io/badge/rspec-v3.12-success
[rspec-url]: https://rspec.info/documentation/
