set PYTHONPATH=%~dp0DLLs;%~dp0libs;%~dp0lib
python.exe helper.py

if errorlevel 1 pause&&exit

if exist KindleEar goto kindle
if exist KindleEar-master\KindleEar-master goto master-master
if exist KindleEar-master goto master
echo "Cannot find KindleEar"
goto end

:kindle
python.exe appcfg.py --skip_sdk_update_check update KindleEar\app.yaml KindleEar\module-worker.yaml
python.exe appcfg.py --skip_sdk_update_check update KindleEar
goto end

:master
python.exe appcfg.py --skip_sdk_update_check update KindleEar-master\app.yaml KindleEar-master\module-worker.yaml
python.exe appcfg.py --skip_sdk_update_check update KindleEar-master
goto end

:master-master
python.exe appcfg.py --skip_sdk_update_check update KindleEar-master\KindleEar-master\app.yaml KindleEar-master\KindleEar-master\module-worker.yaml
python.exe appcfg.py --skip_sdk_update_check update KindleEar-master\KindleEar-master

:end
pause
