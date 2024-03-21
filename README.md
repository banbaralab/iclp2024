# Dominating Set Reconfiguration with Answer Set Programming
XXX is a collection of ASP encodings for solving Dominating Set
Problems and Dominating Set Reconfiguration Problems(DSP and DSRP, in
short).

## Requirements
- clingo
- recongo
- Python

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
    on its neighborhood node, this hint limits the destination of
    tokens to adjacent vertices.
- heu
  + the heuristic of minimal domination sets.
  + If you use this heuristics, you need to write "--heu=domain".
