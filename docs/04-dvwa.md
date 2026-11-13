# Teste de autenticação no DVWA

## Objetivo

Estudar como um formulário web vulnerável se comporta diante de tentativas repetidas de login.

## Como foi realizado

Utilizei o DVWA no ambiente de laboratório para o exercício de automação de tentativas de autenticação. O foco foi entender a relação entre as requisições enviadas ao formulário, as respostas da aplicação e os controles que deveriam limitar esse tipo de tentativa.

Não preservei a configuração de nível de segurança do DVWA, os parâmetros da requisição ou as respostas HTTP. Assim, não é possível reproduzir fielmente a execução apenas com os dados disponíveis.

## Pontos observados

O exercício mostrou a importância de validar a autenticação no servidor e de não depender somente de verificações feitas no navegador. Não atribuo a este cenário a autenticação bem-sucedida relatada com Medusa, pois não há registro que confirme essa relação.

## Proteções recomendadas

- Aplicar limitação de tentativas no servidor.
- Monitorar padrões de falha e automação.
- Utilizar MFA quando aplicável.
- Evitar mensagens de erro que revelem se uma conta existe.
- Registrar eventos relevantes de autenticação sem expor senhas.
