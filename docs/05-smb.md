# Teste de autenticação em SMB

## Objetivo

Entender o risco de credenciais reutilizadas em contas acessíveis por serviços SMB.

## Como foi realizado

No ambiente virtualizado, realizei o cenário de enumeração de usuários e *password spraying* em SMB previsto no desafio. A diferença principal em relação a um ataque concentrado em uma conta é distribuir a tentativa de uma senha candidata entre vários usuários do laboratório.

Não foram guardados a lista original de contas, os comandos executados nem os eventos de autenticação. Os nomes presentes em `wordlists/usuarios-exemplo.txt` são fictícios.

## Pontos observados

O cenário ajudou a compreender como uma senha comum, quando reutilizada por várias contas, amplia a superfície de risco. Não há evidência preservada que permita afirmar qual conta ou serviço foi autenticado com sucesso.

## Proteções recomendadas

- Restringir o acesso SMB às redes e máquinas que precisam do serviço.
- Evitar senhas compartilhadas e contas sem necessidade operacional.
- Monitorar falhas de autenticação distribuídas entre usuários.
- Revisar permissões de compartilhamentos e políticas de senha.
- Ajustar bloqueios e alertas com cuidado para não causar indisponibilidade por tentativas maliciosas.
