#!/bin/bash
podman build -t wjtje/toolbox-base base
podman build -t wjtje/toolbox-development-base development-base
podman build -t wjtje/toolbox-development-flutter development-flutter
