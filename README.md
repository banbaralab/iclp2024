# Dominating Set Reconfiguration with Answer Set Programming

## Requirements
- [clingo](https://potassco.org/clingo/) version 5.5 or higher

## Encodings
### DSP
- Pottassco encoding
  + Existing standard encoding for solving DSP.
### DSRP
- dsrpTJ_ex1_basic_inc.lp
  + Standard encoding for solving TJ-type DSRP.
- dsrpTAR_ex1_basic_inc.lp
  + Standard encoding for solving TAR-type DSRP.
### hint constraints for TJ-type DSRP
- distance1
  + hint constraints regarding distance from the start state.
- distance2
  + hint constraints regarding distance from the goal state.
- token1
  + If token is removed from the node X at step t-1, token cannot be
    added to the node X at step t.
- token2
  + If token is added to the node X at step t-1, token cannot be
    removed from the node X at step t.
- token3
  + If the token is removed from node X which has any other token
    on its adjacent nodes, this hint limits the destination of
    token to its adjacent nodes.
- heu
  + the heuristic of minimal domination sets.
  + If you use this heuristics, you need to write "--heu=domain".

## Benchmarks
- The dsp directory has graph instance file.
- The dsrp directory has files that have start state, goal state, and number of elements.

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
