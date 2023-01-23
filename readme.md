# Python en Robotframework installatie

# git stuff

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

## Installatie

1. Installeer [Python](https://www.python.org/downloads/windows/)
1. Om je lokale python installatie niet te vervuilen met packages die specifiek zijn voor dit testproject, [maak je een venv aan](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/) met:

   `python -m venv venv`
 1.  Er wordt nu onder andere een `Scripts` map gemaakt met bash, batch en powershell commando's om de venv te (de)activeren. *Activeer de venv* als dat nog niet gedaan is met Scripts/Activate.ps1 of Scripts/activate.bat of Scrips/activate (als je in een bash shell werkt) (.\env\Scripts\activate).
 1. Je kunt controleren of de venv actief is met het commado `pip -V`. In de output staat een verwijzing naar de `Lib\site-packages` map van het testproject.

    *voorbeeld venv is actief*  
    ``` 
    $> pip -V
    pip 22.3.1 from C:\repo\TESTS\my-test-project\env\Lib\site-packages\pip (python 3.11)
    ```
    *voorbeeld venv is niet actief - de default install wordt gebruikt*
    ```
    $> pip -V
    pip 22.3.1 from C:\Users\USERNAME\AppData\Local\Programs\Python\Python311\Lib\site-packages\pip (python 3.11)
    ```

    >**Op Windows 11 in powershell kan het uitvoeren van pip in een venv een fout geven**
    >
    > Gebruik dan deze methode: `py -m pip -V `

1. **Init Poetry voor dependencies**
    > poetry init

1. **Install Robot Framework en andere dependencies**
    > poetry add robotframework robotframework-browser robotframework-requests
    > Controleer de installatie met: 'robot --version'


1. Specifiek voor dit project wordt [robotframework-browser](https://robotframework-browser.org) gebruikt, 
deze heeft [extra installatie instructies](https://robotframework-browser.org/#installation). 
Hiermee installeer je **EERST** Node.js. Gebruik van https://nodejs.org/en/download/ de laatste LTS versie.

    > `rfbrowser init` als dit niet werkt gebruik dan `python -m Browser.entry init` 
    >
    > zie de *Installation instructions* op https://github.com/MarketSquare/robotframework-browser 

    **KVK specifiek**
    *De collega's van het webteam hebben een informatie pagina gemaakt om Node.js bij de KVK correct werkend te krijgen, 
    zie hiervoor https://infoplein.kvk.nl/display/WEB/Voorbereiding. Het gaat hier vooral om het zscaler certificaat en de KVK Nexus repository.*




---
## Voorbeeld requirements.txt uit mijn PoC project

```
###### Requirements without Version Specifiers ######
robotframework
robotframework-browser
robotframework-requests
robotframework-jsonlibrary
robotframework-datadriver
robotframework-keepasslibrary
# robotframework-pabot
```