# Customize the build

## Remove/Add PHPMyAdmin

Update docker-compose.yml file and add/remove the following lines:
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