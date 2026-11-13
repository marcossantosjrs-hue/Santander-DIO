# 8. Medidas de mitigação

Os testes demonstram por que serviços de rede e aplicações web precisam de controles de autenticação e monitoramento.

## FTP

- Desabilitar FTP quando não for necessário.
- Preferir SFTP ou FTPS, conforme a arquitetura.
- Desabilitar autenticação anônima.
- Utilizar senhas fortes e contas individuais.
- Restringir o acesso por firewall e segmentação de rede.

## SMB

- Desabilitar SMBv1 quando possível.
- Restringir as portas 139 e 445 às redes e hosts necessários.
- Desabilitar convidados e acessos anônimos.
- Aplicar política de senhas e bloqueio de conta adequada.
- Monitorar falhas repetidas de autenticação.

## Aplicações web

- Implementar limitação de tentativas e atraso progressivo.
- Adotar autenticação multifator quando aplicável.
- Monitorar tentativas repetidas e origens suspeitas.
- Utilizar mensagens de erro que não revelem se o usuário existe.
- Proteger sessões e cookies.

## Monitoramento

- Centralizar logs de autenticação.
- Alertar para falhas repetidas em múltiplas contas.
- Investigar tentativas distribuídas e password spraying.
- Manter sistemas e serviços atualizados.
