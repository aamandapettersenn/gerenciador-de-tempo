@echo off

:menu
cls
echo Bem-vindo ao Gerenciador de Tempo e Produtividade!
echo.
echo Menu:
echo 1. Adicionar Tarefa
echo 2. Ver Tarefas
echo 3. Definir Meta de Produtividade
echo 4. Ver Meta de Produtividade
echo 5. Sair
echo.

set /p opcao="Digite o número da opção desejada: "

if "%opcao%"=="1" goto adicionar_tarefa
if "%opcao%"=="2" goto ver_tarefas
if "%opcao%"=="3" goto definir_meta
if "%opcao%"=="4" goto ver_meta
if "%opcao%"=="5" goto fim

:adicionar_tarefa
cls
echo Adicionar Tarefa:
set /p tarefa="Digite o nome da tarefa: "
echo %date% %time% - %tarefa% >> tarefas.txt
echo Tarefa adicionada com sucesso!
pause
goto menu

:ver_tarefas
cls
echo Tarefas Registradas:
type tarefas.txt
pause
goto menu

:definir_meta
cls
echo Definir Meta de Produtividade:
set /p meta="Digite a meta de produtividade (em minutos): "
echo Meta definida: %meta% minutos
pause
goto menu

:ver_meta
cls
echo Meta de Produtividade: %meta% minutos
pause
goto menu

:fim
exit