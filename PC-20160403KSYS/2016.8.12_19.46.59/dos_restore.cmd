
@echo on
echo This file is only meant to be ran from the Windows Recovery Console. Do not run from with in Windows or it will just fail.

set BackupLocation=%CD%

IF EXIST "Z:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=Z:
IF EXIST "Y:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=Y:
IF EXIST "X:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=X:
IF EXIST "W:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=W:
IF EXIST "V:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=V:
IF EXIST "U:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=U:
IF EXIST "T:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=T:
IF EXIST "S:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=S:
IF EXIST "R:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=R:
IF EXIST "Q:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=Q:
IF EXIST "P:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=P:
IF EXIST "O:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=O:
IF EXIST "N:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=N:
IF EXIST "M:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=M:
IF EXIST "L:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=L:
IF EXIST "K:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=K:
IF EXIST "J:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=J:
IF EXIST "I:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=I:
IF EXIST "H:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=H:
IF EXIST "G:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=G:
IF EXIST "F:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=F:
IF EXIST "E:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=E:
IF EXIST "D:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=D:
IF EXIST "C:\Windows\tweaking.com-regbackup-PC-20160403KSYS-Windows-7-Ultimate-(64-bit).dat" set WindowsDrive=C:

IF DEFINED WindowsDrive GOTO start_process
GOTO error_out

:start_process

attrib -h -s "%WindowsDrive%\Windows\System32\Config\components"
attrib -h -s "%WindowsDrive%\Windows\System32\Config\components.old"
del "%WindowsDrive%\Windows\System32\Config\components.old"
copy "%WindowsDrive%\Windows\System32\Config\components" "%WindowsDrive%\Windows\System32\Config\components.old"
del "%WindowsDrive%\Windows\System32\Config\components"
copy "%BackupLocation%\C\Windows\System32\Config\components" "%WindowsDrive%\Windows\System32\Config\components"

attrib -h -s "%WindowsDrive%\Windows\System32\Config\default"
attrib -h -s "%WindowsDrive%\Windows\System32\Config\default.old"
del "%WindowsDrive%\Windows\System32\Config\default.old"
copy "%WindowsDrive%\Windows\System32\Config\default" "%WindowsDrive%\Windows\System32\Config\default.old"
del "%WindowsDrive%\Windows\System32\Config\default"
copy "%BackupLocation%\C\Windows\System32\Config\default" "%WindowsDrive%\Windows\System32\Config\default"

attrib -h -s "%WindowsDrive%\Windows\System32\Config\sam"
attrib -h -s "%WindowsDrive%\Windows\System32\Config\sam.old"
del "%WindowsDrive%\Windows\System32\Config\sam.old"
copy "%WindowsDrive%\Windows\System32\Config\sam" "%WindowsDrive%\Windows\System32\Config\sam.old"
del "%WindowsDrive%\Windows\System32\Config\sam"
copy "%BackupLocation%\C\Windows\System32\Config\sam" "%WindowsDrive%\Windows\System32\Config\sam"

attrib -h -s "%WindowsDrive%\Windows\System32\Config\security"
attrib -h -s "%WindowsDrive%\Windows\System32\Config\security.old"
del "%WindowsDrive%\Windows\System32\Config\security.old"
copy "%WindowsDrive%\Windows\System32\Config\security" "%WindowsDrive%\Windows\System32\Config\security.old"
del "%WindowsDrive%\Windows\System32\Config\security"
copy "%BackupLocation%\C\Windows\System32\Config\security" "%WindowsDrive%\Windows\System32\Config\security"

attrib -h -s "%WindowsDrive%\Windows\System32\Config\software"
attrib -h -s "%WindowsDrive%\Windows\System32\Config\software.old"
del "%WindowsDrive%\Windows\System32\Config\software.old"
copy "%WindowsDrive%\Windows\System32\Config\software" "%WindowsDrive%\Windows\System32\Config\software.old"
del "%WindowsDrive%\Windows\System32\Config\software"
copy "%BackupLocation%\C\Windows\System32\Config\software" "%WindowsDrive%\Windows\System32\Config\software"

attrib -h -s "%WindowsDrive%\Windows\System32\Config\system"
attrib -h -s "%WindowsDrive%\Windows\System32\Config\system.old"
del "%WindowsDrive%\Windows\System32\Config\system.old"
copy "%WindowsDrive%\Windows\System32\Config\system" "%WindowsDrive%\Windows\System32\Config\system.old"
del "%WindowsDrive%\Windows\System32\Config\system"
copy "%BackupLocation%\C\Windows\System32\Config\system" "%WindowsDrive%\Windows\System32\Config\system"


attrib -h -s "%WindowsDrive%\Users\Administrator\ntuser.dat"
attrib -h -s "%WindowsDrive%\Users\Administrator\ntuser.dat.old"
del "%WindowsDrive%\Users\Administrator\ntuser.dat.old"
copy "%WindowsDrive%\Users\Administrator\ntuser.dat" "%WindowsDrive%\Users\Administrator\ntuser.dat.old"
del "%WindowsDrive%\Users\Administrator\ntuser.dat"
copy "%BackupLocation%\C\Users\Administrator\ntuser.dat" "%WindowsDrive%\Users\Administrator\ntuser.dat"

attrib -h -s "%WindowsDrive%\Users\Administrator\AppData\Local\Microsoft\Windows\UsrClass.dat"
attrib -h -s "%WindowsDrive%\Users\Administrator\AppData\Local\Microsoft\Windows\UsrClass.dat.old"
del "%WindowsDrive%\Users\Administrator\AppData\Local\Microsoft\Windows\UsrClass.dat.old"
copy "%WindowsDrive%\Users\Administrator\AppData\Local\Microsoft\Windows\UsrClass.dat" "%WindowsDrive%\Users\Administrator\AppData\Local\Microsoft\Windows\UsrClass.dat.old"
del "%WindowsDrive%\Users\Administrator\AppData\Local\Microsoft\Windows\UsrClass.dat"
copy "%BackupLocation%\C\Users\Administrator\AppData\Local\Microsoft\Windows\UsrClass.dat" "%WindowsDrive%\Users\Administrator\AppData\Local\Microsoft\Windows\UsrClass.dat"

attrib -h -s "%WindowsDrive%\Users\Default\ntuser.dat"
attrib -h -s "%WindowsDrive%\Users\Default\ntuser.dat.old"
del "%WindowsDrive%\Users\Default\ntuser.dat.old"
copy "%WindowsDrive%\Users\Default\ntuser.dat" "%WindowsDrive%\Users\Default\ntuser.dat.old"
del "%WindowsDrive%\Users\Default\ntuser.dat"
copy "%BackupLocation%\C\Users\Default\ntuser.dat" "%WindowsDrive%\Users\Default\ntuser.dat"

attrib -h -s "%WindowsDrive%\Users\Default\AppData\Local\Microsoft\Windows\UsrClass.dat"
attrib -h -s "%WindowsDrive%\Users\Default\AppData\Local\Microsoft\Windows\UsrClass.dat.old"
del "%WindowsDrive%\Users\Default\AppData\Local\Microsoft\Windows\UsrClass.dat.old"
copy "%WindowsDrive%\Users\Default\AppData\Local\Microsoft\Windows\UsrClass.dat" "%WindowsDrive%\Users\Default\AppData\Local\Microsoft\Windows\UsrClass.dat.old"
del "%WindowsDrive%\Users\Default\AppData\Local\Microsoft\Windows\UsrClass.dat"
copy "%BackupLocation%\C\Users\Default\AppData\Local\Microsoft\Windows\UsrClass.dat" "%WindowsDrive%\Users\Default\AppData\Local\Microsoft\Windows\UsrClass.dat"

attrib -h -s "%WindowsDrive%\Windows\ServiceProfiles\LocalService\ntuser.dat"
attrib -h -s "%WindowsDrive%\Windows\ServiceProfiles\LocalService\ntuser.dat.old"
del "%WindowsDrive%\Windows\ServiceProfiles\LocalService\ntuser.dat.old"
copy "%WindowsDrive%\Windows\ServiceProfiles\LocalService\ntuser.dat" "%WindowsDrive%\Windows\ServiceProfiles\LocalService\ntuser.dat.old"
del "%WindowsDrive%\Windows\ServiceProfiles\LocalService\ntuser.dat"
copy "%BackupLocation%\C\Windows\ServiceProfiles\LocalService\ntuser.dat" "%WindowsDrive%\Windows\ServiceProfiles\LocalService\ntuser.dat"

attrib -h -s "%WindowsDrive%\Windows\ServiceProfiles\NetworkService\ntuser.dat"
attrib -h -s "%WindowsDrive%\Windows\ServiceProfiles\NetworkService\ntuser.dat.old"
del "%WindowsDrive%\Windows\ServiceProfiles\NetworkService\ntuser.dat.old"
copy "%WindowsDrive%\Windows\ServiceProfiles\NetworkService\ntuser.dat" "%WindowsDrive%\Windows\ServiceProfiles\NetworkService\ntuser.dat.old"
del "%WindowsDrive%\Windows\ServiceProfiles\NetworkService\ntuser.dat"
copy "%BackupLocation%\C\Windows\ServiceProfiles\NetworkService\ntuser.dat" "%WindowsDrive%\Windows\ServiceProfiles\NetworkService\ntuser.dat"


goto:eof

:error_out

ECHO Couldn't Find Which Drive Is Windows. Restore Canceled. Refer to help on Tweaking.com on what to do next.

goto:eof

