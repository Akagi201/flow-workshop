import Hello from 0x01

transaction {
  let name: String

  prepare(account: AuthAccount) {
    self.name = account.address.toString()
  }

  // pre {}

  execute {
    log(Hello.sayHi(to: self.name))
  }

  // post {}
}