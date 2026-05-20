#!/usr/bin/env bash
# =============================================================
# publish-to-github.sh
# Cria o repositório advogado-br no GitHub e faz o push.
# Uso: bash publish-to-github.sh giuseppetrevizan_GITHUB
# =============================================================

set -e

GITHUB_USER="${1:-}"
REPO_NAME="advogado-br"
SKILL_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ -z "$GITHUB_USER" ]; then
  echo "❌ Informe seu usuário do GitHub:"
  echo "   bash publish-to-github.sh giuseppetrevizan"
  exit 1
fi

# Verifica dependências
for cmd in git curl; do
  if ! command -v "$cmd" &>/dev/null; then
    echo "❌ '$cmd' não encontrado. Instale antes de continuar."
    exit 1
  fi
done

echo ""
echo "📋 Usuário  : $GITHUB_USER"
echo "📦 Repo     : $REPO_NAME"
echo "📁 Diretório: $SKILL_DIR"
echo ""

# Solicita token se não estiver no ambiente
if [ -z "$GITHUB_TOKEN" ]; then
  echo "🔑 Cole seu GitHub Personal Access Token (escopo 'repo'):"
  echo "   (Gere em: https://github.com/settings/tokens/new)"
  read -rs GITHUB_TOKEN
  echo ""
fi

# Substitui giuseppetrevizan no README pelos dados reais
sed -i.bak "s/giuseppetrevizan/$GITHUB_USER/g" "$SKILL_DIR/README.md" && rm -f "$SKILL_DIR/README.md.bak"
echo "✅ README.md atualizado com usuário '$GITHUB_USER'"

# Cria o repositório no GitHub via API
echo "🚀 Criando repositório '$REPO_NAME' no GitHub..."
HTTP_STATUS=$(curl -s -o /tmp/gh_response.json -w "%{http_code}" \
  -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d "{
    \"name\": \"$REPO_NAME\",
    \"description\": \"Skill para Claude Code — redige documentos jurídicos brasileiros: termos de uso (SaaS/marketplace/app/e-commerce), contratos de afiliados, LGPD, NDA e mais.\",
    \"private\": false,
    \"auto_init\": false,
    \"topics\": [\"claude\", \"claude-code\", \"skill\", \"juridico\", \"brasil\", \"lgpd\", \"termos-de-uso\"]
  }")

if [ "$HTTP_STATUS" = "201" ]; then
  echo "✅ Repositório criado com sucesso!"
elif [ "$HTTP_STATUS" = "422" ]; then
  echo "⚠️  Repositório '$REPO_NAME' já existe — continuando com push..."
else
  echo "❌ Erro ao criar repositório (HTTP $HTTP_STATUS):"
  cat /tmp/gh_response.json
  exit 1
fi

# Inicializa git e faz push
cd "$SKILL_DIR"

if [ ! -d ".git" ]; then
  git init
  git branch -M main
fi

git add -A
git commit -m "feat: skill advogado-br — documentos jurídicos brasileiros

- Termos de uso especializados: SaaS, marketplace, app, e-commerce
- Contrato de afiliados com aceite eletrônico
- Política de privacidade (LGPD)
- NDA, prestação de serviços, notificação extrajudicial
- Suporte a pessoa física (CPF) e jurídica (CNPJ)
- Formatos: .docx, .pdf, .md" 2>/dev/null || true

REMOTE_URL="https://$GITHUB_TOKEN@github.com/$GITHUB_USER/$REPO_NAME.git"

if git remote get-url origin &>/dev/null; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

git push -u origin main --force

echo ""
echo "🎉 Publicado com sucesso!"
echo ""
echo "🔗 Repositório : https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "📦 Comando de instalação (macOS/Linux):"
echo "   mkdir -p ~/.claude/skills && curl -L https://github.com/$GITHUB_USER/$REPO_NAME/archive/refs/heads/main.zip -o /tmp/advogado-br.zip && unzip -q /tmp/advogado-br.zip -d /tmp/ && cp -r /tmp/advogado-br-main/advogado-br ~/.claude/skills/ && rm -rf /tmp/advogado-br.zip /tmp/advogado-br-main && echo 'Instalado!'"
echo ""
echo "🔄 Comando de atualização (macOS/Linux):"
echo "   rm -rf ~/.claude/skills/advogado-br && curl -L https://github.com/$GITHUB_USER/$REPO_NAME/archive/refs/heads/main.zip -o /tmp/advogado-br.zip && unzip -q /tmp/advogado-br.zip -d /tmp/ && cp -r /tmp/advogado-br-main/advogado-br ~/.claude/skills/ && rm -rf /tmp/advogado-br.zip /tmp/advogado-br-main && echo 'Atualizado!'"
