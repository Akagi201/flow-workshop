// Hey, Welcome to Cadence! These are the cadence Sample Application tutorial programs.

//access(all) contract HelloWorld {

    // Declare a public field of type String.
    // All fields must be initialized in the init() function.
    //access(all) let greet: String

    // The init() function is required if the contract contains any fields.
    //init() {
    //    self.greet = "Hello, World!"
    //}

    // Public function that returns our friendly greeting!
    //access(all) fun hello(): String {
    //    return self.greet
    //}
//}

pub fun sayHi(name: String) {
  log("Hi, ".concat(name))
}

pub fun sayHi2(_ name: String) {
  log("Hi, ".concat(name))
}

pub fun sayHi3(to name: String) {
  log("Hi, ".concat(name))
}

pub fun makeSayHi(): ((String): String) {
  var count = 0
  return fun (to name: String): String {
    count = count + 1
    return "Hi, ".concat(name).concat(" (").concat(count.toString()).concat(")")
  }
}

pub fun words(_ n: Int): [String] {
  // 定义一个保存字符串的数组
  let arr: [String] = []

  // 测试参数 n 的值
  switch n {
    case 1:
      // 如果 n 为 1 将 "one" 加入数组
      arr.append("one")
    case 2:
      // 如果 n 为 2 将 "two" 加入数组
      arr.append("two")
    default:
      // 如果 n 为其他值将 "other" 加入数组
      arr.append("other")
  }

  return arr
}

// 结构的关键词是 struct
/*
pub struct Rectangle {
  pub let width: Int
  pub let height: Int

  init(width: Int, height: Int) {
    self.width = width
    self.height = height
  }
}
*/

// 资源的关键字是 resource
pub resource Wallet {
  pub var dollars: UInt

  init(dollars: UInt) {
    self.dollars = dollars
  }
}

pub fun createWallet(_ dollars: UInt): @Wallet {
  return <- create Wallet(dollars: dollars)
}

pub fun main() {
  sayHi(name: "Cadence")
  sayHi2("Cadence")
  sayHi3(to: "Cadence")

  var sayHi4 = makeSayHi()
  log(sayHi4(to: "Cadence"))
  log(sayHi4(to: "Flow"))

  // if-let
  let maybeNumber: Int? = 1
  if let number = maybeNumber {
    // if number is Int
    log(number)
  } else {
    // if number is nil
  }

  var a = 0
  while a < 5 {
    a = a + 1
  }
  log(a)

  let array = ["Hello", "World", "Foo", "Bar"]
  for item in array {
    log(item)
  }

  // let sequare = Rectangle(width: 10, height: 10)
  let myWallet <- create Wallet(dollars: 10)
  destroy myWallet

  let myWallet2 <- createWallet(10)
  destroy myWallet2
}
