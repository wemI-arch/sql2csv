@echo off
echo SQL_to_CSV Setup
echo;
SET folder=csv
echo �ۑ���t�H���_�@= %~dp0%folder%
SET table=manifests
echo �w��e�[�u���@�@= %table%
echo �ϊ����t�@�C��
for %%a in (%*) do (echo %%a)
echo;
echo �o�͊J�n
cd %~dp0
md %folder% > NUL 2>&1
for %%a in (%*) do (
sqlite3 %%a ".separator | \r\n" ".output %folder%/%%~na_%table%.csv" "SELECT * from %table%;" ".exit"
echo %~dp0%folder%\%%~na_%table%.csv
)
echo;
echo �ϊ��I��
pause