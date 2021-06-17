

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h2 align="center">diy-ide</h2>

  <p align="center">
    Build your own <a href="https://en.wikipedia.org/wiki/Integrated_development_environment)">Integrated Development Environment</a> in your terminal!
    <br />
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
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
    <li><a href="#tutorials">Tutorials</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

Do you spend a lot of time working in the terminal?  What's it like?  If your answer isn't "IT'S AMAZING!", there's a reason why.
The terminal has barely evolved over its lifetime in comparison to most of the tools we use every day.  Fortunately there are a
number of tools you can incorporate into your terminal to create an IDE that rivals commercially available ones.

Here is why I'm doing this:
* Creating your own IDE is hard work.  It shouldn't be.  So I'm trying to find the simplest path to building one
* I want a vanity project that shows off a range of my knowledge and skillset

Goals
* Do as little work as possible.  Maximize yield
* Practice [Documentation Driven Development](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)
* Learn how to use [asciinema](https://asciinema.org/)
* Create something useful and potentially transormative

A list of commonly used resources that I find helpful are listed in the acknowledgements.

### Built With

I used so many tools for this project.
* [asciinema](https://asciinema.org/)

<!-- GETTING STARTED -->
## Getting Started

This project provides an Ubuntu 18.04 vm for you to safely practice the tutorials without affecting
your local environment.  To get up and running follow these simple example steps.

### Prerequisites

* [ VirtualBox ](https://www.virtualbox.org/wiki/Downloads) or your choice of Virtual Machine manager
that provides compatibility with vagrant.

* [ vagrant ](https://www.vagrantup.com/)
  ```sh
  # using Homebrew
  brew install vagrant
  # using apt
  apt install vagrant

  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/TimSpence/diy-ide.git
   ```
2. Set up your vm
   ```sh
   vagrant init
   vagrant up
   ```
3. Try it out
   ```sh
   vagrant ssh
   # the project root folder is linked to $HOME/diy-ide in the vm
   cd ./diy-ide
   ```

<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_


<!-- TUTORIALS -->
## Tutorials
Check out the tutorials:
* [ tmux ](./tutorials/README.md)


<!-- ROADMAP -->
## Roadmap

<!-- See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues). -->
* :white_check_mark: Write this README
* :white_check_mark: Create an ubuntu VM with Vagrant
* Write a template to use for tutorials
* Make an asciinema for first lesson: setting up tmux
* Script an asciinema recorder
* Make a series of tmux lessons
* Pagination
* Make a series of vim lessons
* Make a series of zsh lessons
* Make a series of command line tools lessons

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the ??? License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Project Link: [https://github.com/TimSpence/diy-ide](https://github.com/TimSpence/diy-ide)




<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Grip: GitHub Readme Instant Preview](https://github.com/joeyespo/grip)
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
