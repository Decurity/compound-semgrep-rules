# Semgrep rules for Compound
In this repository you can find [semgrep](https://semgrep.dev/) rules designed for Compound V3 ([comet](https://github.com/compound-finance/comet)).

## Scanning

```shell
$ semgrep --config solidity ~/comet/contracts

```

## Testing

True positive lines are marked with `// ruleid: ...`

True negative lines are marked with `// ok: ...`

Run tests: 

```shell
$ semgrep --test solidity
```

Validate rules: 

```shell
$ semgrep --validate --config solidity
```

## Rules

Rule ID | Category | Severity | Description
--- | --- | --- | ---
privileged-func-lacks-access-control | security | ERROR | A privileged administrator function lacks access control.
state-changing-func-does-not-emit-event | correctness | WARNING | A state changing function does not emit an event.
transfer-return-value-not-checked | security | WARNING | Return value of an ERC20 transfer is not checked.
lack-of-revert-alreadyinitialized | security | ERROR | Function initialize() doesn't have AlreadyInitialized revert
underscore-prefix-function | coding-style | WARNING | The convention of functions named with the "_" prefix is not clear.
uint-naming-lowercase | coding-style | WARNING | An agreed upon naming for unsigned integer variables/functions/errors/etc is *UInt* with uppercase I.
constant-not-in-uppercase | coding-style | WARNING |  A constant name is not in UPPER_CASE like other constant variables.

