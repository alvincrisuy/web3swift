# We just created a [Discord Channel](https://discord.gg/3ETv2ST)

![bkx-foundation-github-swift](https://user-images.githubusercontent.com/3356474/34412791-5b58962c-ebf0-11e7-8460-5592b12e6e9d.png)

<p align="center">
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat" alt="Swift 4.2">
    </a>
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Platforms-iOS%20%7C%20macOS%20-orange.svg?style=flat" alt="Platforms iOS | macOS">
    </a>
    <a target="_blank">
        <img src="https://img.shields.io/badge/Compatible-cocoapods%20%7C%20carthage%20%7C%20swiftpm%20-orange.svg?style=flat" alt="Compatible">
    </a>
</p>

<p align="center">
    <a href="https://github.com/BANKEX/web3swift/blob/master/LICENSE" target="_blank">
        <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
    </a>
    <a href="https://brianmacdonald.github.io/Ethonate/address#0x47FC2e245b983A92EB3359F06E31F34B107B6EF6" target="_blank">
        <img src="https://brianmacdonald.github.io/Ethonate/svg/eth-support-blue.svg" alt="Support">
    </a>
    <a href="https://stackoverflow.com/questions/tagged/web3swift" target="_blank">
        <img src="https://img.shields.io/badge/stackoverflow-ask-blue.svg" alt="Stackoverflow">
    </a>
    <a href="https://discord.gg/3ETv2ST" target="_blank">
        <img src="https://img.shields.io/badge/discord-join%20chat-blue.svg" alt="Join Discord">
    </a>
</p>

# web3swift
- Swift implementation of [web3.js](https://github.com/ethereum/web3.js/) functionality :zap:
- Interaction with remote node via JSON RPC :thought_balloon:
- Smart-contract ABI parsing :book:
- ABI deconding (V2 is supported with return of structures from public functions. Part of 0.4.22 Solidity compiler)
- RLP encoding
- Interactions (read/write to Smart contracts) :arrows_counterclockwise:
- Local keystore management (geth compatible)
- Literally following the standards:
-  [BIP32](https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki) HD Wallets: Deterministic Wallet
-  [BIP39](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki) (Seed phrases)
-  [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki) (Key generation prefixes)
-  [EIP-155](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-155.md) (Replay attacks protection) *_enforced!_*

## Check this out
- Private key and transaction were created directly on an iOS device and sent directly to [Infura](https://infura.io) node
- Native API
- Security (as cool as a hard wallet! Right out-of-the-box! :box: )
- No unnecessary dependencies
- Possibility to work with all existing smart contracts
- Referencing the newest features introduced in Solidity

## Design decisions
- Not every JSON RPC function is exposed yet, priority is given to the ones required for mobile devices
- Functionality was focused on serializing and signing transactions locally on the device to send raw transactions to Ethereum network
- Requirements for password input on every transaction are indeed a design decision. Interface designers can save user passwords with the user's consent
- Public function for private key export is exposed for user convenience, but marked as UNSAFE_ :) Normal workflow takes care of EIP155 compatibility and proper clearing of private key data from memory

### Here it is
[https://rinkeby.etherscan.io/tx/0xc6eca60ecac004a1501a4323a10edb7fa4cd1a0896675f6b51704c84dedad056](https://rinkeby.etherscan.io/tx/0xc6eca60ecac004a1501a4323a10edb7fa4cd1a0896675f6b51704c84dedad056)

```
Transaction
Nonce: 35
Gas price: 5000000000
Gas limit: 21000
To: 0x6394b37Cf80A7358b38068f0CA4760ad49983a1B
Value: 1000000000000000
Data: 0x
v: 43
r: 73059897783840535708732471549376620878882680550447969052675399628060606060727
s: 12280625377431973240236065453692843538037349746280474092545114784968542260859
Intrinsic chainID: Optional(4)
Infered chainID: Optional(4)
sender: Optional(web3swift.EthereumAddress(_address: "0x855adf524273c14b7260a188af0ae30e82e91959"))


["id": 1514485925, "result": 0xc6eca60ecac004a1501a4323a10edb7fa4cd1a0896675f6b51704c84dedad056, "jsonrpc": 2.0]
On Rinkeby TXid = 0xc6eca60ecac004a1501a4323a10edb7fa4cd1a0896675f6b51704c84dedad056
```

## Example
You can try it yourself by running the example project:
- Clone the repo
-  `cd Example/web3swiftExample`
- run `pod install` from the `Example/web3swiftExample` directory.
-  `open ./web3swiftExample.xcworkspace`

## Requirements
Web3swift requires Swift 4.1 and iOS 9.0 or macOS 10.13 although we recommend to use the latest iOS and MacOS versions for your own safety. Don't forget to set the iOS version in a Podfile, otherwise you get an error if the deployment target is less than the latest SDK.

## Communication
- if you ****need help****, use [Stack Overflow](https://stackoverflow.com/questions/tagged/web3swift) (tag 'web3swift')
- If you'd like to ****ask a general question****, use [Stack Overflow](https://stackoverflow.com/questions/tagged/web3swift).
- If you ****found a bug****, [open an issue](https://github.com/BANKEX/web3swift/issues).
- If you ****have a feature request****, [open an issue](https://github.com/BANKEX/web3swift/issues).
- If you ****want to contribute****, [submit a pull request](https://github.com/BANKEX/web3swift/pulls).

## Installation
### CocoaPods
[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ sudo gem install cocoapods
```

To integrate web3swift into your Xcode project using CocoaPods, specify it in your `Podfile`:
```ruby
pod 'web3swift', :git => 'https://github.com/bankex/web3swift.git', :branch => 'master'
```

Then, run the following command:
```bash
$ pod install
```

### Carthage
[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](https://brew.sh/) using the following command:
```bash
$ brew update
$ brew install carthage
```
To integrate web3swift into your Xcode project using Carthage, specify it in your `Cartfile`:
```
github "BANKEX/web3swift" ~> 1.1
```
Run `carthage update` to build the framework and drag the built `web3swift.framework` into your Xcode project.

### Swift Package Manager
The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but web3swift does support its use on supported platforms.

Once you have your Swift package set up, adding web3swift as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
.package(url: "https://github.com/BANKEX/web3swift.git", from: "1.1.7")
]
```

## Features
- [x] Create Account
- [x] Import Account
- [x] Sign transactions
- [x] Send transactions, call functions of smart-contracts, estimate gas costs
- [x] Serialize and deserialize transactions and results to native Swift types
- [x] Convenience functions for chain state: block number, gas price
- [x] Check transaction results and get receipt
- [x] Parse event logs for transaction
- [x] Manage user's private keys through encrypted keystore abstractions
- [x] Batched requests in concurrent mode, checks balances of 580 tokens (from the latest MyEtherWallet repo) over 3 seconds

## Usage

Here's a few use cases of our library

### Initializing Ethereum address

```bash
let coldWalletAddress = EthereumAddress("0x6394b37Cf80A7358b38068f0CA4760ad49983a1B")
let constractAddress = EthereumAddress("0x45245bc59219eeaaf6cd3f382e078a461ff9de7b")
```
Ethereum addresses are checksum checked if they are not lowercased and always length checked

### Setting options

```bash
var options = Web3Options.defaultOptions()
// public var to: EthereumAddress? = nil - to what address transaction is aimed
// public var from: EthereumAddress? = nil - form what address it should be sent (either signed locally or on the node)
// public var gasLimit: BigUInt? = BigUInt(90000) - default gas limit
// public var gasPrice: BigUInt? = BigUInt(5000000000) - default gas price, quite small
// public var value: BigUInt? = BigUInt(0) - amount of WEI sent along the transaction
options.gasPrice = gasPrice
options.gasLimit = gasLimit
options.from = EthereumAddress("0xE6877A4d8806e9A9F12eB2e8561EA6c1db19978d")
```

### Getting ETH balance

```bash
let address = EthereumAddress("0xE6877A4d8806e9A9F12eB2e8561EA6c1db19978d")!
let web3Main = Web3.InfuraMainnetWeb3()
let balanceResult = web3Main.eth.getBalance(address)
guard case .success(let balance) = balanceResult else {return}
```

### Getting gas price

```bash
let web3Main = Web3.InfuraMainnetWeb3()
let gasPriceResult = web3Main.eth.getGasPrice()
guard case .success(let gasPrice) = gasPriceResult else {return}
```

### Getting ERC20 token balance

```bash
let contractAddress = EthereumAddress("0x45245bc59219eeaaf6cd3f382e078a461ff9de7b")! // BKX token on Ethereum mainnet
let contract = web3.contract(Web3.Utils.erc20ABI, at: contractAddress, abiVersion: 2)! // utilize precompiled ERC20 ABI for your concenience
guard let bkxBalanceResult = contract.method("balanceOf", parameters: [coldWalletAddress] as [AnyObject], options: options)?.call(options: nil) else {return} // encode parameters for transaction
guard case .success(let bkxBalance) = bkxBalanceResult, let bal = bkxBalance["0"] as? BigUInt else {return} // bkxBalance is [String: Any], and parameters are enumerated as "0", "1", etc in order of being returned. If returned parameter has a name in ABI, it is also duplicated
print("BKX token balance = " + String(bal))
```



### Sending ETH

```bash
let web3Rinkeby = Web3.InfuraRinkebyWeb3()
web3Rinkeby.addKeystoreManager(bip32keystoreManager) // attach a keystore if you want to sign locally. Otherwise unsigned request will be sent to remote node
options.from = bip32ks?.addresses?.first! // specify from what address you want to send it
intermediateSend = web3Rinkeby.contract(Web3.Utils.coldWalletABI, at: coldWalletAddress, abiVersion: 2)!.method(options: options)! // an address with a private key attached in not different from any other address, just has very simple ABI
let sendResultBip32 = intermediateSend.send(password: "BANKEXFOUNDATION")
```



### Sending ERC20

```bash
var convenienceTransferOptions = Web3Options.defaultOptions()
convenienceTransferOptions.gasPrice = gasPriceRinkeby
let convenienceTokenTransfer = web3Rinkeby.eth.sendERC20tokensWithNaturalUnits(tokenAddress: EthereumAddress("0xa407dd0cbc9f9d20cdbd557686625e586c85b20a")!, from: (ks?.addresses?.first!)!, to: EthereumAddress("0x6394b37Cf80A7358b38068f0CA4760ad49983a1B")!, amount: "0.0001", options: convenienceTransferOptions) // there are also convenience functions to send ETH and ERC20 under the .eth structure
let gasEstimateResult = convenienceTokenTransfer!.estimateGas(options: nil)
guard case .success(let gasEstimate) = gasEstimateResult else {return}
convenienceTransferOptions.gasLimit = gasEstimate
let convenienceTransferResult = convenienceTokenTransfer!.send(password: "BANKEXFOUNDATION", options: convenienceTransferOptions)
switch convenienceTransferResult {
case .success(let res):
    print("Token transfer successful")
    print(res)
case .failure(let error):
    print(error)
}
```

## Global plans
- Full reference `web3js` functionality
- Light Ethereum subprotocol (LES) integration

## [Apps using this library](https://github.com/BANKEX/web3swift/wiki/Apps-using-web3swift)
If you've used this project in a live app, please let us know!
>_If you are using_ `web3swift` _in your app or know of an app that uses it, please add it to_ [_this_](https://github.com/BANKEX/web3swift/wiki/Apps-using-web3swift) _list._*

## Special thanks to

- Gnosis team and their library [Bivrost-swift](https://github.com/gnosis/bivrost-swift) for inspiration for the ABI decoding approach
- [Trust iOS Wallet](https://github.com/TrustWallet/trust-wallet-ios) for the collaboration and discussion of the initial idea
- Official Ethereum and Solidity docs, everything was written from ground truth standards


## Contribution
For the latest version, please check [develop](https://github.com/BANKEX/web3swift/tree/develop) branch.

Changes made to this branch will be merged into the [master](https://github.com/BANKEX/web3swift/tree/master) branch at some point.

- If you want to contribute, submit a [pull request](https://github.com/BANKEX/web3swift/pulls) against a development `develop` branch.
- If you found a bug, [open an issue](https://github.com/BANKEX/web3swift/issues).
- If you have a feature request, [open an issue](https://github.com/BANKEX/web3swift/issues).

## Appreciation
When using this pod, references to this repo, [BANKEX](https://bankex.com) and [BANKEX Foundation](https://new.bankexfoundation.org/) are appreciated.

## Contributors
Alex Vlasov, [@shamatar](https://github.com/shamatar)

Petr Korolev, [@skywinder](https://github.com/skywinder)

## License
web3swift is available under the Apache License 2.0 license. See the [LICENSE](https://github.com/BankEx/web3swift/blob/master/LICENSE) file for more info.
