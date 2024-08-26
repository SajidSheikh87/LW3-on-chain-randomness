# On-Chain Randomness (Not really)

This repo is created by following the `Generating random numbers on-chain` lesson on LearnWeb3 (https://learnweb3.io/degrees/ethereum-developer-degree/senior/generating-random-numbers-on-chain/)

## Introduction

Randomness is a hard problem. Computers run code that is written by programmers and follows a given sequence of steps. As such, it is extremely hard to design an algorithm that will give you a 'random' number since that number must come from an algorithm that follows a certain sequence of steps. 

This repo was created to test that generating randomness by using on-chain methods is not really random and the generated number can be easily guessed.

## Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [foundry](https://getfoundry.sh/)
  - You'll know you did it right if you can run `forge --version` and you see a response like `forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)`

## Installation

```bash
git clone https://github.com/SajidSheikh87/LW3-on-chain-randomness
cd LW3-on-chain-randomness
```

# Testing

## Vanilla Foundry

```bash
foundryup
forge test
```