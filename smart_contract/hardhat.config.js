//https://eth-goerli.g.alchemy.com/v2/_zJURXIo9Za2eX1Bkr5CBb3DULz0Q3e7

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/_zJURXIo9Za2eX1Bkr5CBb3DULz0Q3e7',
      accounts: ['9d0766eb30e621c643843b2dc1bf357a3e8422e6bf5b06fbfef66685c47770da']
    }
  }
}