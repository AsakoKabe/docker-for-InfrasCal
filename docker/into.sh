#!/bin/bash
docker exec --user "docker_infrascal" -it infrascal \
        /bin/bash -c "cd /home; /bin/bash"