# 6. Enumeração e teste controlado de SMB

Esta etapa reúne a enumeração SMB e a demonstração de password spraying no Metasploitable 2. O procedimento deve ser executado somente na rede isolada do laboratório.

## 6.1 Confirmar as portas SMB

```bash
nmap -sV -p 139,445 192.168.56.102
```

## 6.2 Enumerar informações SMB

```bash
enum4linux -a 192.168.56.102
```

Consultar compartilhamentos:

```bash
smbclient -L //192.168.56.102 -N
```

## 6.3 Password spraying com Medusa

Password spraying consiste em testar uma senha escolhida contra vários usuários, em vez de testar muitas senhas para uma única conta. Para demonstrar esse conceito, selecionar uma senha fictícia da lista e utilizar a lista de usuários:

```bash
medusa -h 192.168.56.102 -U wordlists/usuarios.txt -p 'SENHA_DE_TESTE' -M smbnt -t 1 -f
```

Substituir `SENHA_DE_TESTE` por uma senha de laboratório escolhida para o exercício. O módulo `smbnt` deve constar na saída de `medusa -d` da versão instalada. Se não estiver disponível, não presumir compatibilidade: conferir a documentação local do Medusa e o módulo instalado.

- `-U`: arquivo com os usuários.
- `-p`: senha única utilizada no spraying.
- `-M smbnt`: módulo SMB/NTLM do Medusa.
- `-t 1`: execução sequencial, reduzindo a simultaneidade.
- `-f`: interrompe ao encontrar uma autenticação válida, conforme o comportamento da ferramenta.

## 6.4 Diferença entre brute force e password spraying

- **Brute force com lista de senhas:** testa várias senhas contra uma ou mais contas.
- **Password spraying:** testa uma senha por vez contra várias contas, reduzindo a quantidade de tentativas por usuário.

O resultado real deve ser registrado a partir da saída da ferramenta. Não publicar credenciais válidas no repositório.
