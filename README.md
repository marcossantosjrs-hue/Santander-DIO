# Laboratório de Segurança Ofensiva — Santander Academy | DIO

Projeto prático desenvolvido como parte do Santander Academy, pela plataforma DIO. O laboratório utiliza Kali Linux e máquinas virtuais vulneráveis para estudar reconhecimento de serviços, enumeração e testes controlados de autenticação.

## Ambiente

- **Sistema de testes:** Kali Linux
- **Alvo:** Metasploitable 2
- **Virtualização:** Oracle VirtualBox
- **Rede:** Host-Only
- **IP do Metasploitable 2:** `192.168.56.102`
- **Ferramentas:** Nmap, enum4linux, smbclient e Medusa
- **Aplicação web:** DVWA

> Todos os procedimentos descritos devem ser executados somente no laboratório isolado e em sistemas para os quais exista autorização. Não utilize os comandos contra sistemas de terceiros.

## Sequência do laboratório

1. [Preparação do ambiente](docs/01-ambiente.md)
2. [Reconhecimento com Nmap](docs/02-reconhecimento-nmap.md)
3. [Enumeração de serviços](docs/03-enumeracao.md)
4. [Criação de wordlists](docs/04-wordlists.md)
5. [Teste de autenticação FTP com Medusa](docs/05-ftp-medusa.md)
6. [Enumeração e teste controlado de SMB](docs/06-smb.md)
7. [Testes no DVWA](docs/07-dvwa.md)
8. [Medidas de mitigação](docs/08-mitigacoes.md)
9. [Conclusão](docs/09-conclusao.md)

## Resultados e evidências

Os comandos apresentados servem para reproduzir os procedimentos no ambiente de laboratório. Os resultados detalhados devem ser registrados a partir da saída real de cada execução. Não foram incluídos endereços, credenciais ou capturas que não tenham sido preservados.

Durante a prática, foi obtida autenticação válida em um dos testes com Medusa. Como não há logs ou capturas de tela preservados, este repositório não atribui usuário, senha ou serviço específico a esse resultado.

## Organização

- `docs/`: documentação dos procedimentos.
- `wordlists/`: listas pequenas e fictícias para uso no laboratório.
- `resultados/`: local para salvar saídas de ferramentas.
- `evidencias/`: local para adicionar capturas de tela, caso estejam disponíveis.

## Observação

Este projeto tem finalidade educacional. A execução de testes de força bruta e enumeração fora de um ambiente autorizado pode causar bloqueios, indisponibilidade e acesso indevido.
