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
constant-not-in-uppercase | best-practice | WARNING |  A constant name is not in UPPER_CASE like other constant variables.
lack-of-revert-alreadyinitialized | security | ERROR | Function initialize() doesn't have AlreadyInitialized revert.
missing-constructor-sanity-checks | security | WARNING | There're no sanity checks for some constructor arguments.
privileged-func-lacks-access-control | security | ERROR | A privileged administrator function lacks access control.
state-changing-func-does-not-emit-event | correctness | WARNING | A state changing function does not emit an event.
transfer-return-value-not-checked | security | WARNING | Return value of an ERC20 transfer is not checked.
underscore-prefix-function | best-practice | WARNING | The convention of functions named with the "_" prefix is not clear.
uint-naming-lowercase | best-practice | WARNING | An agreed upon naming for unsigned integer variables/functions/errors/etc is *UInt* with uppercase I.
