; called to handle an extend key
doKey(k, up)
{
	SetKeyDelay -1
	if (up)
		Send "{Blind}{" . k . " Up}"
	else
		Send "{Blind}{" . k . " DownTemp}"
}
