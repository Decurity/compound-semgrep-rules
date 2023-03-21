pragma solidity 0.8.15;


contract Comet {
    /**
     * @dev Safe ERC20 transfer out
     */
    function doTransferOut(address token, address to, uint amount) internal {
        // ok: transfer-return-value-not-checked
        bool success = ERC20(token).transfer(to, amount);
        if (!success) revert TransferOutFailed(to, amount);
    }

    /**
     * @dev Safe ERC20 transfer in, assumes no fee is charged and amount is transferred
     */
    function doTransferIn(address asset, address from, uint amount) internal {
        // ruleid: transfer-return-value-not-checked
        bool success = ERC20(asset).transferFrom(from, address(this), amount);
        //if (!success) revert TransferInFailed();
    }

}