// LRT plugin made by AxelSanGo, for Nioh 2 v1.28.08

state("nioh2") {
    bool inMission : 0x1F285A9;
    bool onMap     : 0x1F218CC;
    bool auxilA    : 0x224BE94;
    uint auxilB    : 0x224B0B0;
    uint stopBS    : 0x1F2859C;
    uint stopLD    : 0x1F2858C;
}
init{
    vars.loading = false;
}

update {
    vars.loading = 
       !(current.inMission || current.onMap) 
       || current.auxilA
       || current.auxilB == 1
       || current.stopBS == 1065353216
       || current.stopLD == 0;
}

isLoading {
  return vars.loading; 
}