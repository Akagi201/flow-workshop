import Entity from 0x02

transaciton(entityAddress: Address) {
  let message: String
  let element: @Entity.Element?

  prepare(account: AuthAccount) {
    let generatorRef = getAccount(entityAddress)
    .getCapability<&Entity.Generator>(/public/ElementGenerator)
    .borrow()
    ?? panic("Cound not borrow printer ref")

    self.message = "Hello world"
    let feature = Entity.MetaFeature(
      bytes: self.message.utf8,
      raw: self.message
    )
    self.element <- generatorRef.generate(feature: feature)
  }

  execute {
    if self.element == nil {
      log("Element of feature<".concat(self.message).concat("> already exists!"))
    } else {
      log("Element generated")
    }

    destroy self.element
  }
}