if (wallhit = true)
{
	wallhp -= 1;
}
else
{
	wallhit = false;
}

if (wallhp > 50)
{
	repairable = true;
	needsrepair = true;
	draw_text(oWall.x, oWall.y, "This wall is damaged, repair it asap")
	wallhp -= 2
}
else
{
	wallhp = 100
	repairable = false;
	needsrepair = false;
}
