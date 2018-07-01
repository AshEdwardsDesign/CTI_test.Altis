// Create map markers over all objectives
{
  _town = text _X;
  _sizeX = 100;
  _sizeY = 100;

  _name = format["mrk_%1", _town];

  _marker = createMarker [_name, getPos _x];
  _marker setMarkerSize [_sizeX, _sizeY];
  _marker setMarkerShape "ELLIPSE";
  _marker setMarkerBrush "SOLID";
  _marker setMarkerColor "ColorGreen";

} forEach nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameCityCapital", "NameCity", "NameLocal", "NameVillage", "Strategic", "CityCEnter", "NameMarine"], 25000];
