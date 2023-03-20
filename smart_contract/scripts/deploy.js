const main = async() => {
  // creates the instance of that particular contract
  const Transactions = await hre.ethers.getContractFactory("Transactions");
  // one specific instance of the contract
  const transactions = await Transactions.deploy();

  await transactions.deployed();
  
  console.log("Transactions deployed to: ", transactions.address);

}

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
}

runMain();
