# Project Automation Tests Surgo Health
Test project in Ruby test automation using Cucumber, Capybara and Selenium

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
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project contains automated test cases for features provided by the Takeda: geographically granular indices. Each test case contains a list of steps and expected results after certain actions. When a new feature is added from by the team, we should have automated test coverage added to this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

TThis project is using the technologies below:

* ![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
* ![Cucumber](https://user-images.githubusercontent.com/102477169/187096400-3b052fba-e2d7-45a7-b820-a09447a11d52.svg)
* ![Selenium](https://img.shields.io/badge/Selenium-43B02A?style=for-the-badge&logo=Selenium&logoColor=white)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Capybara 2 or higher.
- Your Capybara driver must use [selenium-webdriver](https://rubygems.org/gems/selenium-webdriver/). capybara-lockstep deactivates itself for any other driver.
- This gem was tested with a Selenium-controlled Chrome browser. [Chrome in headless mode](https://makandracards.com/makandra/492109-running-capybara-tests-in-headless-chrome) is recommended, but not required.
- This gem was only tested with Rails, but there's no Rails dependency.

### Installation

Assuming that you're using Rails this is the application's `Gemfile`:

```ruby
  gem "capybara", "3.33"
  gem "cucumber", "5.2"
  gem "selenium-webdriver", "3.142.7"
  gem "rspec", "3.9"
  gem "httparty", "0.18.1"
  gem "rufo", "0.12.0"
  gem "allure-cucumber", "2.13.6.3"
  gem 'faker'
  gem 'matrix'
  gem 'site_prism'
```
And then execute:

```bash
$ bundle install
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [x] Validate Login on Admin portal
- [x] Validate Login on Surgo Health poral as a user
- [x] Validate Manage accounts and companies
- [x] Saving research on dashboard
- [x] Deleting research on dashboard
- [x] Geo Search
    - [ ] Test
    - [ ] Test

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

<!-- CONTACT -->
## Contact

Your Name - [@your_twitter](https://twitter.com/your_username) - email@example.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
