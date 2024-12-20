# hello-smart-contract

```shell
truffle init
truffle compile
truffle migrate
truffle console
```

```javascript
let contract
Hello.deployed().then(instance => contract = instance)
contract.addPerson("Ivan", 29)
contract.getPersonCount()
contract.getPerson(0)
```