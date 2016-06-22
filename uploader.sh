# ptbsare@ptbsare-PC ~ $ cd kindleear_uploader
# ptbsare@ptbsare-PC ~/kindleear_uploader $ cat uploader.sh
#!/bin/bash
export PYTHONPATH=./DLLs/:./libs/:./lib/:$PYTHONPATH
python helper.py
python appcfg.py --skip_sdk_update_check update kindleear/app.yaml kindleear/module-worker.yaml
python appcfg.py --skip_sdk_update_check update kindleear
# ptbsare@ptbsare-PC ~/kindleear_uploader $ chmod u+x uploader.sh
# ptbsare@ptbsare-PC ~/kindleear_uploader $ ./uploader.sh