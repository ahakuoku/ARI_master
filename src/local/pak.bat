@echo off
setlocal enabledelayedexpansion

rem �ݒ�
set size=64

rem set pak:pak�T�C�Y�����͂���Ȃ������ۂɂ��̐��l���g�p����܂��B

rem �������牺�͘M��Ȃ��ł�������

rem makeobj�����邩�ǂ����B�Ȃ���ΏI��
if not exist "makeobj.exe" (
echo "���̃A�v���̓���ɂ�makeobj���K�v�ł��Bmakeobj�����̃t�@�C��������t�H���_�Ɠ����t�H���_�ɓ���Ă��������B"
pause >nul
exit /b 0
)

rem �A�h�I���̓��e����́B
set /p size="pak�̃T�C�Y����͂��Ă��������B�i��:128�j���ȗ�����Ɛݒ肵���T�C�Y���w�肳��܂��B�ڂ�����pak.bat���e�L�X�g�G�f�B�^�ŊJ���Ă��������B�F "
set /p pak="pak�t�@�C���̖��O����͂��Ă��������B�i��:new.pak�j���ȗ�����ƌʂ�pak���쐬����܂��B�F "
set /p dat="pak����dat�t�@�C���̖��O����͂��Ă��������B�i��:sample.dat�j���ȗ�����ƃt�H���_�����ׂĂ�dat�t�@�C�����w�肳��܂��B�������ݒ肵�����ꍇ�͔��p�X�y�[�X�ŋ�؂��Ă��������B�F "

rem ���͂��ȗ����ꂽ�ꍇ�̑������
if "!size!" == "" (
set size = "!pak!"
)
IF "!pak!" == "" (
set pak=./
)
IF "!dat!" == "" (
set dat=./
)

rem pak����
set /P STR_INPUT="�������J�n���܂��B��낵���ł����H�iY/N�j�F "
if "!STR_INPUT!" == "y" (
    makeobj pak!size! "!pak!" "!dat!" > err.txt 2>&1
) else if "!STR_INPUT!"=="Y" ( 
    makeobj pak!size! "!pak!" "!dat!" > err.txt 2>&1
) else (
    echo "!STR_INPUT!�F�����𒆎~���܂����B"
    pause >nul
    exit /b 0
)

echo "�������I�����܂����B�G���[��err.txt���m�F���Ă��������B"

pause >nul