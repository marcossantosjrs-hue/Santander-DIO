# Medidas de proteção

A principal conclusão dos exercícios é que a segurança da autenticação depende de mais de um controle. Uma senha forte reduz o risco, mas não substitui monitoramento, restrições de acesso e limites de tentativa.

| Medida | Aplicação |
| --- | --- |
| Senhas únicas e resistentes | FTP, aplicações web e SMB |
| Limitação de tentativas | Conforme o serviço e o impacto operacional |
| Monitoramento de logins | Identificar falhas repetidas e tentativas distribuídas |
| Segmentação de rede | Reduzir quem consegue alcançar o serviço |
| MFA | Aplicações e fluxos que ofereçam suporte |
| Revisão de contas e permissões | Remover acessos desnecessários |

## Cuidados por serviço

**FTP:** o FTP tradicional não criptografa as credenciais em trânsito. Quando possível, usar uma alternativa segura, como SFTP, e limitar a origem das conexões.

**DVWA / aplicações web:** aplicar controles no lado do servidor, registrar eventos de autenticação e avaliar MFA. Bloqueios apenas no navegador não são suficientes.

**SMB:** restringir o acesso à porta 445, revisar contas e permissões e acompanhar eventos de falha de login. Políticas de bloqueio precisam considerar o risco de indisponibilidade.

As recomendações são medidas gerais de defesa. Não representam alterações implementadas e testadas nas VMs durante o desafio.
