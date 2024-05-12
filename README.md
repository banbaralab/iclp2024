# Dominating Set Reconfiguration with Answer Set Programming

## Requirements
- [clingo](https://potassco.org/clingo/) version 5.5 or higher

## Sample sessions
### Minimum Dominating Set Problem
```
clingo encoding/Potassco.lp bench/dsp/asp/1-Fullins_3.lp
```

### Dominating Set Reconfiguration Problem
```
python3 solver/recongo_compet2023.py encoding/dsrpTJ_ex1_basic_inc.lp encoding/hint_token1_inc.lp bench/dsp/asp/1-Fullins_3.lp bench/dsrp/asp/1-Fullins_3_reachable_01.lp
```
