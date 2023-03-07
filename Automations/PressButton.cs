namespace Debounce2;

public class PressButton : VerilogAutomation
{
    protected override Dependencies Dependencies => Dependencies.None;

	Random _random = new Random();

	const int BounceHighMin = 50;
	const int BounceHighMax = 100;
	const int BounceLowMin = 50;
	const int BounceLowMax = 100;


	protected override void ApplyAutomation()
	{
		int numberOfBounces = _random.Next(3, 7);
		string bounceCode = "";
		for(int i = 0; i <numberOfBounces; i++)
		{
			int high = _random.Next(BounceHighMin, BounceHighMax + 1);
			int low = _random.Next(BounceLowMin, BounceLowMax + 1);
			bounceCode += @$"
button <= 1; #{high};
button <= 0; #{low};";
		}

		CodeAfterAutomation += @$"
{bounceCode}
button <= 1;
#20000;
button <= 0;
#50000;
		";
	}
}