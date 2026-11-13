# 1. Preparação do ambiente

## Topologia utilizada

O laboratório foi montado no Oracle VirtualBox com Kali Linux como máquina de testes e Metasploitable 2 como alvo. As máquinas devem permanecer em uma rede Host-Only, sem exposição dos serviços vulneráveis à rede pública.

| Máquina | Função | Endereço |
|---|---|---|
| Kali Linux | Estação de testes | Verificar no próprio sistema |
| Metasploitable 2 | Máquina vulnerável | `192.168.56.102` |

## Verificar o endereço do Kali Linux

No terminal do Kali:

```bash
ip -br address
ip route
```

## Verificar conectividade com o alvo

```bash
ping -c 4 192.168.56.102
```

Se não houver resposta, conferir se as duas VMs estão conectadas à mesma rede Host-Only e se o endereço do alvo está correto.

## Criar diretórios para organizar os resultados

```bash
mkdir -p ~/santander-dio/{resultados/nmap,resultados/enum,wordlists}
cd ~/santander-dio
```

A estrutura local permite guardar as saídas dos comandos sem misturar resultados com a documentação.
