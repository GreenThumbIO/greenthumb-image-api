cd /greenthumb-image-api/thumbor-greenthumb-filter
python setup.py bdist_wheel
python -m pip install dist/thumbor_greenthumb_filter-0.0.3-py2-none-any.whl --upgrade
thumbor -p 3030 -c ../thumbor.conf
