Asenna tox koneeseen komennolla:

`pip install tox`

Ota huomioon että kaikki `tox.ini` tiedostossa mainitu python versiot on oltava asennettuna koneella jos niitä halutaan käyttää.

Mukana tuleva demo robot testi ajetaan komennolla:

`tox -- python -m robot demo.robot`

Muuta `requirements.txt` olevien moduleiden versio numeroita ja ajatesti uudelleen luodulla ympäristöllä.
Optio -r pakottaa tox:ia luomaan ympäritön tyhjästä. Osana pipelineä on järkevää että käytetään aina -r optiota.

`tox -r -- python -m robot demo.robot`

Default nimi tox:in konfiguraatio tiedostolle on `tox.ini` -c optiolla voidaan määritellä toinen tiedosto. Esim:

`tox -r -c .\tox-4envs.ini -- python -m robot demo.robot`
