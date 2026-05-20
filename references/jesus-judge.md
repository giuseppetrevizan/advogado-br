# Jesus Judge — Critérios Específicos de Análise por Tipo de Documento

Este arquivo complementa os critérios gerais do SKILL.md com pontos de verificação específicos para cada tipo de documento. O Jesus Judge deve consultar a seção correspondente ao documento que está analisando.

---

## Contrato de Afiliados / Programa de Associados

**Pontos críticos obrigatórios a verificar:**
- Frase de divulgação obrigatória presente (identificação de publicidade — CDC art. 36 e CONAR)? Ausência = problema crítico.
- Cláusula de LGPD presente? Base legal correta (execução de contrato)?
- Foro: se afiliado for pessoa física consumidora, cláusula de eleição de foro do titular não pode sobrepor o foro do domicílio do consumidor (CDC art. 101). Presença de eleição de foro único sem ressalva = problema moderado.
- Arbitragem: se for a única via de resolução para pessoa física = cláusula abusiva (CDC art. 51, VII) = problema crítico.
- Comissão definida ou referenciada claramente? Sem referência a tabela ou valor = lacuna grave.
- Cláusula de rescisão imediata por fraude: presente?
- Relação entre as partes declarada como independente (sem vínculo empregatício)?
- Aceite eletrônico: se é contrato de adesão online, há cláusula de aceite eletrônico com fundamento legal (art. 107 CC + MP 2.200-2/2001)?

**Jurisprudência relevante a verificar:**
- STJ, REsp 1.168.027: cláusulas de adesão restritivas devem ser interpretadas contra quem as redigiu.
- ANPD: programa de afiliados que compartilha dados de cliques/conversões com afiliados é tratamento de dados pessoais — base legal e informação ao titular são obrigatórias.

---

## Termos de Uso (Site Institucional / Blog)

**Pontos críticos obrigatórios a verificar:**
- Identificação do titular com CNPJ/CPF e canal de contato? Ausência = problema crítico (Decreto 7.962/2013 art. 2º para e-commerce; boa prática para demais).
- Limitação de responsabilidade exclui vício/defeito do serviço ao consumidor? = cláusula abusiva (CDC art. 51, I) = problema crítico.
- Direito de arrependimento de 7 dias presente se houver cobrança online (CDC art. 49)?
- Idade mínima definida? Tratamento de dados de menores exige consentimento dos pais (LGPD art. 14).
- Marco Civil: se há conteúdo de usuários (UGC), cláusula de responsabilidade conforme arts. 19 e 21 da Lei 12.965/2014?
- Política de privacidade referenciada ou incluída?

---

## Termos de Uso — Sistemas Online (SaaS / Marketplace / App / E-commerce / Comunidade)

**Pontos críticos obrigatórios a verificar por modelo:**

### SaaS
- Licença de uso claramente definida como não exclusiva, intransferível, revogável?
- Limites do plano descritos (usuários, armazenamento, API)?
- Política de backup e responsabilidade por perda de dados: isenção só é válida se há ferramenta de exportação disponível ao usuário?
- SLA: se prometido percentual de uptime, há definição de como é medido e consequências de descumprimento?
- Portabilidade de dados ao encerrar: prazo definido para exportação antes da exclusão (direito LGPD art. 18, IV)?

### Marketplace
- Papel do titular como mero intermediário declarado claramente?
- Responsabilidade solidária perante consumidor não foi indevidamente excluída? (STJ — REsp 1.384.284: marketplace responde objetivamente por danos ao consumidor) = exclusão total de responsabilidade = problema crítico.
- Obrigações do vendedor incluem conformidade com CDC (prazo, nota fiscal, política de devolução)?
- Prazo de repasse e taxa da plataforma definidos?
- Canal de mediação de disputas entre usuários presente?

### App Mobile
- Permissões de dispositivo listadas e justificadas pela funcionalidade?
- Compras in-app: referência às políticas das lojas (Apple/Google) como regentes desses pagamentos?
- Funcionamento offline descrito se aplicável?

### E-commerce
- Decreto 7.962/2013 atendido: preço, prazo, forma de pagamento e SAC exibidos antes da compra?
- Direito de arrependimento de 7 dias: presente, não limitado, com procedimento de devolução e reembolso integral (CDC art. 49)?
- Prazo de reclamação por defeito: 30 dias (não durável) / 90 dias (durável) — CDC art. 26?
- Dados de pagamento: declaração de que são processados pelo gateway em ambiente PCI-DSS (não armazenados pelo titular)?

### Plataforma de Conteúdo / Comunidade
- Licença do conteúdo do usuário: não exclusiva, com direito de revogação pelo usuário?
- Conteúdo proibido listado (CSAM, ódio, violência, desinformação)?
- Marco Civil art. 21 (conteúdo íntimo não consensual): remoção imediata após notificação — obrigatório?
- Canal de denúncia disponível?

---

## Política de Privacidade (LGPD)

**Pontos críticos obrigatórios a verificar:**
- Controlador e encarregado (DPO) identificados com canal de contato? Ausência = problema crítico (LGPD art. 41).
- Para cada finalidade de tratamento, há base legal correspondente explícita (LGPD art. 7º)? Usar "consentimento" como base para tudo sem distinguir = problema crítico.
- Direitos do titular listados (art. 18): confirmação, acesso, correção, anonimização, portabilidade, eliminação, revogação de consentimento?
- Direito de reclamar à ANPD mencionado?
- Dados de menores de 12 anos: tratamento vedado sem consentimento dos responsáveis (art. 14)?
- Dados sensíveis (saúde, biometria, origem racial, orientação sexual): base legal específica do art. 11 aplicada?
- Transferência internacional: se houver, garantias do art. 33 mencionadas?
- Prazo de retenção definido por categoria de dado?
- Medidas de segurança mencionadas (art. 46)?

**Nota doutrinária:** ANPD Resolução CD/ANPD nº 2/2022 — políticas de privacidade devem ser redigidas em linguagem clara e acessível, não apenas técnica. Documentos excessivamente técnicos e inacessíveis ao cidadão médio violam o princípio da transparência (LGPD art. 6º, VI).

---

## Contrato de Prestação de Serviços

**Pontos críticos obrigatórios a verificar:**
- Descrição do objeto precisa o suficiente para determinar obrigações concretas? Objeto genérico demais = lacuna grave.
- Cláusula de ausência de vínculo empregatício presente? Verificar se os elementos de subordinação, pessoalidade e habitualidade estão presentes no contexto — se sim, alertar que a cláusula não basta (CLT arts. 2º e 3º; TST Súmula 331).
- Reajuste anual: índice definido (IPCA ou IGP-M)? Reajuste sem indexador ou acima de índices legais = problema moderado.
- Multa moratória e compensatória: multa acima de 2% ao mês sobre o valor do contrato pode ser reduzida por excessividade (CC art. 413) = sinalizar.
- LGPD: se o contratado tiver acesso a dados pessoais do contratante ou de seus clientes, cláusula de processador de dados (LGPD art. 39) necessária?
- Propriedade intelectual dos entregáveis: claramente definida?

---

## NDA — Acordo de Confidencialidade

**Pontos críticos obrigatórios a verificar:**
- Definição de "informação confidencial" abrangente mas com exceções claras (informação pública, já conhecida, desenvolvida independentemente, exigida por lei/ordem judicial)? Sem exceções = desequilíbrio grave = problema crítico.
- Prazo de sobrevivência da confidencialidade definido? Prazo ilimitado pode ser questionado judicialmente (CC art. 122 — condição puramente potestativa) = problema moderado.
- Multa por violação: proporcional? Multa desproporcional pode ser reduzida pelo juiz (CC art. 413).
- Possibilidade de tutela inibitória mencionada? (CPC art. 497 — fundamental para NDAs, pois o dano por divulgação é irreversível).
- Se houver dados pessoais no escopo: cláusula LGPD presente?
- NDA unilateral ou bilateral? Se unilateral mas redigido como bilateral, verificar consistência.

---

## Notificação Extrajudicial

**Pontos críticos obrigatórios a verificar:**
- Fatos narrados de forma objetiva, cronológica e sem afirmações sem lastro? Afirmações não comprovadas podem caracterizar dano moral reverso = problema crítico.
- Dispositivo legal ou cláusula contratual violada citada expressamente?
- Exigência clara e específica (o que exatamente se requer)?
- Prazo definido e razoável para cumprimento?
- Consequências do não atendimento descritas (medidas judiciais, rescisão, inscrição em órgãos de proteção)?
- Forma de comprovação de recebimento sugerida (AR, RTD, e-mail com confirmação)?
- Tom: firme mas sem ofensas, ameaças ou linguagem que possa ser usada contra o notificante?
- Se redigida por advogado: número OAB presente?

---

## Checklist universal do Jesus Judge

Independentemente do tipo de documento, verificar sempre:

| Item | OK? |
|---|---|
| Partes qualificadas corretamente (CPF/CNPJ, representante) | |
| Objeto do documento claramente definido | |
| Cláusula LGPD presente se há tratamento de dados pessoais | |
| Ausência de cláusulas abusivas (CDC art. 51) se relação de consumo | |
| Foro de eleição válido para o contexto (B2B ou B2C) | |
| Linguagem clara e acessível (não apenas técnica) | |
| Placeholders `[ENTRE COLCHETES]` ausentes ou listados explicitamente | |
| Aceite eletrônico fundamentado (art. 107 CC + MP 2.200-2/2001) se online | |
| Nenhuma referência a legislação estrangeira sem adaptação ao direito brasileiro | |
