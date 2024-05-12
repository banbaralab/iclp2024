# Dominating Set Reconfiguration with Answer Set Programming

## Requirements
- [Python enabled clingo](https://potassco.org/clingo/) version 5.5 or higher

## Sample sessions
### Minimum Dominating Set Problem
```
clingo encoding/dsp_base1.lp benchmark/asp/col/1-Fullins_3.lp 
```

### Dominating Set Reconfiguration Problem
```
python3 solver/recongo_compet2023.py encoding/dsrp_tj_t1t2t3_inc.lp benchmark/asp/col/1-Insertions_4.lp benchmark/asp/dat/1-Insertions_4_reachable_01.lp 

```
