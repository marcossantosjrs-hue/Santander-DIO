# Metodologia

Dividi o laboratório em três cenários de autenticação: FTP, DVWA e SMB. Em todos eles, a intenção foi observar o efeito de credenciais fracas em sistemas preparados para treinamento.

## Etapas adotadas

1. Preparar as duas VMs e conferir a comunicação na rede Host-Only.
2. Identificar o serviço que seria testado.
3. Definir usuários e senhas de laboratório para as tentativas.
4. Executar o exercício correspondente ao serviço.
5. Observar a resposta de autenticação e relacionar o comportamento às medidas de proteção.

## Diferenças entre as técnicas

**Ataque de dicionário:** testa senhas candidatas de uma lista definida previamente.

**Força bruta:** testa combinações de credenciais, podendo cobrir um espaço maior de possibilidades.

**Password spraying:** utiliza uma mesma senha candidata em várias contas, em vez de concentrar muitas tentativas em um único usuário.

## Registro dos resultados

Os três cenários foram realizados. Houve pelo menos uma autenticação bem-sucedida com Medusa, mas não preservei logs, capturas nem os comandos exatos. Por esse motivo, os arquivos deste repositório descrevem a metodologia e não simulam saídas de terminal.

As wordlists publicadas são exemplos didáticos e não devem ser confundidas com as listas originais do laboratório.
