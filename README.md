# flow-workshop

Flow cadence contract workshop

## Start Emulator

```sh
flow emulator start -v
```

## Deploy and start local wallet

```sh
flow project deploy
flow dev-wallet
flow project deploy --update # update contract
```

## Run Scripts

```sh
flow scripts execute hello-world/cadence/scripts/get_greeting.cdc
```

## Run Transactions

```sh
flow transactions send hello-world/cadence/transactions/change_greeting.cdc "hello"
```

## Tutorials

* <https://github.com/DappCoderr/Cadence-By-Example>
* <https://github.com/emerald-dao/beginner-cadence-course>
* <https://developers.flow.com/cadence/tutorial/01-first-steps>
* <https://github.com/rdlalmeida/flow_cli_tutorials>
* <https://academy.ecdao.org/challenges/hello-world>
* <https://github.com/ph0ph0/Get-The-Flow-Down>
