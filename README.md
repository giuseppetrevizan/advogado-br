# ⚖️ advogado-br — Skill de Documentos Jurídicos para Claude

Skill para o [Claude Code](https://claude.ai/code) que redige documentos jurídicos profissionais sob a **legislação brasileira**, com especialização em termos de uso de sistemas online.

> **Aviso:** os documentos gerados são modelos para revisão. Recomenda-se que um advogado habilitado revise antes do uso real, pois cada caso tem particularidades.

---

## 📄 Documentos suportados

| Tipo de documento | Cobertura |
|---|---|
| Termos de uso — SaaS, marketplace, app, e-commerce, plataforma | ✅ Especializado |
| Termos de uso — site institucional / blog | ✅ |
| Política de privacidade (LGPD) | ✅ |
| Contrato de afiliados / programa de indicação | ✅ |
| Contrato de prestação de serviços | ✅ |
| Acordo de confidencialidade (NDA) | ✅ |
| Notificação extrajudicial | ✅ |

### Modelos de negócio digital cobertos
- **SaaS / Ferramenta online** — licença de uso, limites de plano, SLA, suporte
- **Marketplace** — intermediação, taxas, repasses, responsabilidade solidária (STJ)
- **App mobile** — permissões de dispositivo, compras in-app, funcionamento offline
- **E-commerce** — processo de compra, entrega, troca/devolução, direito de arrependimento
- **Plataforma de conteúdo/comunidade** — UGC, moderação, Marco Civil, monetização de criadores

---

## ⚙️ Instalação

### Instalação pessoal (disponível em todos os projetos)

**macOS / Linux:**
```bash
mkdir -p ~/.claude/skills && \
curl -L https://github.com/giuseppetrevizan/advogado-br/archive/refs/heads/main.zip -o /tmp/advogado-br.zip && \
unzip -q /tmp/advogado-br.zip -d /tmp/ && \
cp -r /tmp/advogado-br-main/advogado-br ~/.claude/skills/ && \
rm -rf /tmp/advogado-br.zip /tmp/advogado-br-main && \
echo "✅ advogado-br instalado em ~/.claude/skills/"
```

**Windows (PowerShell):**
```powershell
New-Item -ItemType Directory -Force -Path "$HOME\.claude\skills" | Out-Null
Invoke-WebRequest "https://github.com/giuseppetrevizan/advogado-br/archive/refs/heads/main.zip" -OutFile "$HOME\Downloads\advogado-br.zip"
Expand-Archive "$HOME\Downloads\advogado-br.zip" -DestinationPath "$HOME\Downloads\advogado-br-tmp" -Force
Copy-Item "$HOME\Downloads\advogado-br-tmp\advogado-br-main\advogado-br" "$HOME\.claude\skills\" -Recurse -Force
Remove-Item "$HOME\Downloads\advogado-br.zip","$HOME\Downloads\advogado-br-tmp" -Recurse -Force
Write-Host "✅ advogado-br instalado em $HOME\.claude\skills\"
```

### Instalação no projeto atual (apenas para o repositório aberto)

**macOS / Linux:**
```bash
mkdir -p .claude/skills && \
curl -L https://github.com/giuseppetrevizan/advogado-br/archive/refs/heads/main.zip -o /tmp/advogado-br.zip && \
unzip -q /tmp/advogado-br.zip -d /tmp/ && \
cp -r /tmp/advogado-br-main/advogado-br .claude/skills/ && \
rm -rf /tmp/advogado-br.zip /tmp/advogado-br-main && \
echo "✅ advogado-br instalado em .claude/skills/"
```

**Windows (PowerShell):**
```powershell
New-Item -ItemType Directory -Force -Path ".claude\skills" | Out-Null
Invoke-WebRequest "https://github.com/giuseppetrevizan/advogado-br/archive/refs/heads/main.zip" -OutFile "$HOME\Downloads\advogado-br.zip"
Expand-Archive "$HOME\Downloads\advogado-br.zip" -DestinationPath "$HOME\Downloads\advogado-br-tmp" -Force
Copy-Item "$HOME\Downloads\advogado-br-tmp\advogado-br-main\advogado-br" ".claude\skills\" -Recurse -Force
Remove-Item "$HOME\Downloads\advogado-br.zip","$HOME\Downloads\advogado-br-tmp" -Recurse -Force
Write-Host "✅ advogado-br instalado em .claude\skills\"
```

### Verificar instalação

Abra uma sessão do Claude Code e digite:
```
/skills
```
O `advogado-br` deve aparecer na lista.

---

## 🔄 Atualização

### macOS / Linux:
```bash
rm -rf ~/.claude/skills/advogado-br && \
curl -L https://github.com/giuseppetrevizan/advogado-br/archive/refs/heads/main.zip -o /tmp/advogado-br.zip && \
unzip -q /tmp/advogado-br.zip -d /tmp/ && \
cp -r /tmp/advogado-br-main/advogado-br ~/.claude/skills/ && \
rm -rf /tmp/advogado-br.zip /tmp/advogado-br-main && \
echo "✅ advogado-br atualizado"
```

### Windows (PowerShell):
```powershell
Remove-Item "$HOME\.claude\skills\advogado-br" -Recurse -Force -ErrorAction SilentlyContinue
Invoke-WebRequest "https://github.com/giuseppetrevizan/advogado-br/archive/refs/heads/main.zip" -OutFile "$HOME\Downloads\advogado-br.zip"
Expand-Archive "$HOME\Downloads\advogado-br.zip" -DestinationPath "$HOME\Downloads\advogado-br-tmp" -Force
Copy-Item "$HOME\Downloads\advogado-br-tmp\advogado-br-main\advogado-br" "$HOME\.claude\skills\" -Recurse -Force
Remove-Item "$HOME\Downloads\advogado-br.zip","$HOME\Downloads\advogado-br-tmp" -Recurse -Force
Write-Host "✅ advogado-br atualizado"
```

> Após atualizar, o Claude Code detecta a mudança automaticamente na sessão atual — não precisa reiniciar.

---

## ⚖️ Jesus Judge — O Juiz Revisor

Todo documento gerado passa automaticamente pela análise do **Jesus Judge** antes de ser entregue.

**Quem é:** Juiz de Direito renomado, Doutor em Direito pela USP, 30 anos de magistratura, especialista em direito contratual, digital, do consumidor e proteção de dados.

**O que ele faz:** analisa o documento em 6 dimensões — Legalidade, Completude, Equilíbrio contratual, Clareza técnica, Adequação ao caso e Riscos — e emite um veredicto:

- ✅ **APROVADO** — documento gerado e entregue
- ⚠️ **APROVADO COM RESSALVAS** — entregue com lista de correções recomendadas
- ❌ **REPROVADO** — advogado corrige automaticamente e Jesus Judge revisa novamente

Você não precisa pedir a revisão — ela acontece sempre, automaticamente.

---

## 🚀 Como usar

Depois de instalado, basta pedir naturalmente numa conversa do Claude Code:

```
Cria termos de uso para meu SaaS
```
```
Preciso de um contrato de afiliados para minha loja
```
```
Gera uma política de privacidade LGPD para meu app
```
```
Quero um NDA para compartilhar com um parceiro
```

O skill é acionado automaticamente. Ele vai fazer algumas perguntas (tipo de sistema, pessoa física ou jurídica, modelo de comissão etc.) e gerar o documento nos formatos `.docx`, `.pdf` e `.md`.

---

## 📋 Conformidade legal

Os modelos gerados levam em conta:

- **Código Civil** (Lei 10.406/2002)
- **CDC** (Lei 8.078/1990) — proteção ao consumidor, cláusulas abusivas, direito de arrependimento
- **LGPD** (Lei 13.709/2018) — proteção de dados, bases legais, direitos do titular
- **Marco Civil da Internet** (Lei 12.965/2014) — guarda de logs, responsabilidade por conteúdo de terceiros
- **Decreto 7.962/2013** — comércio eletrônico
- **MP 2.200-2/2001** — validade jurídica de documentos eletrônicos
- **Jurisprudência STJ** — responsabilidade solidária de marketplaces

---

## 🗂️ Estrutura do repositório

```
advogado-br/
├── SKILL.md                          # Instruções principais do skill
└── references/
    ├── termos-sistemas-online.md     # Termos de uso: SaaS, marketplace, app, e-commerce
    ├── termos-de-uso.md              # Termos de uso: site institucional / blog
    ├── politica-privacidade.md       # Política de privacidade (LGPD)
    ├── contrato-afiliados.md         # Contrato de afiliados / associados
    ├── contrato-servicos.md          # Contrato de prestação de serviços
    ├── nda.md                        # Acordo de confidencialidade
    └── notificacao-extrajudicial.md  # Notificação extrajudicial
```

---

## 🤝 Contribuição

Pull requests são bem-vindos. Para mudanças maiores, abra uma issue primeiro para discutir o que você gostaria de alterar.

---

## ⚠️ Aviso legal

Este skill e os documentos que ele gera são **modelos para fins informativos e de referência**. Não constituem aconselhamento jurídico. Consulte um advogado habilitado (OAB) antes de utilizar qualquer documento em situações reais.

---

## 📄 Licença

MIT
