# 7. Testes de autenticação no DVWA

O DVWA (Damn Vulnerable Web Application) é uma aplicação intencionalmente vulnerável utilizada para estudo em ambiente controlado.

## 7.1 Preparação

- Iniciar o serviço web e o banco de dados conforme a instalação local do DVWA.
- Abrir a aplicação pelo navegador do Kali Linux.
- Entrar no DVWA e selecionar o nível de segurança definido para o exercício.
- Confirmar que o formulário de autenticação está acessível.

## 7.2 Registrar o cenário

Antes de documentar a automação, registrar:

- URL local utilizada;
- nível de segurança selecionado no DVWA;
- nome do formulário ou módulo testado;
- parâmetros HTTP enviados;
- resposta observada para credenciais inválidas e válidas.

## 7.3 Ferramenta e parâmetros

A implementação de automação em formulários web depende dos campos, método HTTP, cookies de sessão e texto de resposta configurados na instância do DVWA. Por esse motivo, não foi incluído um comando genérico do Medusa que possa não corresponder ao formulário utilizado.

Para reproduzir fielmente o teste, utilizar a configuração e os parâmetros efetivamente empregados durante a prática. A lista de módulos instalada pode ser consultada com:

```bash
medusa -d
```

Não registrar como executado um comando que não tenha sido utilizado ou validado no laboratório.

## 7.4 Análise

O exercício permite observar como formulários web podem ser expostos a tentativas automatizadas quando não existem controles suficientes, como limitação de tentativas, atraso progressivo, CAPTCHA e monitoramento.
