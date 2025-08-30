#!/bin/bash

# Script de configuração automática do FakeBank System
echo "🏦 Configurando FakeBank System..."

# Criar projeto React
echo "📦 Criando projeto React..."
npx create-react-app fake-bank-system
cd fake-bank-system

# Instalar dependências
echo "🔧 Instalando dependências..."
npm install lucide-react
npm install -D tailwindcss postcss autoprefixer

# Configurar Tailwind
echo "🎨 Configurando Tailwind CSS..."
npx tailwindcss init -p

# Criar estrutura de pastas
echo "📁 Criando estrutura de pastas..."
mkdir -p src/components/Auth
mkdir -p src/components/Dashboard
mkdir -p src/components/Navigation
mkdir -p src/components/Transactions
mkdir -p src/components/Investments
mkdir -p src/components/Loans
mkdir -p src/hooks
mkdir -p src/utils

# Criar arquivo de configuração do Tailwind
cat > tailwind.config.js << 'EOF'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#eff6ff',
          500: '#3b82f6',
          600: '#2563eb',
          700: '#1d4ed8',
        }
      }
    },
  },
  plugins: [],
}
EOF

# Atualizar index.css
cat > src/index.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
    'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
    sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  background-color: #f3f4f6;
}
EOF

echo "✅ Configuração concluída!"
echo "🚀 Para iniciar o projeto:"
echo "   cd fake-bank-system"
echo "   npm start"
echo ""
echo "📝 Não se esqueça de copiar os componentes dos arquivos .jsx!"
echo "📋 Veja o README.md para instruções detalhadas."