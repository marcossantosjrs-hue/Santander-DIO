# 3. Enumeração de serviços

A enumeração aprofunda a análise dos serviços identificados no reconhecimento. Os exemplos abaixo são direcionados ao Metasploitable 2 (`192.168.56.102`).

## 3.1 Enumeração SMB com enum4linux

```bash
enum4linux -a 192.168.56.102
```

A opção `-a` solicita um conjunto amplo de verificações de enumeração suportadas pela ferramenta. A quantidade de informações retornadas depende da configuração do serviço SMB.

Salvar a saída:

```bash
enum4linux -a 192.168.56.102 | tee resultados/enum/enum4linux.txt
```

## 3.2 Consultar compartilhamentos SMB

```bash
smbclient -L //192.168.56.102 -N
```

`-L` lista compartilhamentos e `-N` tenta a consulta sem solicitar senha. A resposta pode ser negada caso o servidor não permita acesso anônimo.

## 3.3 Verificar o serviço FTP

```bash
nmap -sV -p 21 192.168.56.102
```

Verificação adicional com scripts NSE específicos:

```bash
nmap --script ftp-anon,ftp-syst -p 21 192.168.56.102
```

Esses scripts verificam, respectivamente, a possibilidade de acesso anônimo e informações do serviço FTP.

## Registro

Documentar apenas informações efetivamente retornadas pelas ferramentas. A enumeração pode revelar nomes de usuários, compartilhamentos, políticas de acesso e detalhes do serviço, mas a disponibilidade dessas informações varia conforme a configuração do alvo.
