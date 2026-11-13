# 2. Reconhecimento com Nmap

O reconhecimento inicial identifica quais portas TCP estão acessíveis e quais serviços respondem no Metasploitable 2.

**Alvo:** `192.168.56.102`

## 2.1 Verificar conectividade

```bash
ping -c 4 192.168.56.102
```

## 2.2 Identificar portas e versões dos serviços

```bash
nmap -sV 192.168.56.102
```

- `-sV`: tenta identificar o serviço e sua versão nas portas encontradas.

## 2.3 Executar scripts padrão e detecção de versão

```bash
nmap -sC -sV 192.168.56.102
```

- `-sC`: executa o conjunto padrão de scripts NSE.
- `-sV`: tenta identificar versões dos serviços.

## 2.4 Verificar todas as portas TCP

```bash
nmap -p- 192.168.56.102
```

## 2.5 Salvar o reconhecimento em arquivo

```bash
nmap -sC -sV -p- 192.168.56.102 -oN resultados/nmap/reconhecimento.txt
```

A opção `-oN` salva a saída em formato texto normal.

## Registro da análise

Depois da execução, registrar no relatório:

- portas encontradas;
- serviços e versões identificados;
- portas que serão examinadas nas próximas etapas;
- horário e comando utilizado.

Não preencher versões ou portas por suposição: utilizar os dados exibidos pelo Nmap no próprio laboratório.
