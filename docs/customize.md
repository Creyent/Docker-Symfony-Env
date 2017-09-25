# Customize the build

Update docker-compose.yml file and add/remove the following lines:

## Remove/Add PHPMyAdmin

```yml
service:
    # ...
    phpmyadmin:
        image: phpmyadmin/phpmyadmin
        container_name: ${CONTAINER_PREFIX}.phpmyadmin
        depends_on:
            - mysql
        links:
            - mysql
        environment:
            - PMA_ARBITRARY=1
        ports:
            - ${PHPMYADMIN_PORT}:80
        restart: always
        networks:
            - backend
            - frontend
```

## Remove/Add Node

```yml
service:
    # ...
    node:
        build:
        context: ./node
        dockerfile: node.dockerfile
        image: ${CONTAINER_PREFIX}.node
        container_name: ${CONTAINER_PREFIX}.node
        depends_on:
            - front-data
        volumes_from:
            - front-data
        entrypoint:
            - npm
            - start
        ports:
            - ${NODE_PORT}:3000
        restart: always
        networks:
            - frontend
```