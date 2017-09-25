# Docker-Symfony-Env

## PHP 7, Apache, MySQL docker environment

Docker-compose file for a dockerized Symfony development environment.

**WIP**, at the momment works for any PHP project, working on the Symfony configurations.

## Docker composer specifications

- Data Volumes
    1. DB-data Volume (MySQL data persist)
    2. Back-data Volume (backend code share)
    3. Front-data Volume (frontend code share)
        > I decided to keep the data volumes in this way to keep an order in the project files.
- PHP 7
- Apache2
    - Composer
- Timezone according to `.env` file
- MySQL
- PHPMyAdmin
- NodeJS

Built on a docker-compose.yml file.

Note: This environment configuration was made on Windows 10. On Linux the shared folders are not setted before because it works out of the box.
The usual IP used for docker is (192.168.99.100), if differs please replace for your actual setup.

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

- Once cloned, go into folder:
    ```bash
    $ cd Docker-Symfony-Env
    ```
- Create and run the containers typing in the docker terminal:
    ```bash
    $ docker-compose up -d
    ```

Now open your browser and go to: <http://192.168.99.100:8080/phpinfo.php> it should show you the PHP 7 info page.
Ports are configured in `.env`

### URLs

- Frontend: <http://192.168.99.100:3000/>
- Backend: <http://192.168.99.100:8080/>
- PHPMyAdmin: <http://192.168.99.100:8081/>
- MySQL: <http://192.168.99.100:3386/>

## Customize

If you dont need PHPMyAdmin, Node or want to add/remove other containers see this [file](docs/customize.md).

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