@echo off
:: ��git�ݴ���������ļ�
git add -A

if %errorlevel% == 0  (
    echo "�ļ���ӳɹ�"
    echo.
    ) else (
    echo "�ļ����ʧ��"
    goto END
    )

:: ���޸��ύ�����ذ汾��
set /p commitText="�����뱾���ύ��������Ϣ��"
git commit -m %commitText%

if %errorlevel% == 0  (
    echo "�ļ��ύ�ɹ�"
    echo.
    ) else (
    echo "�ļ��ύʧ��"
    goto END
    )

:: ���޸��ϴ���Զ�ֿ̲�
git push

if %errorlevel% == 0  (echo "�ļ��ϴ���Զ�ֿ̲�ɹ���") else (
    echo "�ļ��ϴ�ʧ�ܣ������Ƿ�����Զ�ֿ̲���й����������������Ƿ�������"
    goto END
    )

:END