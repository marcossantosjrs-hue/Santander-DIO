# Conclusão

Concluí os três exercícios do desafio: autenticação em FTP, tentativas no formulário do DVWA e *password spraying* em SMB. O ambiente foi montado no VirtualBox com Kali Linux e Metasploitable 2, utilizando rede Host-Only.

Durante a prática, consegui uma autenticação bem-sucedida com Medusa. Não registrei a saída original, então não tenho como confirmar neste repositório em qual serviço ocorreu o sucesso, nem a quantidade de tentativas necessária.

O principal aprendizado foi perceber que a autenticação precisa de controles complementares. Senhas previsíveis e serviços expostos aumentam o risco; limitação de tentativas, monitoramento, segmentação e revisão de contas ajudam a reduzir esse problema.

Se repetir o laboratório, pretendo registrar versões, comandos, horários e capturas com dados sensíveis ocultados. Isso permitirá comparar os cenários com mais precisão e apresentar resultados reproduzíveis.
