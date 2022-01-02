import React, { useEffect, useState, createContext } from "react";

// Ethers
import { ethers } from "ethers";

// Contract Details
import { contractABI, contractAddress } from "../utils/constants";

// Transaction Context
export const TransactionContext = createContext();

const { ethereum } = window; // Get ethereum object from ethereum

const getEthereumContract = () => {
  const provider = new ethers.providers.Web3Provider(ethereum);
  const signer = provider.getSigner();
  const transactionContract = new ethers.Contract(
    contractAddress,
    contractABI,
    signer
  );

  console.log({
    provider,
    signer,
    transactionContract,
  });
};

// Provider
export const TransactionProvider = ({ children }) => {
  return (
    <TransactionContext.Provider value={{ value: "test" }}>
      {children}
    </TransactionContext.Provider>
  );
};
