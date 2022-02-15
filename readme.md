Repo sisältää esimerkin `tox.ini` tiedostosta jota voidaan käyttää esim robot testien ajamiseen.
tiedosto konfiguroi tox:in luomaan python ympäristö `requirements.txt` mukaiseksi. Sekä ajamaan tox komentoa seuraavat komennot.
Repo sisältää `demo.robot` tiedoston testaamista varten. 
Sekä `tox-4envs.ini` konfiguraatio tiedoston jossa demonstroidaan tox ominaisuutta ajaa useissa eri ympäristöissä.


Asenna tox koneeseen komennolla:

`pip install tox`

Ota huomioon että kaikki `tox.ini` tiedostossa rivillä: `envlist = ` mainitut python versiot on oltava asennettuna koneella jos niitä halutaan käyttää.

Mukana tuleva demo robot testi ajetaan komennolla:

`tox -- python -m robot demo.robot`

Muuta `requirements.txt` olevien moduleiden versio numeroita ja ajatesti uudelleen luodulla ympäristöllä.
Optio -r pakottaa tox:ia luomaan ympäristön tyhjästä. Osana pipelineä on järkevää että käytetään aina: -r optiota.

`tox -r -- python -m robot demo.robot`

Default nimi tox:in konfiguraatio tiedostolle on `tox.ini` -c optiolla voidaan määritellä toinen tiedosto. 
Esimerkiksi projektissa oleva 4 ympäristön konfiguraatio tiedostoa käytetään näin:

`tox -r -c tox-4envs.ini -- python -m robot demo.robot`
