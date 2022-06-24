---
title: "France Relance"
abstract: "Travailler à partir des données de France Relance pour en faire des analyses"
---

De nombreuses aides ont été distribuées par l’Etat ces deux dernières années pour répondre à la crise sanitaire. Trouver dans quelle mesure ces fonds ont eu un impact sur l’activité économique et/ou la transition écologique en France.

Pour répondre à cette problématique, nous vous proposons les pistes suivantes (qui restent indicatives) :

- faire une cartographie des différentes aides et programmes de l’Etat (fonds de solidarité, plan France Relance, prêts garantis de l’Etat, etc). Un travail d’éditorialisation sera nécessaire. **Edito / Traitement de données**
- proposer des visualisations et des indicateurs agrégeant l’ensemble de ces données pour permettre une meilleure compréhension de ces fonds auprès des citoyens. Il est possible de se concentrer sur un secteur d’activité, un territoire ou un plan d’action particulier pour cette étape (ou bien au contraire d’avoir une vision globale au niveau national). **Data Viz**
- analyser les impacts économiques (santé d’un secteur, croissance, maintien de l’emploi…) et/ou écologiques (respect des accords de Paris, plan climat et résilience) de ces aides (ou d’une sous-partie). **Analyse métier**
- pour les projets encore en cours de développement, prédire les impacts de l’investissement de certains secteurs pour l’avenir. **Data Science**
- Proposer des recommandations

Exemples : 

- Mesure “Ma Prime renov” a permis en avril 2022 de financer 900000 dossiers pour la rénovation énergétique de bâtiments. Dans le Maine et Loire 13000 dossiers ont été financés, ce qui correspond à XXX Kwh économisés par an.
- l’accord de Paris vise à rénover XXX batiments d’ici 30 ans. Pour arriver, à ce chiffre, le plan France Relance n’est pas suffisant, il faut financé en plus XXX dossiers, au rythme de XX / an, etc.

## Imports

```python
import pandas as pd
```

## Données agrégées

Charger les données agrégées :

```python
df = pd.read_csv('donnees-agregees.csv', sep=";",dtype=str)
```

Charger les données territorialisées : 

```python
df = pd.read_csv('donnees-territoriales.csv',sep=";", dtype=str)
```
