@echo off
echo SQL_to_CSV Setup
echo;
SET folder=csv
echo 保存先フォルダ　= %~dp0%folder%
SET table=manifests
echo 指定テーブル　　= %table%
echo 変換元ファイル
for %%a in (%*) do (echo %%a)
echo;
echo 出力開始
cd %~dp0
md %folder% > NUL 2>&1
for %%a in (%*) do (
sqlite3 %%a ".separator | \r\n" ".output %folder%/%%~na_%table%.csv" "SELECT * from %table%;" ".exit"
echo %~dp0%folder%\%%~na_%table%.csv
)
echo;
echo 変換終了
pause