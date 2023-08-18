# Create New Token using Solidity
A simple Ethereum smart contract that implements a custom token using the ERC-20 standard. The contract allows the owner to mint tokens, and any user can burn and transfer tokens.
## How and where to Run the Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Now once you are on the remix IDE you need to create a new ".sol" file by clicking on the create new file icon.

After creating the file you need to specify the 
```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //Version of solidity using
```
Now Write the remaining code after this, like declaring the variables and creating the functions like "mint" , "burn" and "transfer".

Now to run the code first you need to compile the code for that press `Ctrl+S` or you can compile the code by pressing the compile button in `solidity compiler` Tab on the left side of the IDE.

After compiling you need to deploy the contract by clicking the `deploy` button present in the `deploy & run transcations` tab.

At the bottom the you will find your contract running, there you will find all the public variables and functions, by clicking them and putting the values in the function you can get the output accordingly.

## Usage
This contract provides a basic ERC-20 token functionality. The contract owner can mint tokens to any address, and users can burn and transfer tokens. Below are the main functions of the contract:
# Functions
## Constructor
Function: constructor</br>
Description: Initializes the contract with the provided name, abbreviation, and initial balance.
## Mint
Function: mint</br>
Modifiers: Auth (only the contract owner can call this function)</br>
Description: Mints a specified amount of tokens and assigns them to the provided address.
## Burn
Function: burn</br>
Description: Allows a user to burn a specified amount of their own tokens.
## Transfer
Function: transfer</br>
Description: Allows a user to transfer a specified amount of their tokens to another address.

### Authors
@Vinay Kumar Gupta

### license
This project is licensed under the MIT License.
