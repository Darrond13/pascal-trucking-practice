program LoadProfit;

{$mode delphi}

uses SysUtils;

const
FreeDetentionHours = 2;
DetentionRate = 50.00;

var
Rate: Currency;
FuelRate: Currency;
DriverRate: Currency;
Miles: Integer;
DetentionHours: Integer;
Linehaul, Fuel, Detention, Total, DriverPay, Margin: Currency; 

begin


  Miles := 600;
  Rate := 2.35;
  FuelRate := 0.48;
  DetentionHours := 3;
  DriverRate := 0.55;


  LineHaul := Miles * Rate;
  Fuel := Miles * FuelRate;
  if DetentionHours > FreeDetentionHours then
    Detention := (DetentionHours - FreeDetentionHours) * DetentionRate
  else
    Detention := 0;
  Total := LineHaul + Fuel + Detention;
  DriverPay := Miles * DriverRate;
  Margin := Total - DriverPay;


  Writeln('LineHaul: ', FormatFloat('$#,##0.00', LineHaul));
  Writeln('Fuel: ', FormatFloat('$#,##0.00', Fuel));
  Writeln('Detention: ', FormatFloat('$#,##0.00', Detention));
  Writeln('Total: ', FormatFloat('$#,##0.00', Total));
  Writeln('DriverPay: ', FormatFloat('$#,##0.00', DriverPay));
  Writeln('Margin: ', FormatFloat('$#,##0.00', Margin));


end.


