# Teste de autenticação em FTP

## Objetivo

Avaliar, em um servidor FTP de laboratório, o risco de utilizar senhas fáceis de adivinhar e permitir repetidas tentativas de login.

## Como foi realizado

Com as VMs conectadas pela rede Host-Only, trabalhei com o serviço FTP da máquina vulnerável e utilizei o Medusa no exercício de autenticação. O teste consistiu em verificar como o serviço respondia às tentativas baseadas em credenciais de laboratório.

A atividade foi concluída, mas não guardei o comando exato, a saída do terminal ou a quantidade de tentativas. Por isso, não há transcrição de execução nesta página.

## Pontos observados

O cenário serviu para relacionar senhas previsíveis e autenticação repetida ao risco de acesso não autorizado. A autenticação bem-sucedida obtida com Medusa durante a prática não pode ser atribuída especificamente ao FTP sem os registros originais.

## Proteções recomendadas

- Substituir senhas fracas e contas padrão.
- Restringir o acesso ao serviço às redes necessárias.
- Monitorar falhas consecutivas de autenticação.
- Preferir SFTP quando houver necessidade de transferência segura de arquivos. SFTP é um protocolo diferente de FTP tradicional.
