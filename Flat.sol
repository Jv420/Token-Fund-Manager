// SPDX-License-Identifier: MIT
// File: @openzeppelin/contracts/interfaces/draft-IERC6093.sol


// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)
pragma solidity ^0.8.20;

/**
 * @dev Standard ERC20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// File: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;


/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// File: @openzeppelin/contracts/token/ERC20/ERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;





/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 */
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     * ```
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

// File: fund.sol


pragma solidity ^0.8.20;


//distribute profit by manager
//user can withdraw after lock time without profit.
//withdraw dont recieve profit, and contract have enough USDT to withdraw
//need token with 18 decimals.
//DAI:0x8f3Cf7ad23Cd3CaDbD9735AFf958023239c6A063
//USDT:0xc2132D05D31c914a87C6611C10748AEb04B58e8F
//deployed 
//polygon 


//execution reverted: UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT",
//maybe your swap amountIn is  too small

interface IUniswapV2Router02 {
	function WETH() external pure returns (address);
	function swapExactTokensForTokens(
		uint amountIn,
		uint amountOutMin,
		address[] calldata path,
		address to,
		uint deadline
		) external returns (uint[] memory amounts);
	function swapTokensForExactTokens(
		uint amountOut,
		uint amountInMax,
		address[] calldata path,
		address to,
		uint deadline
		) external returns (uint[] memory amounts);
	function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline)
	external
	payable
	returns (uint[] memory amounts);
	
    // token to ETH 
    /*
    function swapExactTokensForETH( 
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint  amounts);
    */

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
    	uint amountIn,
    	uint amountOutMin,
    	address[] calldata path,
    	address to,
    	uint deadline
    	) external;

    function swapTokensForExactETH(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)    external    returns (uint[] memory amounts);
    function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)   external    returns (uint[] memory amounts);
    function swapETHForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)
    external
    payable
    returns (uint[] memory amounts);
}


contract Fund is ERC20 {
	event Deposit(address, uint);
	event WithdrawEvent(address, uint);


	mapping(address => uint) LockTime;
	bool public locked = false;

  // SushiSwap
  //IUniswapV2Router02 private constant sushiRouter = IUniswapV2Router02(0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506);
  //address public sushiRouterAddress=0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506;



  struct UserInfo {
  	uint orderID;
  	address payable UserAddress;
  	uint InvestAmount;

  }
  mapping(uint256 => UserInfo) public Users;
  mapping(address => uint) public Userid;

//polygon
//sushiswap router:0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506 
//quickswap router:0xa5E0829CaCEd8fFDD4De3c43696c57F7D7A678ff
//dai:0x8f3Cf7ad23Cd3CaDbD9735AFf958023239c6A063
//usdt:0xc2132D05D31c914a87C6611C10748AEb04B58e8F
//bnb:0x3BA4c387f786bFEE076A58914F5Bd38d668B42c3
//shiba:0x6f8a06447Ff6FcF75d803135a7de15CE88C1d4ec
//avax:0x2C89bbc92BD86F8075d1DEcc58C7F4E0107f286b
address[] public AllowTokens=[0x8f3Cf7ad23Cd3CaDbD9735AFf958023239c6A063,0xc2132D05D31c914a87C6611C10748AEb04B58e8F,
0x3BA4c387f786bFEE076A58914F5Bd38d668B42c3,0x6f8a06447Ff6FcF75d803135a7de15CE88C1d4ec,
0x2C89bbc92BD86F8075d1DEcc58C7F4E0107f286b];
//address  public WETH=0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270;



//binance 
//pancakeswap router:0x10ED43C718714eb63d5aA57B78B54704E256024E
//dai:0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3
//eth:0x2170Ed0880ac9A755fd29B2688956BD959F933F8
//usdc:0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d
//matic:0xCC42724C6683B7E57334c4E856f4c9965ED682bD
//doge:0xbA2aE424d960c26247Dd6c32edC70B295c744C43
//dot:0x7083609fCE4d1d8Dc0C979AAb8c869Ea2C873402
//ltc:0x4338665CBB7B2485A8855A139b75D5e34AB0DB94
//shiba:0x2859e4544C4bB03966803b044A93563Bd2D0DD4D
//avax:0x1CE0c2827e2eF14D5C4f29a091d735A204794041
//babydoge:0xc748673057861a797275CD8A068AbB95A902e8de

/*
address[] public AllowTokens=[0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3,0x2170Ed0880ac9A755fd29B2688956BD959F933F8,
0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d,0xCC42724C6683B7E57334c4E856f4c9965ED682bD,
0xbA2aE424d960c26247Dd6c32edC70B295c744C43,0x7083609fCE4d1d8Dc0C979AAb8c869Ea2C873402,
0x4338665CBB7B2485A8855A139b75D5e34AB0DB94,0x2859e4544C4bB03966803b044A93563Bd2D0DD4D,
0x1CE0c2827e2eF14D5C4f29a091d735A204794041,0xc748673057861a797275CD8A068AbB95A902e8de];
*/


mapping(address => bool) public TokenMap; // default value for each key is false

uint public LockTimeDays=180;

uint public UserCount;
uint public MinProfit=100;
uint public FeePercent = 5;
uint public PoolBalance;


ERC20 public USDToken ;

address ContractOwner;

modifier noReentrant() {
	require(!locked, "No re-entrancy");
	locked = true;
	_;
	locked = false;
}

  modifier onlyOwner {
        require(msg.sender == ContractOwner, "Only owner can call this function");
        _;
    }

constructor(address _USD) ERC20("Fund", "FUND") {
	USDToken=ERC20(_USD);
  //  _mint(msg.sender, initialSupply);
  ContractOwner=msg.sender;
}

function depositUSDToken (uint256 amount) public noReentrant{
    // Increment the account balance for this address
    
    require(amount > 0, "Deposit amount need >0");
    uint256 allowance = USDToken.allowance(msg.sender, address(this));
    require(allowance >= amount, "Check the token allowance");

//user transfer USD to contract
USDToken.transferFrom(msg.sender, address(this), amount);

//contract mint contract token to user.
_mint(msg.sender, amount);       // minting same amount of tokens to for simplicity

bool InvestorExist=false;
for (uint i; i < UserCount; i++) {
	if (Users[i].UserAddress == msg.sender){
		Users[i].InvestAmount += amount;
		InvestorExist=true;
	}
}

if (!InvestorExist){
	Userid[msg.sender]=UserCount;
	Users[UserCount].InvestAmount += amount;
	Users[UserCount].UserAddress =payable (msg.sender) ;
}

LockTime[msg.sender]=block.timestamp + LockTimeDays * 1 days;

PoolBalance += amount;
UserCount++;
    // Trigger an event for this deposit
    //emit DepositEvent(from, tokens);
}



function Withdraw() external noReentrant{
	uint _shares = Users[Userid[msg.sender]].InvestAmount;
	require(USDToken.balanceOf(address(this)) >= _shares, "farm balance is insufficient");
	require(block.timestamp > LockTime[msg.sender], "you can withdraw after your lock time.");        
	require(_shares > 0, "your investment is zero");
	_burn( msg.sender, _shares);
	USDToken.transfer(msg.sender, _shares);
	Users[Userid[msg.sender]].InvestAmount=0;
	require(PoolBalance >= _shares, "PoolBalance >= _shares");

//update pool
PoolBalance -=_shares;
emit WithdrawEvent(msg.sender, _shares);
}





//only send profit except capital
function DistributeProfit( ) external  onlyOwner{
	uint TotalProfit=USDToken.balanceOf(address(this)) - PoolBalance;
	require(TotalProfit > MinProfit, "No profit");
	
	for (uint i; i < UserCount; i++) { 
		require(Users[i].InvestAmount > 0,"user have no invest.");
		uint  CapitalAndProfit= Users[i].InvestAmount *  USDToken.balanceOf(address(this)) / totalSupply() ; 
		require(CapitalAndProfit > Users[i].InvestAmount,"Capital And Profit need > user Invest Amount");
		
		uint profit=CapitalAndProfit - Users[i].InvestAmount;
		uint Fee=(FeePercent * profit) / 100 ;
		uint UserProfit=profit - Fee;

        //send profit
        USDToken.transfer(Users[i].UserAddress, UserProfit);
        //Users[i].InvestAmount=0;

        //send fee
        USDToken.transfer(msg.sender, Fee);

    }

    if (USDToken.balanceOf(address(this)) > 0 ){
    	USDToken.transfer(msg.sender, USDToken.balanceOf(address(this)));
    }
//PoolBalance =USDToken.balanceOf(address(this));



}



//please specify amountOutMin reasonably
function SwapTokens(address _RouterAddress, address FromTokenAddress,uint FromTokenAmountIn,address ToTokenAddress,uint amountOutMin) external onlyOwner {
        // Get the balance of FromToken
        //uint FromTokenAmountIn = IERC20(FromTokenAddress).balanceOf(address(this));

        // Approve the Uniswap Router to spend TokenA
        IERC20(FromTokenAddress).approve( _RouterAddress, FromTokenAmountIn);

        // Define the path for the swap (TokenA to TokenB)
        address[] memory path = new address[](2);
        path[0] = FromTokenAddress;
        path[1] = ToTokenAddress;
        uint deadline = block.timestamp + 500;  

	IUniswapV2Router02 Router = IUniswapV2Router02(_RouterAddress);

        // Perform the swap
        Router.swapExactTokensForTokens(
            FromTokenAmountIn,
            amountOutMin, // min amount of TokenB to receive (slippage tolerance)
            path,
            address(this),
            deadline
        );
    }




    function CheckAllowToken(address _TokenAddress) public view returns (bool) {
    	for (uint i = 0; i < AllowTokens.length; i++) {
    		if (AllowTokens[i] == _TokenAddress) {
    			return true;
    		}
    	}

    	return false;
    }

/*
function AddToken(address _TokenAddress) public onlyOwner {
    AllowTokens.push(_TokenAddress);
    TokenMap[_TokenAddress] = true;
 
}
*/


receive() payable external {}
    //(20 * 600) / 100 = 120  <->  600 * 20%



function TransferToken(address TokenAddress,address ToAddress,uint Amount)    public onlyOwner {
ERC20(TokenAddress).transfer(ToAddress, Amount);
} 


function TransferETH( address payable _receiver,uint256 _Amount) public onlyOwner  {
(_receiver).transfer(_Amount);
}


}
