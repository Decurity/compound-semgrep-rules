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

Rule ID | Targets | Description
--- | --- | ---


