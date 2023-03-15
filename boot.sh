#!/bin/bash

source venv/bin/activate

exec voila gpt4.ipynb --Voila.ip=0.0.0.0 --port=8080 --no-browser --strip_sources=False --theme=dark

