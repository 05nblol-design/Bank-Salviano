# 🏦 FakeBank - Sistema Bancário Simulado

Um sistema bancário completo desenvolvido em React com funcionalidades de cadastro, transações, investimentos e financiamentos.

## 🚀 Funcionalidades

- ✅ **Autenticação**: Login e cadastro de usuários
- 💰 **Contas Bancárias**: Visualização de saldos e extratos
- 💸 **Transações**: Transferências entre contas
- 📈 **Investimentos**: Aplicação em diferentes tipos de investimentos
- 🏠 **Financiamentos**: Solicitação de empréstimos e financiamentos
- 💾 **Persistência**: Dados salvos no localStorage do navegador

## 🛠️ Tecnologias Utilizadas

- **React 18** - Biblioteca JavaScript para interfaces de usuário
- **Lucide React** - Ícones modernos e elegantes
- **Tailwind CSS** - Framework CSS utilitário
- **LocalStorage** - Armazenamento local dos dados

## 📦 Instalação

### 1. Clone ou crie o projeto

```bash
# Opção 1: Criar projeto do zero
npx create-react-app fake-bank-system
cd fake-bank-system

# Opção 2: Se já tiver a pasta
mkdir fake-bank-system
cd fake-bank-system
```

### 2. Instale as dependências

```bash
# Instalar React (se criou pasta do zero)
npm init react-app .

# Instalar dependências adicionais
npm install lucide-react

# Instalar Tailwind CSS (opcional)
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
```

### 3. Configure o Tailwind CSS

Adicione ao arquivo `tailwind.config.js`:

```javascript
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: { extend: {} },
  plugins: [],
}
```

Adicione ao arquivo `src/index.css`:

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

## 📁 Estrutura de Pastas

```
fake-bank-system/
├── public/
│   ├── index.html
│   └── favicon.ico
├── src/
│   ├── components/
│   │   ├── Auth/
│   │   │   └── LoginForm.jsx
│   │   ├── Dashboard/
│   │   │   └── Dashboard.jsx
│   │   ├── Navigation/
│   │   │   └── Navigation.jsx
│   │   ├── Transactions/
│   │   │   └── Transactions.jsx
│   │   ├── Investments/
│   │   │   └── Investments.jsx
│   │   └── Loans/
│   │       └── Loans.jsx
│   ├── hooks/
│   │   └── useLocalStorage.js
│   ├── utils/
│   │   └── formatters.js
│   ├── App.js
│   ├── App.css
│   └── index.js
├── package.json
├── tailwind.config.js
└── README.md
```

## 🎯 Como usar

### 1. Executar o projeto

```bash
npm start
```

O aplicativo será aberto em `http://localhost:3000`

### 2. Login/Cadastro

- **Para testar**: Use qualquer email e senha
- **Cadastro**: Preencha os dados ou deixe em branco para usar dados demo

### 3. Funcionalidades disponíveis

#### 📊 Dashboard
- Visualização de contas e saldos
- Últimas transações
- Resumo financeiro

#### 💸 Transações
- Realizar transferências
- Visualizar histórico completo
- Filtros por data e tipo

#### 📈 Investimentos
- Aplicar em diferentes modalidades
- Acompanhar rendimentos
- Portfolio de investimentos

#### 🏠 Financiamentos
- Solicitar empréstimos
- Simular parcelas
- Acompanhar status das solicitações

## 💡 Dicas de Desenvolvimento

### Adicionar novas funcionalidades

1. **Novo componente**: Criar em `src/components/`
2. **Nova rota**: Adicionar no `Navigation.jsx`
3. **Novos dados**: Usar `useLocalStorage` hook
4. **Estilos**: Usar classes do Tailwind CSS

### Personalizar dados

Edite os dados iniciais no arquivo `App.js`:

```javascript
// Adicionar mais contas
setAccounts([
  { id: 1, type: 'Conta Corrente', balance: 5420.50, number: '12345-6' },
  { id: 2, type: 'Conta Poupança', balance: 12350.80, number: '12345-7' },
  // Sua nova conta aqui
]);
```

### Adicionar validações

Use as funções em `utils/formatters.js`:

```javascript
import { isValidCPF, isValidEmail } from './utils/formatters';

if (!isValidEmail(email)) {
  alert('Email inválido!');
  return;
}
```

## 🎨 Customização de Estilos

### Cores do tema

Edite `tailwind.config.js` para personalizar:

```javascript
theme: {
  extend: {
    colors: {
      'bank-primary': '#2563eb',
      'bank-secondary': '#16a34a',
      'bank-accent': '#f59e0b',
    }
  }
}
```

### Componentes personalizados

Crie estilos reutilizáveis:

```css
/* src/App.css */
.btn-bank {
  @apply px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors;
}

.card-bank {
  @apply bg-white p-6 rounded-xl shadow-lg;
}
```

## 🐛 Solução de Problemas

### Erro: Module not found

```bash
# Reinstalar dependências
rm -rf node_modules package-lock.json
npm install
```

### Tailwind não funciona

Verifique se adicionou corretamente ao `index.css`:

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

### localStorage não persiste

Dados são salvos automaticamente. Se não persistir, verifique:

1. Navegador em modo incógnito
2. Configurações de privacidade
3. Espaço em disco disponível

## 📱 Responsividade

O sistema é totalmente responsivo:

- **Desktop**: Layout completo
- **Tablet**: Adaptação de grid
- **Mobile**: Interface otimizada

## 🔒 Segurança

⚠️ **IMPORTANTE**: Este é um sistema de demonstração:

- **NÃO** use em produção
- **NÃO** insira dados reais
- Dados ficam apenas no navegador
- Não há criptografia real

## 🚀 Próximos Passos

Ideias para expandir o sistema:

- [ ] Integração com API real
- [ ] Autenticação JWT
- [ ] Notificações push
- [ ] Gráficos de análise
- [ ] Exportação de dados
- [ ] Chat de suporte
- [ ] Modo escuro
- [ ] PWA (Progressive Web App)

## 📄 Licença

Este projeto é apenas para fins educacionais e demonstrativos.

## 🤝 Contribuição

1. Fork o projeto
2. Crie uma branch (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

---

💻 Desenvolvido com ❤️ para aprendizado e demonstração