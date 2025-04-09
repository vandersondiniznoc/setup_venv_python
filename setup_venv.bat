@echo off
set VENV_DIR=venv

echo 🔧 Criando ambiente virtual Python em %VENV_DIR%...

python -m venv %VENV_DIR%

if exist %VENV_DIR%\Scripts\activate.bat (
    call %VENV_DIR%\Scripts\activate.bat
    echo 📦 Instalando dependências: requests, beautifulsoup4, pandas...
    pip install --upgrade pip
    pip install requests beautifulsoup4 pandas

    echo ✅ Ambiente pronto!
    echo Para ativar novamente, use:
    echo     %VENV_DIR%\Scripts\activate.bat
) else (
    echo ❌ Falha ao criar o ambiente virtual. Verifique se o Python est\u00e1 instalado e no PATH.
)
pause
