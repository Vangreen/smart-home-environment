# smart-home-environment
Docker-compose file and scripts for smart home project

## Requirements
- Git (with setup ssh key) 
- npm
- angular_cli
- maven 
- Docker and Docker compose

## How to run 
Unpack under downloaded repositories: 
| Name | URL |
| ------ | ------ |
| smart-home-server - Backend | https://github.com/Smart-Home-ESP/smart-home-server |
| smart_home_web-app  - UI| https://github.com/Smart-Home-ESP/smart_home_web-app |
  ```
  .
  run.sh
  docker-compose.yml
  ├── /smart_home_web-app                 # UI
  └── /smart-home-server                  # Backend
```

and run:
- On x86 linux
```sh run.sh```
- On arm linux
```sh run.sh arm```

## Contributors 
[@Martilius](https://github.com/Martilius)
