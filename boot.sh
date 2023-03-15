#!/bin/bash

source venv/bin/activate

exec voila volgpt-post-temp.ipynb --Voila.ip=0.0.0.0 --port=8080 --no-browser --strip_sources=False --theme=dark

