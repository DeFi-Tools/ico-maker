pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/TokenTimelock.sol";

/**
 * @title BaseTimelock
 * @author Vittorio Minacori (https://github.com/vittominacori)
 * @dev Extends from TokenTimelock which is a token holder contract that will allow a
 *  beneficiary to extract the tokens after a given release time
 */
contract BaseTimelock is TokenTimelock {

    /**
     * @param token Address of the token being distributed
     * @param beneficiary Who will receive the tokens after they are released
     * @param releaseTime Timestamp when token release is enabled
     */
    constructor(
        IERC20 token,
        address beneficiary,
        uint256 releaseTime
    )
        public
        TokenTimelock(token, beneficiary, releaseTime)
    {} // solhint-disable-line no-empty-blocks
}
