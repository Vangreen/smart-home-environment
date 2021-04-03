# smart-home-environment
Docker-compose file and scripts for smart home project

## Requirements
- Git (with setup ssh key) 
- npm
- angular_cli
- maven 

## How to run 
Unpack under downloaded repositories: 
| Name | URL |
| ------ | ------ |
| smart-home-server - Backend | https://github.com/Martilius/smart-home-server |
| smart_home_web-app  - UI| https://github.com/Vangreen/smart_home_web-app |
  ```
  .
  run.sh
  docker-compose.yml
  ├── /smart_home_web-app                 # UI
  └── /smart-home-server                  # Backend
```

and run:
- On x86 
```sh run.sh```
- On arm 
```sh run.sh arm```

## Contributors 
[@Martilius](https://github.com/Martilius)
