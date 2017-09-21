# Docker-Symfony-Env

------------

## PHP 7, Apache, MySQL docker environment

Docker-compose file for dockerized Symfony development environment.
WIP, at the momment works for any PHP project, working on the Symfony project.

## Docker containers with

- Data Volume (code share)
- DB-Data Volume (MySQL data persist)
- PHP 7
- Apache2
- Composer
- Timezone according to `.env` file
- MySQL
- PHPMyAdmin

Built on a docker-compose.yml file.

Note: This environment configuration was made on Windows 10, on Linux the shared folders are not setted before because it works out of the box.
The usual IP used for docker is (192.168.99.100), if differs please replace for your setup.

## Requirements

- Docker
- VirtualBox (usually installed with docker)
- GIT (just for clone this repo)

## Installation

- Go into any terminal and clone or fork the project.
- Browse into cloned folder:
    ```bash
    $ cd Docker-Symfony-Env
    ```
- Create a `.env` from the `.env.dist` file. Configure it according to your needs.
    ```bash
        cp .env.dist .env
    ```
- Build the required images typing in the docker terminal:
    ```bash
    $ docker-compose build
    ```

## Use

- Browse into cloned folder:
    ```bash
    $ cd Docker-Symfony-Env
    ```
- Create and run the containers typing in the docker terminal:
    ```bash
    $ docker-compose up -d
    ```

Now open your browser and go to: <http://192.168.99.100:8080/phpinfo.php> it should show you the PHP 7 info page.
Ports are configured in `.env`

- Apps & Sites: go to <http://192.168.99.100:8080/>
- PHPMyAdmin: go to <http://192.168.99.100:8081/>

## Customize

If you dont need PHPMyAdmin or want to add/remove other containers see this [file](docs/customize.md).

## TODO

- Updates to Readme
- Add guide to share folders on Windows.
- Add diagram of the structure.
- Some tests on Symfony development.
- Add Symfony configurations.
- Explanations of the dockerfiles.
- Guide to modify the docker-compose.yml file.

## Comments

Any comment feel free to mail me: creyent [at] gmail [dot] com

## Contributing

Thanks for contributing!
If you find errors/typos/anything/... please send me a Pull Request, mail me or open an issue.