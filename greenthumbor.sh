#!/bin/bash
cd /thumbor-greenthumb-filter
python3 setup.py bdist_wheel
python3 -m pip install dist/thumbor_greenthumb_filter-0.0.6-py3-none-any.whl --upgrade
thumbor -p 3030 -c /greenthumb-image-api/thumbor.conf
