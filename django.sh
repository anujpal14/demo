#!bin/bash
code_clone(){
        git clone https://github.com/LondheShubham153/django-notes-app.git
       echo "cloning git repository"
}
install_requirements(){
        echo"installing dependencies"
        sudo yum install docker.io nginx -y
}
require_restarts(){
        sudo systemctl enable docker
        sudo systemctl enable nginx
}
deploy(){
docker build -t noteapp .
docker run -d -p 8000:8000 noteapp:latest
}
echo "deplyment started"
code_clone
install_requirements
require_restarts
deploy
echo"deplomeny done"
