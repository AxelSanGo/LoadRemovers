// LRT plugin made by AxelSanGo, for Nioh 2 v1.28.08

state("nioh2") {
    bool inMission : 0x1F285A9;
    bool onMap     : 0x1F218CC;
}
init{
    vars.loading = false;
}

update {
    vars.loading = !(current.inMission || current.onMap);
}

isLoading {
  return vars.loading; 
}