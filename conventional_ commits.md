# Conventional Commits

Convenção para escrever mensagens de commit padronizadas, legíveis por pessoas e por ferramentas (geração de changelog, versionamento semântico automático etc.).

## Estrutura

```
<tipo>[escopo opcional][!]: <descrição>

[corpo opcional]

[rodapé(s) opcional(is)]
```

- **tipo**: categoria da mudança (`feat`, `fix`, `docs`...).
- **escopo** (opcional): parte do projeto afetada, entre parênteses. Ex.: `feat(login):`.
- **`!`** (opcional): indica *breaking change* (mudança que quebra compatibilidade). Ex.: `feat(api)!:`.
- **descrição**: resumo curto, no imperativo e em minúsculas, sem ponto final.
- **corpo** (opcional): explica o *porquê* e o contexto da mudança.
- **rodapé** (opcional): metadados, como `BREAKING CHANGE: ...`, `Closes #123`, `Refs #45`.

### Exemplos

```
feat(auth): adiciona login com Google
fix: corrige cálculo de desconto no carrinho
feat(api)!: remove endpoint /v1/users

BREAKING CHANGE: o endpoint /v1/users foi substituído por /v2/users.
```

## Tipos de commit

| Tipo | Quando usar | Impacto no SemVer |
|------|-------------|-------------------|
| `feat` | Nova funcionalidade | MINOR |
| `fix` | Correção de bug | PATCH |
| `docs` | Mudanças apenas em documentação | — |
| `style` | Formatação que não altera o comportamento | — |
| `refactor` | Reestruturação de código sem mudar comportamento | — |
| `perf` | Melhoria de desempenho | — |
| `test` | Adição ou correção de testes | — |
| `build` | Mudanças no sistema de build ou dependências | — |
| `ci` | Mudanças em arquivos/scripts de integração contínua | — |
| `chore` | Tarefas de manutenção que não afetam código de produção | — |
| `revert` | Reverte um commit anterior | — |

> Qualquer tipo com `!` ou rodapé `BREAKING CHANGE:` gera incremento **MAJOR**.

---

### `feat`
**Caso de uso:** Introduz uma nova funcionalidade para o usuário ou para a API.
**Exemplo:** `feat(carrinho): adiciona cupom de desconto`

### `fix`
**Caso de uso:** Corrige um bug ou comportamento incorreto.
**Exemplo:** `fix(login): impede envio de formulário com campos vazios`

### `docs`
**Caso de uso:** Altera somente documentação (README, comentários, guias, wiki).
**Exemplo:** `docs: atualiza instruções de instalação no README`

### `style`
**Caso de uso:** Mudanças que não afetam o significado do código: espaços, indentação, ponto e vírgula, ordem de imports.
**Exemplo:** `style: aplica formatação do Prettier`

### `refactor`
**Caso de uso:** Reorganiza ou simplifica o código sem adicionar funcionalidade nem corrigir bug.
**Exemplo:** `refactor(usuario): extrai validação para função separada`

### `perf`
**Caso de uso:** Melhora o desempenho (velocidade, uso de memória, consultas).
**Exemplo:** `perf(busca): adiciona índice na tabela de produtos`

### `test`
**Caso de uso:** Adiciona testes novos ou corrige testes existentes, sem alterar código de produção.
**Exemplo:** `test(pagamento): cobre cenário de cartão recusado`

### `build`
**Caso de uso:** Afeta o processo de build, empacotamento ou dependências externas (npm, Gradle, Maven, Docker).
**Exemplo:** `build: atualiza Gradle para versão 8.5`

### `ci`
**Caso de uso:** Altera configurações e scripts de CI/CD (GitHub Actions, GitLab CI, Jenkins).
**Exemplo:** `ci: adiciona etapa de lint no pipeline`

### `chore`
**Caso de uso:** Tarefas de manutenção diversas que não se encaixam nos outros tipos e não alteram código-fonte nem testes (ex.: `.gitignore`, atualização de configs).
**Exemplo:** `chore: adiciona pasta build ao .gitignore`

### `revert`
**Caso de uso:** Desfaz um commit anterior. O corpo normalmente referencia o hash revertido.
**Exemplo:**
```
revert: remove suporte a login com Google

Reverts commit a1b2c3d.
```

---

## Observações

- Apenas `feat` e `fix` são definidos pela especificação oficial (v1.0.0). Os demais tipos vêm da convenção Angular, amplamente adotada.
- É possível criar tipos próprios, desde que o time os combine e documente.
- Um commit deve representar **uma única mudança lógica**; se precisar de dois tipos, prefira dois commits.

Referência: https://www.conventionalcommits.org