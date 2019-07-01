pragma solidity ^0.5.0;

/// @title Military Coin Check - Challenge Coins
/// @author Jayce Azua
/// @notice This contact is for internal use only. Only possible way to use this contract is by purchasing challenge coins
/// @dev All function calls are currently implemented without side effects

contract ChallengeList {
  uint public challengeCount = 0;

  struct  Challenge {

    uint id; // unsigned integer number cannot be negative
    string content;
    // Medallion Owner: billet
    // ... unit/ organization not valuable peer to peer billet to billet more value
    // future communication check up on the people you gave the medallion to
    // make when needed
    // Achievement Rank different coins different value
    // EDIP -> id of the owner proof of rank
    // Marine Corps Order -> approving
    // who assigns the value... of each coin...
    bool completed; // only gets allowed to turn true if password is correct
  }

  mapping(uint => Challenge) public challenges;

  constructor() public {
    createChallenge("Visit the website militarycoincheck.com"); // activate your account
  }
    /// @author Jayce Azua
    /// @notice creates a smart contract for the challenges and increments the count each time it is created
    /// @dev simply increments the count of the challenges
    /// @param content the description of the challenge
    /// @return nothing simply creates the challenge
  function createChallenge(string memory _content) public {
    challengeCount ++;
    challenges[challengeCount] = Challenge(challengeCount, _content, false);
  }



}