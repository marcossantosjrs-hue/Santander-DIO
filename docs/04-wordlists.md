# 4. Criação de wordlists

Foram utilizadas listas pequenas para demonstrar o funcionamento dos testes de autenticação no ambiente isolado.

## 4.1 Criar diretório

```bash
mkdir -p wordlists
```

## 4.2 Criar lista de usuários fictícios

```bash
nano wordlists/usuarios.txt
```

Exemplo de conteúdo de laboratório:

```text
msfadmin
user
admin
test
```

## 4.3 Criar lista de senhas fictícias

```bash
nano wordlists/senhas.txt
```

Exemplo:

```text
123456
password
admin
msfadmin
12345
```

## 4.4 Conferir os arquivos

```bash
cat wordlists/usuarios.txt
cat wordlists/senhas.txt
```

## 4.5 Remover linhas vazias e duplicadas (opcional)

```bash
sed -i '/^[[:space:]]*$/d' wordlists/usuarios.txt
sed -i '/^[[:space:]]*$/d' wordlists/senhas.txt
sort -u wordlists/usuarios.txt -o wordlists/usuarios.txt
sort -u wordlists/senhas.txt -o wordlists/senhas.txt
```

As listas publicadas neste repositório são exemplos fictícios. Não publicar listas que contenham senhas pessoais, credenciais corporativas ou dados obtidos fora do laboratório.
