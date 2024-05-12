# Dominating Set Reconfiguration with Answer Set Programming

## Requirements
- [clingo](https://potassco.org/clingo/) version 5.5 or higher

## Usage
- for solving minimum-DSP:
```
clingo encoding/Potassco.lp bench/dsp/asp/1-Fullins_3.lp
```

- for solving DSRP:
```
python3 solver/recongo_compet2023.py encoding/dsrpTJ_ex1_basic_inc.lp encoding/hint_token1_inc.lp bench/dsp/asp/1-Fullins_3.lp bench/dsrp/asp/1-Fullins_3_reachable_01.lp
```

## Sample sessions

### Traveling Salesperson Problem

```
python3 solver/heulingo.py --heulingo-configuration=tsp benchmark/tsp/tsp.lp benchmark/tsp/instances/dom_rand_70_300_1155482584_3.lp benchmark/tsp/configs/random_N.lp -c n=3
```
