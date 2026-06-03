within HPF.trial;
function createB
  input String name;
  output HPF.trial.ClassB myInstance;
algorithm
  myInstance.name:= name;

end createB;
