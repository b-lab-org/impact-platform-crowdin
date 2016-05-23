# Impact Platform: Crowdin
[Docker](https://www.docker.com/) container for [Crowdin](https://crowdin.com/).

## Overview
Use with the [data container](https://github.com/b-lab-org/impact-platform-data).

Runs a `crowdin-cli` command from `/data/www` and expects a `crowdin.yaml` file. See [here](https://crowdin.com/page/cli-tool) for documentation.

## Docker-Compose Usage
```
crowdin:
    build: impactbot/impact-platform-crowdin
    volumes_from:
        - data
    environment:
        - CROWDIN_API_KEY=yourapikey
```
