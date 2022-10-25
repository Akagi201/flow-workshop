import HelloWorld from "../contracts/HelloWorld.cdc"

transaction(newGreeting: String) {
  prepare(signer: AuthAccount) {

  }

  execute {
    HelloWorld.changeGreeting(newGreeting: newGreeting)
  }
}