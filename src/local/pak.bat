@echo off
setlocal enabledelayedexpansion

rem 設定
set size=64

rem set pak:pakサイズが入力されなかった際にこの数値が使用されます。

rem ここから下は弄らないでください

rem makeobjがあるかどうか。なければ終了
if not exist "makeobj.exe" (
echo "このアプリの動作にはmakeobjが必要です。makeobjをこのファイルがあるフォルダと同じフォルダに入れてください。"
pause >nul
exit /b 0
)

rem アドオンの内容を入力。
set /p size="pakのサイズを入力してください。（例:128）※省略すると設定したサイズが指定されます。詳しくはpak.batをテキストエディタで開いてください。： "
set /p pak="pakファイルの名前を入力してください。（例:new.pak）※省略すると個別のpakが作成されます。： "
set /p dat="pakするdatファイルの名前を入力してください。（例:sample.dat）※省略するとフォルダ内すべてのdatファイルが指定されます。※複数設定したい場合は半角スペースで区切ってください。： "

rem 入力が省略された場合の代入処理
if "!size!" == "" (
set size = "!pak!"
)
IF "!pak!" == "" (
set pak=./
)
IF "!dat!" == "" (
set dat=./
)

rem pak処理
set /P STR_INPUT="処理を開始します。よろしいですか？（Y/N）： "
if "!STR_INPUT!" == "y" (
    makeobj pak!size! "!pak!" "!dat!" > err.txt 2>&1
) else if "!STR_INPUT!"=="Y" ( 
    makeobj pak!size! "!pak!" "!dat!" > err.txt 2>&1
) else (
    echo "!STR_INPUT!：処理を中止しました。"
    pause >nul
    exit /b 0
)

echo "処理を終了しました。エラーはerr.txtを確認してください。"

pause >nul