state("Lively Chair Simulator") {}

startup
{
	Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Unity");
    	vars.Helper.GameName = "Lively Chair Simulator";
}

init
{
	vars.Helper.TryLoad = (Func<dynamic, bool>)(mono => 
   	{
       		vars.Helper["splitIndex"] = mono.Make<int>("AutosplitData", "splitIndex");
      	  	return true;
    	});
}

start
{
    if (vars.Helper["splitIndex"].Current == 5 && vars.Helper["splitIndex"].Old == 0)
    {
        return true;
    }
}

split
{
    if (vars.Helper["splitIndex"].Current == 8 && vars.Helper["splitIndex"].Old == 5)
    {
        return true;
    }
}

