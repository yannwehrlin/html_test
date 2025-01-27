import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';

List<dynamic>? updateCatStateVariable() {
  /// MODIFY CODE ONLY BELOW THIS LINE

// at the start of the application, I want to update an app state variable called catItemsList with a list of documents with custom type "cat". I have currently the content for these documetns on a json array as a text.
  List<Map<String, dynamic>> catItemsJson = [
    {
      "wid": "22xYX76kx9r4YpqTJ",
      "title": "Avec respect du méridien horizontal",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579002817532"}
      },
      "pathologiesArray": ["hMXupQNq2yvHqkjXE"],
      "othercats": ["EgeP4xnANLqn9JLWT"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Déficit strictement unilatéral du champ visuel AVEC respect du méridien horizontal</font></b></h3>",
      "questionsHelper":
          "<h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Atteinte vasculaire rétinienne unilatérale</li><li>Neuropathie optique unilatérale</li></ul>",
      "keywords": "Avec respect du méridien horizontal"
    },
    {
      "wid": "28PNqf9kShjrqm8Rk",
      "title": "Absence de contraste du nerf optique à l'IRM",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568122059126"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Neuropathie optique unilatérale douloureuse SANS prise de contraste du NO</font></b></h3><h4><b><font color=\"#ffb527\">A vérifier&nbsp;</font></b></h4><ul><li>Relire\nl’IRM, vérifier sa qualité et le\ndélai par rapport aux 1ers symptômes (répéter si besoin)</li><li><b>Céphalées plutôt que douleurs péri oculaires ???</b></li></ul><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Compression\n:\nApoplexie hypophysaire, etc…</li><li>Neuropathie\noptique\nischémique\n(œdème papillaire le plus souvent</li><ul><ul><li>Artéritique\n(Horton, autre vascularite) surtout car douleurs</li><li>Non\nartéritique\n(papille à risque sur l’œil adelphe),\ndouleur rare</li></ul></ul><li>Papillite/neurorétinite</li><ul><ul><li>Infectieuses\n: syphilis, bartonellose,\nborreliose,\ntoxoplasmose...</li><li>Inflammatoires\n: Sarcoïdose, Lupus...</li></ul></ul></ul>",
      "pathologiesArray": [
        "MhR2dyLYG5fBwFmpp",
        "YGTJg9tTjbRy36p9j",
        "cTgoQSkEtZdrsGmGK"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords": "Absence de contraste du nerf optique à l'IRM"
    },
    {
      "wid": "2m6skofo7FDv6SCEv",
      "title": "Pas de respect du méridien horizontal",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Diagnostics possibles",
      "createdAt": {
        "date": {"numberLong": "1579002832654"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Déficit strictement unilatéral du champ visuel SANS respect du méridien horizontal</font></b></h3><ul><li>Trouble unilatéral des milieux optiques : déficit diffus ou rétrécissement\nconcentrique des isoptères<br></li><li>Rétinopathie (vérifier l’OCT dans la zone rétinienne\ncorrespondant au déficit du CV)</li><li>Neuropathie optique unilatérale</li><li>Atteinte\nfonctionnelle : incohérence entre les examens et la clinique (contexte\nclinique+++)&nbsp;</li></ul>",
      "pathologiesArray": [
        "X3XTMgymXcDYaWTRz",
        "Nsan86qFjN7Sv2He9",
        "eKEPmughCxhicqhGe"
      ],
      "othercats": ["EgeP4xnANLqn9JLWT"],
      "children": [],
      "keywords": "Pas de respect du méridien horizontal"
    },
    {
      "wid": "2qjb67uQStvY7E6Pd",
      "title": "Baisse visuelle brutale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568123477131"}
      },
      "children": ["pqFjhjsMfsCizx3xS", "ZxqEuSGBgBGk9MGAK"],
      "introduction":
          "<div><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Neuropathie optique unilatérale indolore ET brutale</font></b><br></div><p>\n\n\n\n\n\n\n\n</p><p></p><ul></ul>\n\n\n\n\n\n<ul></ul>\n\n<p></p><ul><li>Vérifier\nl’absence d’OACR reperfusée (OCT maculaire)</li><li>Aspect\ndu fond d’œil à la phase aiguë</li><ul><ul><li>Œdème\npapillaire</li><li>Papille\nnormale ou pâle/excavée</li></ul></ul></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Baisse visuelle brutale",
      "questionsHelper":
          "<h4><font color=\"#ffb527\">Question</font></h4><p>Y a-t-il un œdème papillaire ?&nbsp;</p>"
    },
    {
      "wid": "3nZ9FKNHxdaafqxSZ",
      "title": "Absence de prise de contraste des nerfs optiques à l'IRM",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568125294259"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Neuropathie optique bilatérale douloureuse SANS prise de contraste des NO</font></b></h3><p>\n\n\n\n\n\n\n\n</p><p></p><ul></ul>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<ul></ul>\n\n<p></p><p><i style=\"\"><font color=\"#636363\">Douleurs : céphalées plutôt que\npéri oculaires&nbsp; ?</font></i></p><h4><font color=\"#f44263\">Diagnostics possibles</font></h4><ul><li><b>Neuropathies\noptiques\ncompressives</b> :</li><ul><ul><li>Apoplexie\nhypophysaire, anévrysme</li></ul></ul><li><b>HIC\nfulminante</b></li><li><b>HTA</b>\n: rétine souvent anormale à distance de l’œdème papillaire, œdème maculaire</li><li><b>Neuropathie\noptique ischémique artéritique</b> : </li><ul><ul><li>Maladie\nde Horton</li><li>Autres\nvascularites</li></ul></ul></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": [
        "ugXG3pnDoBptWzrYW",
        "KtTSExpfH6yra7mJY",
        "MhR2dyLYG5fBwFmpp",
        "YGTJg9tTjbRy36p9j"
      ],
      "children": [],
      "keywords": "Absence de prise de contraste des nerfs optiques à l'IRM"
    },
    {
      "wid": "3ubtrX4Qyz2FYbbAn",
      "title": "Diplopie binoculaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567703592635"}
      },
      "introduction":
          "<p><br></p><p>Penser à localiser et examiner l’œil pour guider le bilan à faire en\nurgence</p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><p>≥ 50 ans HORTON ? <font color=\"#ff0000\"><b>Obtenir en urgence CRP, VS, NFS</b></font></p><p><b>Obtenir rapidement une IRM cérébrale avec injection de gadolinium</b></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "othercats": ["GMh5MKqnKa2cv5cCR"],
      "questionsHelper":
          "<h4><font color=\"#f44263\">Quelques situations particulières à reconnaître</font></h4><ul><li>VI et céphalées orthostatiques</li><ul><li>&nbsp;Hypotension LCS ?</li><li>IRM cérébrale avec injection de gadolinium rapide</li></ul><li>VI et Céphalées pire couché et/ou OP</li><ul><li>HIC ?</li><li>IRM cérébrale et angio IRM veineuse ou Scanner cérébral avec angio scanner veineux urgent puis IRM cérébrale</li></ul><li>III douloureux et céphalées et / ou Terson</li><ul><li>IRM cérébrale et angio IRM artérielle ou Scanner cérébral avec angio scanner artériel urgent</li></ul></ul><p></p><p><font color=\"#ff0000\"><b>Dans les autres cas, un trouble oculomoteur récent associé à une céphalée doit être orienté, après examen clinique complet, vers un centre d’urgence avec un courrier détaillé</b></font></p>",
      "keywords": "Diplopie binoculaire"
    },
    {
      "wid": "4CP5T7mJiYDTENDgB",
      "title": "Oedème papillaire bilatéral isolé",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567697757096"}
      },
      "pathologiesArray": ["ugXG3pnDoBptWzrYW", "KtTSExpfH6yra7mJY"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "othercats": ["EgeP4xnANLqn9JLWT", "xbmghwHhTgMN3f3y2"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Baisse visuelle bilatérale ET œdème papillaire bilatéral isolé</font></b></h3><ul><li>Le diagnostic le plus probable est celui de neuropathie optique bilatérale</li><li>Mais œdème papillaire de stase chronique ou HTIC fulminante peuvent donner une baisse visuelle</li><li>Il faut aussi éliminer une HTA maligne</li></ul>",
      "keywords": "Oedème papillaire bilatéral isolé"
    },
    {
      "wid": "4u5hpvQGxkFsvPBPr",
      "title": "Mydriase pathologique",
      "isRoot": false,
      "examsTitle": "Voir fiches",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1578580537515"}
      },
      "examsArray": [
        "9wSioGzCfreJEPQfY",
        "oDyWjLiHmh2k8D3yz",
        "YjhfyDoGyGSXw25QA",
        "KoiXGpu8P6ggT2WoL",
        "3hesagpNYKjqTnuEH"
      ],
      "children": ["9aQ4jYuKpe9SPRPbS", "MbHeXqdetp2divZvQ"],
      "introduction":
          "<p><span style=\"color: rgb(255, 181, 39); font-size: 1.1em;\"><br><b>Contrôler</b></span><br></p><ul><li>L'oculomotricité</li><li>Eliminer une diplopie (verre rouge, baguette de Maddox)</li><li>Si besoin coordimètre</li><li>Position des paupières</li><li>Rechercher une paralysie accomodative</li></ul>",
      "pathologiesArray": ["YDEoFLh8S7RQB39Wc"],
      "keywords": "Mydriase pathologique"
    },
    {
      "wid": "5FYuKBcGCevqPXyg6",
      "title": "Ptosis et/ou myosis réactif : CBH",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567703533464"}
      },
      "introduction":
          "<h3><h4><b><font color=\"#ffb527\"><br>Suspicion de dissection carotidienne du côté du CBH</font></b></h4></h3><p><b><font color=\"#ff0000\">URGENT</font></b></p><ul><li><b><font color=\"#ff0000\">Coucher le patient&nbsp;</font></b></li><li><b><font color=\"#ff0000\">Transfert du patient en Unité Neuro-Vasculaire (prévenir la structure par téléphone)</font></b></li><li><b><font color=\"#ff0000\">IRM cérébrale et angioIRM artérielle ou scanner cérébral avec angioscanner artériel</font></b></li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": ["PHemeJdnrzCzm5YkJ"],
      "keywords": "Ptosis et/ou myosis réactif : CBH"
    },
    {
      "wid": "5ijvejZKc6P9enag5",
      "title":
          "LCS de composition normale ET augmentation de la pression d'ouverture (> 25 cm H2O chez l'adulte, > 28 cm H2O chez l'enfant)",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567785513323"}
      },
      "introduction":
          "<h4><b><font color=\"#f44263\"><br>Diagnostics possibles</font></b></h4><ul><li>HIC idiopathique</li><li>HIC de causes médicamenteuses (vitamine A, hormone de croissance, cyclines...)</li><li>Si terrain atypique : évoquer tumeur médullaire, fistule durale...</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": ["5pjFMh5J82p5uLagi"],
      "keywords":
          "LCS de composition normale ET augmentation de la pression d'ouverture (> 25 cm H2O chez l'adulte, > 28 cm H2O chez l'enfant)"
    },
    {
      "wid": "5kyBXvnmhSYdFgrrZ",
      "title": "Baisse visuelle et/ou œdème papillaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567703554950"}
      },
      "children": ["QtcRY2dm2yQFAgnQu", "rJaXmyc8nnGPBJBc4"],
      "introduction":
          "<p><span style=\"font-size: 1.1em;\"><br><font color=\"#f1522c\">A vérifier</font></span><br></p><ul><li>Fond d'œil </li><li>Champ\nvisuel</li><li>Recherche\nHTA </li></ul>",
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "examsArray": ["ReiNopLbtx8X66Bet"],
      "questionsHelper":
          "<h4><b><font color=\"#ffb527\">Question</font></b></h4><p>Baisse visuelle et/ou œdème papillaire uni ou bilatérale ?</p>",
      "keywords": "Baisse visuelle et/ou œdème papillaire"
    },
    {
      "wid": "6FY46vhotAR3WTn9i",
      "title": "Baisse visuelle rapidement progressive (≤ 15j)",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568123518816"}
      },
      "children": ["bczWu6tmQr9gWFE8w", "tZL5QE98pSwoHmCG5"],
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Neuropathie optique unilatérale, indolore ET baisse visuelle rapidement progressive</font></b><br></p><p></p><h4><b><font color=\"#f1522c\">A vérifier</font></b></h4><p>\n\n\n\n\n\n\n\n</p><p></p><ul></ul>\n\n\n\n\n\n\n\n\n\n<ul></ul>\n\n<p></p><ul><li>Aspect\ndu fond d’œil à la phase aiguë ?</li><ul><ul><li>Œdème\npapillaire</li><li>Papille\nnormale ou pâle/excavée</li><li>Recherche\nd’une papille à risque de NOIA NA sur l’œil adelphe</li></ul></ul></ul><h4><font color=\"#ffb527\"><b>Obtenir</b></font></h4><p><b>Une IRM orbitaire et encéphalique à la phase\naiguë (permettant de visualiser les voies visuelles)</b></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Baisse visuelle rapidement progressive (≤ 15j)",
      "questionsHelper":
          "<h4><b><font color=\"#ffb527\">Question</font></b></h4><p>Y a-t-il une prise de contraste du nerf optique ?</p>"
    },
    {
      "wid": "6WbGEcxaRzibrCAve",
      "title": "Céphalées habituelles (épisodiques ou chroniques)",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567529181253"}
      },
      "introduction":
          "<h4><br></h4><h3><b><font color=\"#ffb527\">Céphalées isolées habituelles</font></b></h3><ul><li>Traitement antalgique symptomatique</li><li>Pas\nde bilan paraclinique systématique</li><li>Si besoin : avis neurologique</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Céphalées habituelles (épisodiques ou chroniques)"
    },
    {
      "wid": "7teqGzHENyoAnHrTA",
      "title": "Imagerie anormale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567702148584"}
      },
      "introduction":
          "<h3><span style=\"font-size: 1em;\"><b style=\"\"><font color=\"#f44263\"><br>Diagnostics possibles</font></b></span></h3><ul><li>Dissection<br></li><li>Thrombose veineuse </li><li>Tumeur</li><li>Hydrocéphalie</li></ul>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<p></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "conclusion": "<font color=\"#ff0000\"><b>Avis spécialisé</b></font>",
      "keywords": "Imagerie anormale"
    },
    {
      "wid": "8ABo8q3SHY6pHjT2D",
      "title": "Cause systémique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568128647344"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Trouble visuel transitoire bilatéral de cause systémique</font></b></h3><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Maladie de Horton </li><li>Hyper/hypo\ntension artérielle</li><li>Hyperglycémie\n(trouble réfractif) </li><li>Hypoglycémie\n(malaise)</li><li>Syncopes, bloc auriculo-ventriculaire, bradycardie, malaise vagal</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Cause systémique"
    },
    {
      "wid": "8LhPsLihMW2tSiyew",
      "title": "Bilatérale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568118898425"}
      },
      "children": ["WyXyjYN4bh4QL8gau", "hee5XsxwcsuNjLHbg"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Neuropathie optique bilatérale</font></b></h3><h4><b><font color=\"#f1522c\">A vérifier</font></b></h4>\n\n\n\n\n\n\n\n\n\n\n\n<ul><li>DPAR\nsouvent absent sauf si atteinte asymétrique</li><li>Si ≥ 50 ans&nbsp; : CRP, VS, NFS en urgence\npour éliminer une maladie de Horton</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "questionsHelper":
          "<h4><b><font color=\"#ffb527\">Question</font></b></h4><p>Douleurs péri oculaires et/ou orbitaires augmentées aux mouvements oculaires ?&nbsp;</p>",
      "keywords": "Bilatérale"
    },
    {
      "wid": "8Mn8vHn72oRTczBcf",
      "title": "Cause oculaire bilatérale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568128637923"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Trouble visuel transitoire bi-oculaire de cause oculaire</font></b></h3><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Anomalie\nde surface oculaire : sécheresse</li><li>Kératocône\n(hydrops)</li><li>Dystrophie cornéenne</li><li>Trouble\nréfractif intermittent (hypermétropie latente) </li><li>&nbsp;Hypertonie intermittente (angle irido\ncornéen, glaucome pigmentaire, Possner\nSchlossmann\n..)</li><li>Hémorragie\ndu vitré</li><li>Anomalies\npapillaires : drusen, papilles dysmorphiques</li><li>Œdème papillaire :&nbsp;<b style=\"color: rgb(255, 0, 0);\">URGENT</b></li><li><b style=\"\"><font color=\"#424242\">...</font></b></li></ul>",
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "othercats": ["xbmghwHhTgMN3f3y2"],
      "keywords": "Cause oculaire bilatérale"
    },
    {
      "wid": "8ihjsYdJmSscgM9mL",
      "title": "IRM cérébrale et orbitaire normale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567785800259"}
      },
      "introduction":
          "<h3><b><br>Neuropathie optique œdémateuse</b></h3><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Unilatéral</li><ul><ul><li>NOIA</li><li>Papillite</li><li>Reconsidérer Neuropathie Optique Héréditaire de Leber (pas de diffusion angiographique)<br></li></ul></ul><li>Bilatéral</li><ul><ul><li>NOIA</li><li>Toxique</li><li>Carentielle (B1, Gayet Wernicke)</li><li>Papillite</li><li>Reconsidérer Neuropathie optique héréditaire de Leber (pas de diffusion angiographique)</li></ul></ul></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": [
        "YGTJg9tTjbRy36p9j",
        "oaWPdaq2ZiEX3zLxZ",
        "6Mt3nhDuL2M3C63N3",
        "Q3oPXp4r4vCWHicRF",
        "cTgoQSkEtZdrsGmGK"
      ],
      "children": [],
      "keywords": "IRM cérébrale et orbitaire normale"
    },
    {
      "wid": "9GohBsAawkzuKnFJC",
      "title":
          "Test pilocarpine 1% positif : constriction complète de la pupille",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568131257694"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Mydriase pathologique isolée, test à la pilocarpine diluée négatif MAIS constriction complète à la pilocarpine&nbsp;1%</font></b></h3><h4><b style=\"\"><font color=\"#f44263\">Diagnostic possible</font></b></h4><ul><li>Pupille d'Adie découverte avant l'hypersensibilité de dénervation : surveiller l'évolution</li><li>Reconsidérer un atteinte du III : surveiller l’évolution/imager au moindre doute</li></ul>",
      "pathologiesArray": ["Mh5xqmtph4N7ZH6iG", "cSv7x5EQY2fNLiKSF"],
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords":
          "Test pilocarpine 1% positif : constriction complète de la pupille"
    },
    {
      "wid": "9XW2xd4X2kqvBmkHf",
      "title": "Céphalée non orthostatique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567702386541"}
      },
      "children": ["j2bNRxaBq7672BmEe", "q76B3foF5X88ondHx"],
      "introduction":
          "<p><br></p><p>PL avec mesure de pression d'ouverture du LCS et analyse du LCS</p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Céphalée non orthostatique"
    },
    {
      "wid": "9aQ4jYuKpe9SPRPbS",
      "title":
          "Anomalie oculo-motrice et/ou ptosis du côté de la mydriase et/ou diplopie",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1578580806167"}
      },
      "introduction":
          "<div><br></div><h3>Paralysie du III : <font color=\"#ff0000\">URGENCE</font></h3><ul><li>Eliminer un anévrysme/une apoplexie hypophysaire par une <b><font color=\"#ff0000\">imagerie en urgence </font></b>:</li><ul><li>IRM cérébrale et orbitaire avec angioIRM</li><li>ou Angioscanner cérébral et si normal IRM cérébrale et orbitaire</li></ul><li>Eliminer une maladie de Horton si &gt; 50 ans (NFS, VS, CRP en urgence)&nbsp;<br></li></ul>",
      "pathologiesArray": ["Mh5xqmtph4N7ZH6iG"],
      "keywords":
          "Anomalie oculo-motrice et/ou ptosis du côté de la mydriase et/ou diplopie"
    },
    {
      "wid": "9pE2pkJHhQqEjSTG6",
      "title": "Anisocorie",
      "introduction":
          "<h4><font color=\"#ffb527\">Interrogatoire</font></h4>\n\n\n\n\n\n\n\n<ul><li>Date de début</li><li>Symptômes associés (flou visuel,\ndiplopie, douleurs ? …)</li><li>Traitements en cours (collyres,\naérosols)</li><li>Vérifier photos anciennes</li></ul>",
      "examsArray": ["6X383kLqc3f3nBMZd"],
      "isRoot": true,
      "createdAt": {
        "date": {"numberLong": "1568130257328"}
      },
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "questionsHelper":
          "<h5><font color=\"#424242\">Penser à examiner l'iris (LAF) pour éliminer les causes oculaires</font></h5><h5><font color=\"#f59231\">Examiner les pupilles simultanément sous différents éclairages&nbsp;</font></h5><ul><li>Différence plus marquée à la lumière ET réflexe photomoteur diminué ou aboli =&nbsp;<b>mydriase pathologique</b></li><li>Différence non variable selon l'éclairage&nbsp;ET&nbsp;réflexe photomoteur normal <b>= anisocorie physiologique</b></li><li>Différence plus marquée dans l'obscurité =&nbsp;<b>myosis pathologique</b></li></ul>",
      "references": "<br>",
      "children": [
        "4u5hpvQGxkFsvPBPr",
        "QGW4AYgMNj9WtKATj",
        "MpKezoD5QB55nsgCn"
      ],
      "keywords": "Anisocorie"
    },
    {
      "wid": "ADxw5ttYskJENNiyN",
      "title": "Ductions normales",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566567032649"}
      },
      "introduction":
          "<h5></h5><h5></h5><h3><b><font color=\"#ffb527\">Diplopie binoculaire AVEC composante verticale ET ductions normales</font></b></h3><h4><b><font color=\"#ffb527\">Interrogatoire</font></b></h4><ul><li>Terrain : antécédents, facteurs de risque cardiovasculaire, traitements en cours...</li><li>Contexte\ntraumatique</li><li>Mode\nd’installation</li><li>Variabilité</li><li>Symptômes\nassociés (céphalées, douleurs, faiblesse, vertiges ?)</li></ul><h4><b><font color=\"#ffb527\">Examen</font></b></h4><ul><li>Examen d'une déviation verticale</li><li>Paupières,\norbite</li><li>Pupilles</li><li>Signes neurologiques\n? (tester le V cornéen)</li></ul>",
      "pathologiesArray": [
        "JHfR7rQYHBo2dCxak",
        "qAG6f5XzhvckiJRgj",
        "Ha7mRTxzKnXBNHynM"
      ],
      "examsArray": [
        "CS7CQPphHvcAcuPwQ",
        "oDyWjLiHmh2k8D3yz",
        "6X383kLqc3f3nBMZd",
        "Ss3c2ez7cL9fYe8yQ",
        "6eTqkyYyb7kPhPXiS"
      ],
      "examsTitle": "Voir fiches",
      "pathologiesTitle": "Diagnostics possibles",
      "children": [],
      "keywords": "Ductions normales"
    },
    {
      "wid": "CA28Q3hPwZDfN9SvJ",
      "title": "Diplopie horizontale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566565299776"}
      },
      "children": ["YNLf6zQhyLXPoWQzW", "QSd8WxqNuNeBcpiuW"],
      "introduction":
          "<p><b style=\"font-size: 1.1em;\"><font color=\"#ffb527\"><br></font></b></p><p><b style=\"font-size: 1.1em;\"><font color=\"#424242\">Examen des ductions</font></b><br></p>",
      "examsArray": ["Dzki95dm6MiYBJcmK", "9wSioGzCfreJEPQfY"],
      "examsTitle": "Voir fiches",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Diplopie horizontale"
    },
    {
      "wid": "CYvxDrLYKggJbTkHK",
      "title": "Anomalie pupillaire isolée",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567097832646"}
      },
      "children": ["SQDftEn2mvh7J5yEf", "TCaWSs9kBsiCjS34q"],
      "introduction":
          "<p><br></p><p>Faire test au collyre</p><ul><li>Si enfant ou anisocorie &lt; 48 h : test à la cocaïne 4-10%</li><li>Adulte et anisocorie &gt; 48 heures : apraclonidine 0,5 ou 1%, ou test à la cocaïne 4-10%</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Anomalie pupillaire isolée"
    },
    {
      "wid": "CduEabE9yyjAM9PNB",
      "title": "Anomalie du champ visuel",
      "isRoot": true,
      "createdAt": {
        "date": {"numberLong": "1561366049661"}
      },
      "introduction":
          "<div>A interpréter en fonction du contexte clinique<br></div><div>Vérifier la fiabilité</div><div>Placer le champ visuel de l'oeil droit à droite et le champ visuel de l'oeil gauche à gauche</div>",
      "children": ["FGkBi2Y4fy4rPxA8d", "W9kXRiqvFzzhBuJvx"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Anomalie du champ visuel cv"
    },
    {
      "wid": "DQnopaQ2jaJhriYrG",
      "title": "Vrai œdème papillaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567783609646"}
      },
      "children": ["wmkfwdmKqD8cE5f2D", "g6yAfdjFMWufxw7Qz"],
      "conclusion":
          "<p><span style=\"color: rgb(51, 51, 51); font-size: 16px;\"><br></span></p><p><br></p>",
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Devant un vrai œdème papillaire</font></b></h3><ul><li>Si OP bilatéral : mesure de la pression artérielle</li><li>Evaluation de fonction visuelle :</li></ul>",
      "examsTitle": "Voir fiches",
      "pathologiesTitle": "Fiches à consulter",
      "examsArray": [
        "5Cj2jHHmWaCapgwLz",
        "RxkRE6a7kshgJD5xh",
        "9wSioGzCfreJEPQfY",
        "LTJTvxGXapv3ZLDnj",
        "ReiNopLbtx8X66Bet"
      ],
      "pathologiesArray": [
        "3oKveGWYJgEsFq6Do",
        "ugXG3pnDoBptWzrYW",
        "6D4f7SCcfCe8ZBWvi",
        "anhriFETp454hTnLQ"
      ],
      "questionsHelper":
          "<h3><b><br><font color=\"#f44263\">Diagnostics possibles</font></b></h3><ul><li>HIC</li><li>HTA maligne</li><li>Cause oculaire</li><ul><li>Occlusion de la veine centrale de la rétine (OVCR)</li><li>Hypotonie oculaire</li><li>Uvéite</li><li>Sclérite postérieure</li><li>Néovascularisation sous-papillaire</li></ul></ul>",
      "keywords": "Vrai œdème papillaire"
    },
    {
      "wid": "DzkFNHX6Mu9ZcmPSg",
      "title": "Anomalie pupillaire isolée",
      "isRoot": false,
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579000740738"}
      },
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Anomalie pupillaire isolée</font></b><br></p><p>Vérifier le RPM du côté de la petite pupille</p>",
      "children": ["rWaGNuojtsZezqyXt", "FhzGjnWk6Afa4mNkC"],
      "keywords": "Anomalie pupillaire isolée"
    },
    {
      "wid": "EgeP4xnANLqn9JLWT",
      "title": "Neuropathie optique",
      "isRoot": true,
      "createdAt": {
        "date": {"numberLong": "1561366060600"}
      },
      "children": ["RGvW4C566xxHXydzi", "8LhPsLihMW2tSiyew"],
      "introduction":
          "<h4><b><font color=\"#ffb527\">Interrogatoire</font></b></h4><ul><li>ATCD personnels et familiaux, traitement, terrain, mode d’installation, douleurs, etc…</li></ul><h4><b><font color=\"#ffb527\">Examen ophtalmologique </font></b></h4><ul><ul><ul><li><a href=\"https://app-sfo2020.weconext.eu/exam/5Cj2jHHmWaCapgwLz\">Acuité visuelle</a></li><li><a href=\"https://app-sfo2020.weconext.eu/exam/LTJTvxGXapv3ZLDnj\">Vision des couleurs</a></li><li><a href=\"https://app-sfo2020.weconext.eu/exam/ReiNopLbtx8X66Bet\">Champ visuel</a></li><li><a href=\"https://app-sfo2020.weconext.eu/exam/RxkRE6a7kshgJD5xh\">Rechercher un DPAR</a></li><li>Examen\noculaire : éliminer un trouble des milieux</li><li>Mesure de la PIO</li><li><a href=\"https://app-sfo2020.weconext.eu/exam/JRsqs7mQ9d3fRtw8Z\">FO</a>\n: </li><ul><li>Rechercher un œdème papillaire, une pâleur, ou une excavation papillaire</li><li>Vérifier la normalité de la macula, de la rétine périphérique et des vaisseaux</li><li><br></li></ul><li><a href=\"https://app-sfo2020.weconext.eu/exam/6Qg3vj6dhuaFmWXEX\">OCT</a>&nbsp; </li><ul><li>Nerf optique : RNFL péripapillaire,\nGCC (complexe cellulaire ganglionnaire maculaire)</li><li>Maculaire et rétinien : vérifier la normalité de la rétine externe et interne</li></ul></ul></ul></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Neuropathie optique",
      "questionsHelper":
          "<h4><b><font color=\"#ffb527\">Question</font></b></h4><p>Neuropathie optique uni ou bilatérale ?</p>"
    },
    {
      "wid": "Eo3CLF4zKDqbqhgoM",
      "title": "Respect du méridien vertical",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579003784947"}
      },
      "children": ["LJgQWLkkCNEjhAqHH", "H8FXEaaNkw3mpNYxC"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Déficit bilatéral du champ visuel ET respect du méridien vertical&nbsp;</font></b></h3>",
      "keywords": "Respect du méridien vertical"
    },
    {
      "wid": "FFkMjf8qYtWrrQ5zf",
      "title": "Baisse visuelle brutale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568125665122"}
      },
      "children": ["YjHhfA3M3s5ynaArE", "vgfSqJQmtZdEnyoHk"],
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Neuropathie optique bilatérale indolore ET brutale</font></b><br></p><p></p><h4><b><font color=\"#f1522c\">A vérifier</font></b></h4><ul><li>Examen du fond d'œil à la phase aiguë :</li><ul><li>Œdème papillaire</li><li>Papille normale ou pâle/excavée</li></ul><li>IRM orbitaire et encéphalique</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Baisse visuelle brutale",
      "questionsHelper":
          "<p><span style=\"font-size: 1.1em;\"><b style=\"\"><font color=\"#ffb527\">Question</font></b></span></p><p>Y a-t-il un œdème papillaire ?&nbsp;</p>"
    },
    {
      "wid": "FGkBi2Y4fy4rPxA8d",
      "title": "Déficit strictement unilatéral",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579001972937"}
      },
      "children": ["22xYX76kx9r4YpqTJ", "2m6skofo7FDv6SCEv"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Déficit strictement unilatéral du champ visuel</font></b></h3>",
      "pathologiesArray": ["Nsan86qFjN7Sv2He9", "eKEPmughCxhicqhGe"],
      "questionsHelper":
          "<h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Trouble des milieux</li><li>Rétinopathie</li><li>Neuropathie optique</li></ul><p>Vérifier s'il existe un respect du méridien horizontal</p>",
      "keywords": "Déficit strictement unilatéral"
    },
    {
      "wid": "FhzGjnWk6Afa4mNkC",
      "title": "RPM anormal du côté de la petite pupille",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1584704753353"}
      },
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Myosis pathologique isolé ET RPM anormal du côté de la petite pupille</font></b><br></p><h4><b style=\"\"><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Cause irienne (examen en LAF)</li><li>Pupille d'Adie vieillie : après de nombreuses années, la pupille d'Adie peut évoluer vers un myosis</li><li>Cause pharmacologique (rare)</li></ul>",
      "pathologiesArray": [
        "LRxzyzL6TdbtGSDXo",
        "cSv7x5EQY2fNLiKSF",
        "hptgaErzLjcdfgaBL"
      ],
      "children": [],
      "keywords": "RPM anormal du côté de la petite pupille"
    },
    {
      "wid": "GMh5MKqnKa2cv5cCR",
      "title": "Diplopie",
      "isRoot": true,
      "createdAt": {
        "date": {"numberLong": "1561366076543"}
      },
      "children": ["SLE2rcQ68ChKPvaGA", "dfRM6Ngi2uthhjBKk"],
      "introduction":
          "<h3><font color=\"#f1522c\">Vérifier</font></h3><ul><li>Terrain : antécédents, facteurs de risque cardiovasculaire, traitements en cours...</li><li>Contexte\ntraumatique ?</li><li>Mode\nd’installation</li><li>Variabilité\n?\n</li><li>Caractères\nde la diplopie (horizontale ou à composante verticale)</li><li>Symptômes\nassociés (céphalées,\ndouleurs, faiblesse musculaire…)</li></ul><h4 style=\"text-align: center; \"><b>Diplopie Mono ou\nbinoculaire ?</b></h4><p>Faire occlusion monoculaire, un œil puis l’autre :</p><ul><li>Si la diplopie persiste : MONOCULAIRE</li><li>Si la diplopie disparaît (quel que soit l'œil occlus) : BINOCULAIRE</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Diplopie"
    },
    {
      "wid": "GgDNyabt7RLrsyjvL",
      "title": "Récente et/ou ptosis et/ou doute sur CBH",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567083899755"}
      },
      "children": [],
      "introduction":
          "<p><br></p><ul><li>Anisocorie&nbsp;récente non&nbsp;variable selon l’éclairage et RPM&nbsp;normal</li><li>OU anisocorie non variable selon l’éclairage et ptosis du côté de la petite pupille</li><li>OU au moindre doute sur un possible CBH</li></ul><p>Faire le test à l'apraclonidine (contre-indiqué chez l'enfant) ou cocaïne</p>",
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "examsArray": ["iamFAnWyXXW3sPGCc"],
      "pathologiesArray": ["2BajxwEQezz3sY8Xw", "PHemeJdnrzCzm5YkJ"],
      "questionsHelper":
          "<p>A. Test à l'apraclonidine négatif : pas d'inversion de l'anisocorie<br>Test à la cocaïne négatif : dilatation des deux pupilles</p><p><b>-&gt;&nbsp; &nbsp;ANISOCORIE PHYSIOLOGIQUE</b><br><br></p><p>B. Test à l'apraclonidine positif : inversion de l'anisocorie.<br>Test à la cocaïne positif&nbsp;: pas de dilatation de la petite pupille</p><p><b>-&gt;&nbsp; &nbsp;HORNER (CBH)</b></p>",
      "keywords": "Récente et/ou ptosis et/ou doute sur CBH"
    },
    {
      "wid": "H3JcxzKt5Cb9SyfCZ",
      "title": "Prise de contraste du nerf optique à l'IRM",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568122042926"}
      },
      "introduction":
          "<div><br></div><div><h3><b><font color=\"#ffb527\">Neuropathie optique unilatérale douloureuse ET prise de contraste du NO</font></b></h3></div><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Neuropathie\noptique inflammatoire (névrite optique)</li><ul><ul><li>Démyélinisantes\n: SEP, MOG, AQP4, idiopathiques...</li><li>Infectieuses\n: syphilis, bartonellose,\nborreliose...</li><li>Inflammatoires\n: Sarcoïdose, Lupus...</li><li>...</li></ul></ul></ul>",
      "pathologiesArray": ["LNjr2WnBSuyipxCvw", "9m5AAxP5pKnbPz8q3"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Prise de contraste du nerf optique à l'IRM"
    },
    {
      "wid": "H8FXEaaNkw3mpNYxC",
      "title":
          "Déficit situé de part et d’autre du méridien vertical sur les 2 yeux",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Diagnostics possibles",
      "createdAt": {
        "date": {"numberLong": "1579003882959"}
      },
      "pathologiesArray": [
        "pNgTZunCnRJSSaMWs",
        "2NWphg6JpLJEHrCuP",
        "gf2Fzer2nSixBui7f"
      ],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Déficit bilatéral du champ visuel AVEC respect du méridien vertical, situé de part et d'autre du méridien vertical</font></b></h3>",
      "keywords":
          "Déficit situé de part et d’autre du méridien vertical sur les 2 yeux"
    },
    {
      "wid": "HSosdwgdkp7PzEzpf",
      "title": "Céphalée non isolée",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567526461394"}
      },
      "children": [
        "5FYuKBcGCevqPXyg6",
        "5kyBXvnmhSYdFgrrZ",
        "3ubtrX4Qyz2FYbbAn",
        "Ztmrp3v6WaEjzjHyk"
      ],
      "introduction":
          "<p><br></p><p>≥ 50 ans : NFS, VS, CRP Urgent pour éliminer une maladie de Horton</p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Céphalée non isolée"
    },
    {
      "wid": "HYAYMnrF5BcXknbtb",
      "title": "Horner évident",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567097816891"}
      },
      "introduction":
          "<h5><br></h5><ul><li>RPM normal</li><li>Ptosis</li><li>Pseudo-énophtalmie</li><li>Anhydrose de la face</li></ul>",
      "pathologiesArray": ["PHemeJdnrzCzm5YkJ", "Dbjzse7nft7HZFLoh"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Horner évident"
    },
    {
      "wid": "HfW53ELEA5iP2a4kd",
      "title": "Baisse visuelle inexpliquée",
      "isRoot": true,
      "createdAt": {
        "date": {"numberLong": "1561366043103"}
      },
      "examsArray": [
        "RxkRE6a7kshgJD5xh",
        "ReiNopLbtx8X66Bet",
        "LTJTvxGXapv3ZLDnj",
        "6Qg3vj6dhuaFmWXEX",
        "P4A3a8ph3LuBM9SHT"
      ],
      "children": ["N4afc2rjviTBeaGDQ", "M7GaR2ur4qTi4os3Q"],
      "introduction":
          "<b>Baisse visuelle ET/OU trouble du champ visuel ET/OU anomalie de la vision des couleurs</b>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Baisse visuelle inexpliquée"
    },
    {
      "wid": "HsGe3qX4FaZsu2Lk2",
      "title": "Syndrome de CBH évident",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579000728781"}
      },
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Syndrome de CBH évident</font></b><br></p><ul><li>Myosis pathologique et RPM normal</li><li>Ptosis du côté de myosis</li><li>Pseudo-énophtalmie du côté du myosis</li><li>Anhydrose de l'hémiface du côté du myosis</li></ul><p>Si douleurs et/ou troubles visuels transitoires et/ou signes neurologiques :</p><p><font color=\"#ff0000\"><b>Dissection carotidienne jusqu'à preuve du contraire, coucher le patient et l'envoyer aux urgences neurovasculaires</b></font></p>",
      "pathologiesArray": ["PHemeJdnrzCzm5YkJ"],
      "keywords": "Syndrome de CBH évident"
    },
    {
      "wid": "HuyKtGcHsrsekcarh",
      "title":
          "Oui ET la vision était normale pour chaque oeil MAIS trouble les 2 yeux ouverts",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568126764402"}
      },
      "examsArray": [
        "Dzki95dm6MiYBJcmK",
        "9wSioGzCfreJEPQfY",
        "oDyWjLiHmh2k8D3yz",
        "6X383kLqc3f3nBMZd",
        "Ss3c2ez7cL9fYe8yQ"
      ],
      "introduction":
          "<h3><font color=\"#ffb527\"><br>Diplopie binoculaire transitoire</font></h3><h4><font color=\"#ffb527\">Évaluation</font></h4><p>Prendre le\ntemps de faire un examen oculaire et oculomoteur détaillé avec\nexamen des pupilles</p><ul><li>Âge ≥ 50\nans, premier épisode : Horton ?\nCRP, NFS, VS et clinique <b><font color=\"#ff0000\">URGENT</font></b></li><li>Si symptômes/signes neurologiques associés à l'interrogatoire ou à l’examen neurologique (vertiges, ataxie, paralysie faciale, atteinte des voies\nlongues (déficit moteur ou sensitif hémicorporel) =&gt; Bilan neurovasculaire <font color=\"#ff0000\"><b>URGENT</b></font></li><li>1er épisode isolé ET bilan initial normal ET pas d'hypothèse oculaire : bilan&nbsp;neurovasculaire (délais à adapter à l'ancienneté des troubles et au contexte)</li><li>Autres hypothèses </li><ul><li>Décompensation\nde phorie :\nATCD de strabisme ou de rééducation orthoptique, épisodes isolés et répétés à\nl’effort visuel, phorie ou insuffisance de convergence à\nl’examen (bilan orthoptique) </li><li>Myasthénie :\nvariabilité à l’effort, ptosis, pupille normale, atteinte droit médial surtout =&gt; Rechercher signes de généralisation</li></ul></ul>",
      "examsTitle": "Voir fiches",
      "pathologiesTitle": "Fiches à consulter",
      "keywords":
          "Oui ET la vision était normale pour chaque oeil MAIS trouble les 2 yeux ouverts"
    },
    {
      "wid": "HvywvzAjvMgFn3XcA",
      "title": "Œdème papillaire bilatéral ET rétine(s) anormale(s)",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567697733373"}
      },
      "pathologiesArray": [
        "ugXG3pnDoBptWzrYW",
        "cTgoQSkEtZdrsGmGK",
        "qoNNyoar4x2Mw6sEi",
        "6D4f7SCcfCe8ZBWvi"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Diagnostics possibles",
      "children": [],
      "othercats": ["xbmghwHhTgMN3f3y2"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Baisse visuelle bilatérale ET œdème papillaire bilatéral AVEC rétine(s) anormale(s)</font></b></h3>",
      "keywords": "Œdème papillaire bilatéral ET rétine(s) anormale(s)"
    },
    {
      "wid": "J45927Bz6qX8fCL8S",
      "title": "PL normale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567530064874"}
      },
      "conclusion":
          "<h5><font color=\"#ff0000\"><b style=\"\">Avis neurologique</b></font></h5><h5><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p>\n\n\n\n\n\n</h5>",
      "introduction":
          "<p><br></p><p>Si non fait précédemment</p><p>\n\n\n\n\n\n\n\n\n\n</p><ul><li>IRM cérébrale et angio IRM artérielle et veineuse</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "questionsHelper":
          "<h3><b><font color=\"#ffb527\">Diagnostics possibles</font></b></h3><ul><li>Syndrome de vasoconstriction cérébrale réversible</li><li>Syndrome d'encéphalopathie postérieure réversible (PRES)</li><li>Apoplexie pituitaire...</li></ul>",
      "keywords": "PL normale"
    },
    {
      "wid": "JJvnvoAzaw52EPtsJ",
      "title": "Hémorragie méningée",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567529841674"}
      },
      "introduction":
          "<h4><font color=\"#000000\"><br></font></h4><h3><font color=\"#f44263\"><b>Hémorragie méningée ?</b></font></h3><p><font color=\"#ff0000\"><b>Avis\nneurochirurgical /Neuroradiologie Interventionnelle</b></font></p>\n\n<p><font color=\"#ff0000\"><b>Artériographie : anévrisme ? MAV ?</b></font></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Hémorragie méningée"
    },
    {
      "wid": "KDvyDXpFGcXvvcfPM",
      "title": "Douleurs",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568119029356"}
      },
      "children": ["H3JcxzKt5Cb9SyfCZ", "28PNqf9kShjrqm8Rk"],
      "introduction":
          "<p><br></p><h3><b><font color=\"#ffb527\">Neuropathie optique unilatérale douloureuse</font></b></h3><p>Probable\nneuropathie optique inflammatoire (névrite optique)</p><h4><font color=\"#ffb527\">Obtenir</font></h4><ul><li>IRM orbitaire et encéphalique à la phase aiguë (permettant de visualiser les voies visuelles)</li></ul><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Douleurs"
    },
    {
      "wid": "KbCT5NGofwAvP7Q77",
      "title": "Imagerie anormale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567529542661"}
      },
      "children": ["JJvnvoAzaw52EPtsJ", "cgKcWomfrCW787un7"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Imagerie anormale"
    },
    {
      "wid": "KzYC2yDYE65zrrR6y",
      "title": "Diplopie avec composante verticale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566565319974"}
      },
      "children": ["ADxw5ttYskJENNiyN", "cz5ssTP4TQime3yop"],
      "introduction":
          "<p><b style=\"font-size: 1em;\"><font color=\"#424242\"><br>Examen des ductions : normales ou anormales ?</font></b><br></p>",
      "examsArray": ["CS7CQPphHvcAcuPwQ"],
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Diplopie avec composante verticale"
    },
    {
      "wid": "LJgQWLkkCNEjhAqHH",
      "title": "Déficit situé du même côté du méridien vertical sur les 2 yeux",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579003871519"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Déficit\nlatéral homonyme localisant aux voies\nvisuelles rétrochiasmatiques controlatérales</font></b></h3><h4><b><font color=\"#ffb527\">Question</font></b></h4><p>Le\ndéficit est-il complet ? : héminanopsie latérale homonyme (HLH) complète sur le CV de l’œil droit et de\nl’œil gauche ? </p>",
      "children": ["xqvhEKPExEASQb998"],
      "pathologiesArray": ["r457mNNewGXYxxnSC"],
      "keywords":
          "Déficit situé du même côté du méridien vertical sur les 2 yeux"
    },
    {
      "wid": "LbmvZka6QFytcqzRW",
      "title": "Baisse visuelle progressive (>15j) ou inconnue",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568123551590"}
      },
      "introduction":
          "<h3><span style=\"font-size: 1em;\"><b style=\"\"><font color=\"#ffb527\"><br>Neuropathie optique unilatérale indolore ET lentement progressive</font></b></span></h3><h4><span style=\"font-size: 1em;\"><b style=\"\"><font color=\"#f44263\">Diagnostics possibles</font></b></span></h4><ul><li>Neuropathie\noptique compressive/infiltrative</li><li>Neuropathie\noptique héréditaire de Leber</li><li>Névrite\noptique atypique</li><li>Glaucome\n(secondaire ?)</li></ul><h4><font color=\"#ffb527\">A vérifier&nbsp;</font></h4><ul><li>IRM orbitaire et cérébrale (permettant de visualiser les voies visuelles)</li></ul>",
      "pathologiesArray": [
        "ce77CDQyKvgNs6Ydm",
        "MhR2dyLYG5fBwFmpp",
        "oaWPdaq2ZiEX3zLxZ",
        "LNjr2WnBSuyipxCvw"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords": "Baisse visuelle progressive (>15j) ou inconnue"
    },
    {
      "wid": "Lk8SuR4uHPKWxMt8o",
      "title": "Céphalée orthostatique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567702371924"}
      },
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#f44263\"><br>Diagnostic possible</font></b><br></p><ul><li>Suspicion d'hypotension du LCS</li></ul><h4><font color=\"#f1522c\">A vérifier</font></h4><ul><li>IRM cérébrale et angioIRM artérielle et veineuse (si non faites)</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "conclusion":
          "<p><font color=\"#ff0000\"><b>Avis neurologique</b></font></p><p><font color=\"#ff0000\"><b><br></b></font></p>",
      "keywords": "Céphalée orthostatique"
    },
    {
      "wid": "M7GaR2ur4qTi4os3Q",
      "title": "Atteinte bilatérale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1561366669519"}
      },
      "examsArray": [
        "JRsqs7mQ9d3fRtw8Z",
        "ReiNopLbtx8X66Bet",
        "6Qg3vj6dhuaFmWXEX"
      ],
      "children": [
        "ziq493PQofqeKtC43",
        "HvywvzAjvMgFn3XcA",
        "4CP5T7mJiYDTENDgB"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": ["Nsan86qFjN7Sv2He9"],
      "questionsHelper":
          "<p>L'OCT papillaire et maculaire permet de vérifier la rétine dans la zone correspondant au déficit du CV.<br></p>",
      "keywords": "Atteinte bilatérale"
    },
    {
      "wid": "MKrKDjXiwCXQX4sRp",
      "title": "Céphalée isolée",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567526436953"}
      },
      "introduction": "<h5><br></h5>",
      "children": [
        "6WbGEcxaRzibrCAve",
        "z89pthNXtTMXk2CPu",
        "p9eWw9NKibMq5WxGB"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Céphalée isolée"
    },
    {
      "wid": "MNbMFJoJ7s8zuo3wW",
      "title": "Test pilocarpine 0,1% Négatif : pas d'action sur la mydriase",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568131162396"}
      },
      "children": ["gyY4uWQ75tj52eEPs", "9GohBsAawkzuKnFJC"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Mydriase pathologique isolée, test à la pilocarpine diluée négatif</font></b></h3><p></p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><p>Faire un test\nà la pilocarpine 1%</p>",
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "examsArray": ["iamFAnWyXXW3sPGCc"],
      "pathologiesArray": [
        "Mh5xqmtph4N7ZH6iG",
        "cSv7x5EQY2fNLiKSF",
        "hptgaErzLjcdfgaBL"
      ],
      "questionsHelper":
          "<h4><font color=\"#f44263\">Diagnostics possibles</font></h4><ul><li>Mydriase pharmacologique (interrogatoire+++)</li><li>Pupille d'Adie récente</li><li>Paralysie du III atypique ou débutante (rare)</li></ul>",
      "keywords": "Test pilocarpine 0,1% Négatif : pas d'action sur la mydriase"
    },
    {
      "wid": "MbHeXqdetp2divZvQ",
      "title":
          "Pas de ptosis ET pas d’anomalie oculomotrice ET pas de diplopie au verre rouge",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568130654231"}
      },
      "children": ["tMQfPAiJK52qToeJQ", "NthNgG77Jt2fE7esB"],
      "introduction":
          "<p></p><h4><span style=\"font-size: 1em;\"><font color=\"#ffb527\">Rechercher</font></span></h4><p></p><ul><li>Contraction\ntonique\nde la pupille à l'accommodation/convergence prolongée</li><li>Mouvements\nvermiformes du bord pupillaire en LAF (paralysie partielle du sphincter)</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords":
          "Pas de ptosis ET pas d’anomalie oculomotrice ET pas de diplopie au verre rouge"
    },
    {
      "wid": "MpKezoD5QB55nsgCn",
      "title": "Myosis pathologique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567076100596"}
      },
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Anisocorie majorée dans l’obscurité ET petite pupille est la moins variable</font></b></h3><h4><font color=\"#ffb527\"><b>Vérifier</b></font></h4><p>Du côté de la petite pupille</p><ul><li>Réflexe photo-moteur normal ?</li><li>Présence d'un ptosis ?</li><li>Pseudo-énophtalmie ?</li><li>Anhydrose de la face ?</li></ul>",
      "children": ["HsGe3qX4FaZsu2Lk2", "DzkFNHX6Mu9ZcmPSg"],
      "keywords": "Myosis pathologique"
    },
    {
      "wid": "N4afc2rjviTBeaGDQ",
      "title": "Atteinte unilatérale stricte",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1561366682165"}
      },
      "children": ["gYvjfKGkqDumq542N", "dpPqYGDcg5oe4mY6p"],
      "examsArray": ["RxkRE6a7kshgJD5xh", "6Qg3vj6dhuaFmWXEX"],
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Baisse visuelle strictement unilatérale</font></b><br></p><ul><li>En cas de neuropathie optique unilatérale : un DPAR doit être présent (sauf parfois dans les neuropathies optiques héréditaires de Leber). </li><li>L'OCT maculaire permet de vérifier la normalité de la rétine dans la zone correspondant au déficit du champ visuel</li></ul>",
      "keywords": "Atteinte unilatérale stricte"
    },
    {
      "wid": "NSzjBamNJyNp3MP8s",
      "title": "Cause oculaire ou orbitaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568127395444"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Trouble visuel transitoire monoculaire de cause oculaire/orbitaire</font></b></h3>\n\n<p></p><p></p><ul></ul>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<ul></ul>\n\n<p></p><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Anomalie\nde surface oculaire : sécheresse</li><li>Kératocône\n(hydrops)</li><li>Dystrophie cornéenne</li><li>Trouble\nréfractif intermittent (hypermétropie latente) </li><li>Hypertonie intermittente (angle irido\ncornéen, glaucome pigmentaire, Possner\nSchlossmann...)</li><li>Hémorragie\ndu vitré</li><li>Anomalies\npapillaires : drusen, papilles dysmorphiques</li><li>Papille\npâle (Uhthoff)\n</li><li>Rétine\n: pré thrombose veineuse, syndrome d’ischémie oculaire</li><li>Œdème papillaire : <font color=\"#ff0000\"><b>URGENT</b></font></li><li><b style=\"\"><font color=\"#424242\">...</font></b></li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "othercats": ["xbmghwHhTgMN3f3y2"],
      "children": [],
      "keywords": "Cause oculaire ou orbitaire"
    },
    {
      "wid": "Ne2tfy3PJGiQYEYu2",
      "title": "Ancienne et pas de ptosis",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567083894021"}
      },
      "introduction":
          "<p><span style=\"color: rgb(255, 181, 39); font-size: 1.3em;\"><br><b>Anisocorie ancienne ET non variable selon l’éclairage ET RPM normal</b></span><br></p>\n<ul><li>Aucun autre symptôme ou signe clinique</li><li>Pas de ptosis associé</li><li>Au moindre doute, éliminer un CBH (test cocaïne ou apraclonidine)</li></ul>",
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Diagnostics possibles",
      "pathologiesArray": ["2BajxwEQezz3sY8Xw"],
      "examsArray": ["iamFAnWyXXW3sPGCc"],
      "keywords": "Ancienne et pas de ptosis"
    },
    {
      "wid": "NogQf5uB2WExSRxjZ",
      "title":
          "Oui ET la vision était trouble sur 1 oeil ET le déficit ne respectait pas le méridien vertical",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568126810059"}
      },
      "children": ["NSzjBamNJyNp3MP8s", "htTT2eWfLosDTJNbC"],
      "examsArray": [
        "6X383kLqc3f3nBMZd",
        "CJqD6mRr6e2Jd63sw",
        "6Qg3vj6dhuaFmWXEX",
        "ReiNopLbtx8X66Bet",
        "QMwqWXWcP377rwrKA"
      ],
      "introduction":
          "<p><b style=\"font-size: 1.3em;\"><font color=\"#ffb527\"><br>Trouble\nVisuel Monoculaire Transitoire</font></b><br></p><h4><font color=\"#ffb527\">Évaluation</font></h4><ul><li>Examiner les pupilles\n(Horner, DPAR)</li><li>Prendre le temps de faire\nun examen oculaire bilatéral, comparatif et détaillé : surface, angle, FO dilaté (emboles,\nœdème, ischémie, nodules cotonneux, hémorragies)</li><li>Faire un champ visuel\nautomatique si l'examen oculaire est normal</li><li>OCT et\nangiographie fluorescéine parfois utiles</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords":
          "Oui ET la vision était trouble sur 1 oeil ET le déficit ne respectait pas le méridien vertical"
    },
    {
      "wid": "NthNgG77Jt2fE7esB",
      "title": "Mouvements vermiformes, meilleure contraction en convergence",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568131050879"}
      },
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": ["cSv7x5EQY2fNLiKSF"],
      "examsArray": ["iamFAnWyXXW3sPGCc"],
      "introduction":
          "<h4><b style=\"font-size: 1.1em;\"><font color=\"#f44263\"><br>Diagnostic possible</font></b><br></h4><ul><li>Pupille d'Adie</li></ul><p>Si besoin, réaliser un test à la pilocarpine diluée</p>",
      "questionsHelper": "<h4><br></h4>",
      "keywords": "Mouvements vermiformes, meilleure contraction en convergence"
    },
    {
      "wid": "QGW4AYgMNj9WtKATj",
      "title": "Anisocorie physiologique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567076081623"}
      },
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Différence de taille non variable selon l'éclairage ET RPM normal</font></b></h3>\n<h4><font color=\"#ffb527\"><b>Vérifier</b></font></h4>\n<ul><li>L’ancienneté sur des photos</li><li>L’absence de ptosis du côté de la petite pupille</li></ul>",
      "children": ["Ne2tfy3PJGiQYEYu2", "GgDNyabt7RLrsyjvL"],
      "keywords": "Anisocorie physiologique"
    },
    {
      "wid": "QP8K6fNyMcWRFtqPa",
      "title":
          "Pas de cause oculaire/orbitaire ou présence de signes d'ischémie oculaire",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579018103585"}
      },
      "introduction":
          "<h3><b><br>Trouble visuel transitoire sans cause oculaire</b></h3><p><b>ACCIDENT VASCULAIRE TRANSITOIRE POSSIBLE</b></p><p>Causes vasculaires de TMVT<br></p><ul><li>Accident ischémique transitoire rétinien</li><li>Ischémie choroïdienne</li><li>Syndrome d’ischémie oculaire</li></ul><p>Suivez les recommandations !</p><p><b>Envoyez le patient aux urgences (hôpital avec unité neurovasculaire)</b></p><p>\n\n\n\n\n\n<a href=\"https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-cardiovasculaires/accident-vasculaire-cerebral-avc/article/les-unites-neuro-vasculaires-unv\">https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-cardiovasculaires/accident-vasculaire-cerebral-avc/article/les-unites-neuro-vasculaires-unv</a>&nbsp; &nbsp;&nbsp;<b><br></b></p><h4><b>&nbsp;3 problèmes</b></h4><ul><li>Eliminer une maladie de Horton<br></li><li>Evaluer le risque d'accident vasculaire cérébral</li><li>Evaluer le risque cardiaque</li></ul><p></p><p><b>Stratification du risque et prévention secondaire</b></p><ul><li>Bilan urgent</li><ul><li>IRM cérébrale et ARM ou angio &nbsp;scanner ou doppler des TSA en urgence</li><li>L’IRM&nbsp; doit être pratiquée à la phase aiguë (si elle n’était pas disponible lors du passage aux urgences)&nbsp; dès que possible&nbsp; à la recherche de signes d’ischémie cérébrale qui transforme l’Accident Ischémique Transitoire en Accident Ischémique Constitué</li><li>ECG</li><li>CRP, NFS plaquettes, VS</li><li>Bilan des&nbsp; facteurs de risque vasculaire</li></ul><li>Traitement</li><ul><li>Traitement de la cause (urgent)</li><li>Antiagrégants plaquettaires</li><li>Statines</li><li>Correction des facteurs de risque vasculaire</li></ul></ul>",
      "keywords":
          "Pas de cause oculaire/orbitaire ou présence de signes d'ischémie oculaire"
    },
    {
      "wid": "QSd8WxqNuNeBcpiuW",
      "title": "Ductions anormales",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566565423229"}
      },
      "children": ["uFP2purnp8QKGrXc8", "jbah4ZrsRwkTbAwJ3"],
      "introduction":
          "<h5><b style=\"font-size: 1.1em;\"><font color=\"#ffb527\"><br>Interrogatoire</font></b><br></h5>\n\n\n\n\n\n\n\n\n\n\n\n\n\n<ul><li>Terrain : antécédents, facteurs de risque cardiovasculaire, traitements en cours...</li><li>Contexte traumatique ?</li><li>Mode d’installation</li><li>Variabilité &nbsp;</li><li>Symptômes associés (céphalées, douleurs, faiblesse)</li><li>Ptosis associé</li><li>Signes neurologiques (tester le V cornéen)</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Ductions anormales"
    },
    {
      "wid": "QtcRY2dm2yQFAgnQu",
      "title": "Anomalie unilatérale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567778932483"}
      },
      "introduction":
          "<h3><b><font color=\"#f44263\"><br>Diagnostics possibles</font></b></h3><ul><li>Problème ophtalmologique : Glaucome ? Inflammation ?...</li><li>Jeune :\nnévrite optique ? <b><font color=\"#ff0000\">IRM cérébrale et orbitaire rapide</font></b></li><li>Âgé : NOIA et Horton = <b><font color=\"#ff0000\">NFS, VS, CRP urgent</font></b></li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": ["gTWbggZYRkDKSeXDk", "LNjr2WnBSuyipxCvw"],
      "children": [],
      "keywords": "Anomalie unilatérale"
    },
    {
      "wid": "RGvW4C566xxHXydzi",
      "title": "Unilatérale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568118864113"}
      },
      "children": ["KDvyDXpFGcXvvcfPM", "rXCWh8EXFBYdQwzft"],
      "introduction":
          "<p><br></p><h3><b><font color=\"#ffb527\">Neuropathie optique unilatérale</font></b></h3><p></p><ul><li>Un DPAR doit être présent, sinon vérifier les\nmilieux optiques, la macula au FO et en OCT</li><li>Si\n&gt; 50 ans&nbsp; : CRP, VS, NFS en urgence\npour éliminer\nune maladie de Horton</li></ul>",
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "questionsHelper":
          "<h4><b><font color=\"#ffb527\">Question</font></b></h4><p>Y a-t-il une douleur péri oculaire et/ou orbitaire augmentée aux mouvements oculaires ?<br></p>",
      "examsArray": ["RxkRE6a7kshgJD5xh"],
      "keywords": "Unilatérale"
    },
    {
      "wid": "RrS2SESwKrXRtkdqr",
      "title": "PL avec hyperleucocytose",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567530081842"}
      },
      "introduction":
          "<p>&nbsp;</p><h3><b><font color=\"#f44263\">Diagnostic possible</font></b></h3><ul><li>Méningite</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "conclusion":
          "<p><span style=\"color: rgb(255, 0, 0);\"><b>Avis spécialisé</b></span><br></p>",
      "keywords": "PL avec hyperleucocytose"
    },
    {
      "wid": "SLE2rcQ68ChKPvaGA",
      "title": "Diplopie monoculaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1561384275978"}
      },
      "introduction":
          "<h6><br></h6><p><b>Persiste à l'occlusion d'au moins 1 des 2 yeux</b></p><p>La diplopie monoculaire s’améliore souvent avec un trou sténopéique. Elle peut toucher les 2 yeux (diplopie monoculaire bilatérale).&nbsp;</p><h3><b><font color=\"#f44263\">Diagnostics possibles</font></b></h3><p></p><p>En règle, la cause est oculaire.</p><ul><li>Anomalie de surface oculaire</li><li>Opacités des milieux</li><ul><ul><li>Cornée : dystrophie épithéliale ou endothéliale</li><li>Cristallin&nbsp;: cataracte</li></ul></ul><li>Problème optique</li><ul><ul><li>Réfraction</li><ul><li>Astigmatisme</li><li>Aberrations de hauts degrés</li></ul><li>Luxation&nbsp;cristallinienne</li></ul></ul><li>Rétine : anomalie maculaire</li><li>Anorganique</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Diplopie monoculaire"
    },
    {
      "wid": "SQDftEn2mvh7J5yEf",
      "title": "Test positif",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567097994173"}
      },
      "introduction":
          "<div><br></div><ul><li>Apraclonidine\n: inversion de l’anisocorie</li><li>Cocaïne : absence de dilatation\npupillaire&nbsp;</li></ul>",
      "pathologiesArray": ["PHemeJdnrzCzm5YkJ"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Test positif"
    },
    {
      "wid": "TCaWSs9kBsiCjS34q",
      "title": "Test négatif",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567098004353"}
      },
      "introduction":
          "<p><br></p><ul><li>Apraclonidine\n: absence d’inversion de l’anisocorie</li><li>Cocaïne : dilatation pupillaire</li></ul>",
      "pathologiesArray": ["2BajxwEQezz3sY8Xw"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Test négatif"
    },
    {
      "wid": "TN3dADRbFfCRw6K6x",
      "title": "Imagerie normale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567529533674"}
      },
      "children": [
        "cPDJ6y7ZP5kFzTXbL",
        "J45927Bz6qX8fCL8S",
        "RrS2SESwKrXRtkdqr"
      ],
      "introduction":
          "<p><br></p><p>Ponction lombaire : mesure de la pression d'ouverture du LCS et analyse du LCS</p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Imagerie normale"
    },
    {
      "wid": "Txswpt55WXYDyukHZ",
      "title": "Cause neurologique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568128658571"}
      },
      "introduction":
          "<h3><br><font color=\"#ffb527\">Trouble visuel transitoire binoculaire de cause neurologique</font></h3><p><b><font color=\"#ff0000\">Envoyez\nle patient aux urgences neurovasculaires </font></b>(sauf aura visuelle typique chez un\nmigraineux connu)</p><p>\n\n\n\n\n\n<a href=\"https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-cardiovasculaires/accident-vasculaire-cerebral-avc/article/les-unites-neuro-vasculaires-unv\">https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-cardiovasculaires/accident-vasculaire-cerebral-avc/article/les-unites-neuro-vasculaires-unv</a>&nbsp; &nbsp;&nbsp;<br></p><h4><font color=\"#f44263\">Diagnostics possibles </font></h4><ul><li><b>Aura visuelle migraineuse</b> (marche\nmigraineuse, signes visuels positifs, céphalée inconstante) à imager si premier\népisode&nbsp;&nbsp; </li><li><b>Accident vasculaire cérébral transitoire</b>\nou constitué</li><ul><ul><li>Début\nbrutal</li><li>Parfois\nsignes visuels positifs</li><li><font color=\"#ff0000\">Bilan\nneurovasculaire\nen urgence et NFS, VS, CRP (Horton)&nbsp;&nbsp; </font></li></ul></ul><li><b>Epilepsie focale occipitale </b></li><ul><ul><li>Phénomène\nstationnaire</li><li>Signes\npositifs colorés, mais variable </li><li>Parfois\naccompagné de troubles de la conscience ou autre manifestions épileptiques </li><li>Consultation\nneurologique et EEG dans les 15 jours</li></ul></ul><li><b>PRESS syndrome </b></li><ul><ul><li>Circonstances\n: HTA maligne (FO), éclampsie, encéphalopathie urémique, toxique (tacrolimus,&nbsp; ciclosporine) </li><li><font color=\"#ff0000\">Mesurer\nla PA et IRM cérébrale en urgence (lésions bi occipitales réversibles) </font></li></ul></ul><li><b>Hypertension intracrânienne </b></li><ul><ul><li>Éclipses\nvisuelles et œdème papillaire bilatéral</li><li>Mesurer\nla PA</li><li><font color=\"#ff0000\">IRM\ncérébrale en urgence</font></li></ul></ul></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Cause neurologique"
    },
    {
      "wid": "W9kXRiqvFzzhBuJvx",
      "title": "Déficit touchant les 2 yeux",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579001989685"}
      },
      "children": ["Eo3CLF4zKDqbqhgoM", "fqvSLHFT24dbSicmh"],
      "questionsHelper":
          "<h4><b><font color=\"#ffb527\">Question</font></b></h4><p>Est-ce\nque quelque part, sur un œil ou sur l’autre, le déficit respecte le méridien\nvertical ?<br></p>",
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Déficit bilatéral du champ visuel</font></b><br></p>",
      "keywords": "Déficit touchant les 2 yeux"
    },
    {
      "wid": "WyXyjYN4bh4QL8gau",
      "title": "Douleurs",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568125090623"}
      },
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Neuropathie optique bilatérale ET douleurs\naugmentées aux mouvements oculaires</font></b><br></p><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4>\n\n<p></p><p></p><ul></ul>\n\n\n\n<ul></ul>\n\n<p></p><ul><li>Probable\n<b>neuropathie optique inflammatoire </b>(névrite optique) bilatérale&nbsp;</li></ul><h4>A vérifier</h4><ul><li>Obtenir une IRM orbitaire et encéphalique à la phase aiguë (permettant de visualiser les voies visuelles)<br></li></ul>",
      "children": ["XrsJBsdqSkYq2H3FZ", "3nZ9FKNHxdaafqxSZ"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Douleurs"
    },
    {
      "wid": "XrsJBsdqSkYq2H3FZ",
      "title": "Prise de contraste des nerfs optiques à l'IRM",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568125287644"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Neuropathie optique bilatérale douloureuse ET prise de contraste des NO</font></b></h3><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li><b>Neuropathies\noptiques inflammatoires </b></li><ul><ul><li>Démyélinisantes\n: MOG, AQP4, SEP, idiopathiques...</li><li>Infectieuses\n: syphilis, bartonellose,\nborreliose...</li><li>Inflammatoires\n: Sarcoïdose, Lupus...</li><li>Plus rarement : neuropathies optiques compressives/infiltratives, post-radiques (diagnostics évoqués par l'IRM)</li></ul></ul></ul>",
      "pathologiesArray": [
        "MhR2dyLYG5fBwFmpp",
        "Ftmf3PBeCS3Tv8du5",
        "LNjr2WnBSuyipxCvw",
        "9m5AAxP5pKnbPz8q3"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords": "Prise de contraste des nerfs optiques à l'IRM"
    },
    {
      "wid": "XtJkRQ5k9zC5uMQSP",
      "title": "Pseudo-œdème papillaire",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579015008335"}
      },
      "children": [],
      "pathologiesArray": [
        "eetcKDYf3jhrfGL3m",
        "gZZ34KSmRA3mgCW9F",
        "CjKNQ5arHmAskEx4X",
        "oaWPdaq2ZiEX3zLxZ",
        "CLKodsXMWJw2QCvD4"
      ],
      "introduction":
          "<p></p><h4><b style=\"font-size: 1.1em;\">Le pseudo-œdème est suspecté</b><br></h4><p></p><ul><li>Chez un patient non ou peu symptomatique (en dehors de la neuropathie optique héréditaire de Leber)</li><li>En cas de saillie papillaire modérée</li><li>Si les vaisseaux sont bien visibles tout autour de la papille</li><li>Si la coloration de la papille est normale</li><li>En l'absence d'hémorragie péri-papillaire</li></ul><h4><b><font color=\"#f44263\">Causes possibles de pseudo-œdème :</font></b></h4>",
      "keywords": "Pseudo-œdème papillaire"
    },
    {
      "wid": "YNLf6zQhyLXPoWQzW",
      "title": "Ductions normales",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566565411134"}
      },
      "introduction":
          "<div><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#f44263\"><br>Diagnostics possibles</font></b><br></div><p></p><ul></ul><p></p><ul><li>Phorie décompensée</li><li>Strabisme\nconvergent\naigu</li><li>Insuffisance\nde divergence</li><li>Insuffisance\nde\nconvergence</li><li>Strabisme\ndivergent intermittent décompensé</li></ul>\n\n<p></p><p><br></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Ductions normales"
    },
    {
      "wid": "YjHhfA3M3s5ynaArE",
      "title": "Avec œdème papillaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568125786530"}
      },
      "introduction":
          "&nbsp;\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<h3><b><font color=\"#ffb527\">Neuropathie optique bilatérale indolore ET brutale ET œdème papillaire </font></b></h3><p><i>Absence de douleurs périoculaires et/ou orbitaires MAIS céphalées possibles</i></p><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li><b>HIC\nfulminante</b>&nbsp; (céphalées, acouphènes, éclipses)</li><li><b>HTA</b>\n: rétine souvent anormale à distance de l’œdème papillaire, œdème maculaire</li><li><b>NOIA\nArtéritique</b> : </li><ul><ul><li>Maladie\nde Horton</li><li>Autres\nvascularites</li></ul></ul><li><b>NOIA\nNon artéritique</b> : post chirurgie, hypovolémie, etc…</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "pathologiesArray": [
        "ugXG3pnDoBptWzrYW",
        "KtTSExpfH6yra7mJY",
        "YGTJg9tTjbRy36p9j"
      ],
      "keywords": "Avec œdème papillaire"
    },
    {
      "wid": "ZHxTcanmh4zLWBPMJ",
      "title": "Imagerie normale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567702160447"}
      },
      "children": ["Lk8SuR4uHPKWxMt8o", "9XW2xd4X2kqvBmkHf"],
      "introduction":
          "<p><br></p><h3><b><font color=\"#f1522c\">A vérifier</font></b></h3><ol><li>&gt; 50 ans : éliminer une maladie de Horton (symptômes et signes, CRP, VS, NFS)</li><li><span style=\"text-align: center;\">Est-ce une céphalée orthostatique ?</span></li></ol>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Imagerie normale"
    },
    {
      "wid": "Ztmrp3v6WaEjzjHyk",
      "title": "Symptômes ou signes neurologiques",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567703608326"}
      },
      "introduction":
          "<p><br></p>\n\n\n\n\n\n\n\n<p><font color=\"#ff0000\"><b>Avis neurologique URGENT</b></font></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Symptômes ou signes neurologiques"
    },
    {
      "wid": "ZxqEuSGBgBGk9MGAK",
      "title": "Sans œdème papillaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568123744655"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Neuropathie optique unilatérale, sans OP, indolore ET avec BAV brutale</font></b></h3>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li><b>Complication\naiguë d’une compression</b> : </li><ul><ul><li>Apoplexie\nhypophysaire,\netc.</li><li>IRM\norbitaire et encéphalique en urgence</li></ul></ul><li><b>Neuropathie\noptique radio-induite </b>: contexte de radiothérapie, faire imagerie à but\nmédicolégal</li><li><b>Neuropathie\noptique traumatique&nbsp;</b> : contexte, scanner\norbitaire et encéphalique (os, métal) +/- IRM orbitaire et encéphalique</li><li><b>Neuropathie\noptique ischémique postérieure</b> :</li><ul><ul><li>Rare</li><li>Obtenir\nune IRM orbitaire et encéphalique&nbsp; ET un\nbilan biologique inflammatoire (CRP, VS, plaquettes) </li><ul><li>Artéritique\n(Horton, autre vascularite) céphalées fréquentes </li><li>Post\nchirurgicale (contexte, faire imagerie à but médicolégal)</li></ul></ul></ul></ul>",
      "pathologiesArray": [
        "MhR2dyLYG5fBwFmpp",
        "A5ywvdaQLqYmeCXG3",
        "Ftmf3PBeCS3Tv8du5",
        "63T9WymT3qgmrFKHS"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords": "Sans œdème papillaire"
    },
    {
      "wid": "bczWu6tmQr9gWFE8w",
      "title": "Prise de contraste du nerf optique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568124469140"}
      },
      "introduction":
          "<div><h3><b><font color=\"#ffb527\"><br>Neuropathie optique unilatérale indolore ET rapidement progressive ET prise de contraste du NO</font></b></h3></div><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<ul><li><b>Neuropathie\noptique inflammatoire</b> :</li><ul><ul><li>Démyélinisantes\n: SEP, MOG, AQP4, idiopathiques...</li><li>Infectieuses\n: syphilis, bartonellose,\nborreliose...</li><li>Inflammatoire\n: Sarcoïdose, Lupus...</li></ul></ul><li><b>Neuropathie optique infiltrative</b></li><li><b>Neuropathie\noptique radio-induite</b>&nbsp;: pas de douleurs, contexte</li></ul>",
      "pathologiesArray": [
        "MhR2dyLYG5fBwFmpp",
        "Ftmf3PBeCS3Tv8du5",
        "LNjr2WnBSuyipxCvw",
        "9m5AAxP5pKnbPz8q3"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords": "Prise de contraste du nerf optique"
    },
    {
      "wid": "bhgLjhw7qmwa2AMcG",
      "title": "Baisse visuelle progressive",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568125675390"}
      },
      "introduction":
          "<div><h3><b><font color=\"#ffb527\"><br>Neuropathie optique bilatérale, indolore ET progressive</font></b></h3></div><h4><b><font color=\"#f1522c\">A vérifier</font></b></h4>\n\n\n\n\n\n\n\n<ul><li>Aspect\ndu fond d’œil à la phase aiguë </li><ul><ul><li>Œdème\npapillaire</li><li>Papille\nnormale ou pâle +/- excavée</li></ul></ul></ul><p style=\"text-align: left;\"><b>IRM orbitaire et encéphalique +++ (permettant de visualiser les voies visuelles)<br>Le terrain, le contexte, la clinique et le mode évolutif permettent d'orienter le diagnostic</b></p><h4><b style=\"\"><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Neuropathies optiques compressives/infiltratives</li><li>Neuropathies optiques toxiques / carentielles</li><li>Neuropathies optiques héréditaires : de Leber, Atrophie Optique Dominante, etc</li><li>Neuropathie optique associé à l’œdème de stase chronique par HIC associée</li><li>Neuropathies optiques inflammatoires/ infectieuses bilatérales : MOG, AQP4,&nbsp; SEP, infectieuses</li><li>Neuropathies optiques auto-immunes/paranéoplasiques</li><li>Glaucome : la plus fréquente des NO bilatérales progressives, mais diagnostic d’élimination en l’absence d'hypertonie oculaire</li></ul>",
      "pathologiesArray": [
        "hb3kMkunFNXggxo3m",
        "ce77CDQyKvgNs6Ydm",
        "nM3wbBcczge7RSsv8",
        "6Mt3nhDuL2M3C63N3",
        "MhR2dyLYG5fBwFmpp",
        "oaWPdaq2ZiEX3zLxZ",
        "LNjr2WnBSuyipxCvw",
        "Q3oPXp4r4vCWHicRF"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords": "Baisse visuelle progressive"
    },
    {
      "wid": "cCnAf8PeFbTFpk7iS",
      "title": "Cause oculaire ou orbitaire",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1579018073109"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Trouble visuel transitoire de cause oculaire</font></b></h3><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Anomalie de surface oculaire : sécheresse</li><li>Kératocône (hydrops)</li><li>Dystrophie cornéenne</li><li>Trouble réfractif intermittent (hypermétropie latente)</li><li>Hypertonie intermittente (angle irido cornéen, glaucome pigmentaire, Possner Schlossmann ..)</li><li>Hémorragie du vitré</li><li>Anomalies papillaires : drusen, papilles dysmorphiques</li><li>Papille pâle (Uhthoff)</li><li>Rétine : pré thrombose veineuse, syndrome d’ischémie oculaire</li><li>Œdème papillaire :&nbsp;<font color=\"#ff0000\">URGENT</font></li><li><font color=\"#424242\">...</font></li></ul>",
      "othercats": ["xbmghwHhTgMN3f3y2"],
      "keywords": "Cause oculaire ou orbitaire"
    },
    {
      "wid": "cPDJ6y7ZP5kFzTXbL",
      "title": "PL hémorragique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567530057658"}
      },
      "introduction":
          "<h4><br></h4><h4><font color=\"#ffb527\">Hémorragie méningée ?</font></h4><h5><font color=\"#ce0000\"><b style=\"\">Avis\nneurochirurgical/neuroradiologie interventionnelle</b></font></h5><h5><font color=\"#ce0000\"><b style=\"\">Artériographie : anévrisme ? MAV ?</b></font></h5>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "PL hémorragique"
    },
    {
      "wid": "cgKcWomfrCW787un7",
      "title": "Autre anomalie",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567529852261"}
      },
      "introduction":
          "<p><span style=\"color: rgb(244, 66, 99); font-size: 1.3em;\"><br>Diagnostics possibles</span><br></p><ul><li>Hématome intracrânien</li><li>Hydrocéphalie</li><li>Tumeur</li><li>Thrombose veineuse\ncérébrale</li><li>Dissection</li><li>Apoplexie hypophysaire</li><li>Syndrome de Vasoconstriction Cérébrale\nRéversible</li><li>Syndrome d’Encéphalopathie Postérieure\nRéversible (PRES)</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "conclusion": "<font color=\"#ff0000\"><b>Avis spécialisé</b></font>",
      "keywords": "Autre anomalie"
    },
    {
      "wid": "cz5ssTP4TQime3yop",
      "title": "Ductions anormales",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566567050044"}
      },
      "children": ["hCwFEh4PPLexRzgLi", "xqu7DcDMAg3jNJYjs"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Diplopie binoculaire AVEC composante verticale ET ductions anormales</font></b></h3><p style=\"text-align: left;\"><b>Existe-t-il une systématisation neurologique ?</b></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Ductions anormales"
    },
    {
      "wid": "da6M4z573LWftSdED",
      "title":
          "Le sujet n’a pas fermé un œil puis l’autre ET/OU il n’est pas certain si le déficit était sur un œil ou sur les deux",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1578063444583"}
      },
      "introduction":
          "<h3></h3><h4></h4><h4></h4><h3><b><font color=\"#ffb527\">Considérer qu'il s'agit d'un Trouble Visuel Monoculaire Transitoire</font></b></h3><p></p><p></p><ul></ul><p></p><h4><b><font color=\"#ffb527\" style=\"\">Evaluation</font></b></h4><ul><li>Examiner les pupilles (Horner, DPAR)</li><li>Prendre le temps de faire un examen oculaire bilatéral, comparatif et détaillé : surface, angle, FO dilaté (emboles, œdème, ischémie, nodules cotonneux, hémorragies)</li><li>Champ visuel automatique si examen oculaire normal</li><li>OCT et angiographie fluorescéine parfois utiles</li></ul>",
      "children": ["cCnAf8PeFbTFpk7iS", "QP8K6fNyMcWRFtqPa"],
      "examsArray": [
        "6X383kLqc3f3nBMZd",
        "CJqD6mRr6e2Jd63sw",
        "6Qg3vj6dhuaFmWXEX",
        "ReiNopLbtx8X66Bet",
        "QMwqWXWcP377rwrKA"
      ],
      "keywords":
          "Le sujet n’a pas fermé un œil puis l’autre ET/OU il n’est pas certain si le déficit était sur un œil ou sur les deux"
    },
    {
      "wid": "dfRM6Ngi2uthhjBKk",
      "title": "Diplopie binoculaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1561384280636"}
      },
      "children": ["CA28Q3hPwZDfN9SvJ", "KzYC2yDYE65zrrR6y"],
      "introduction":
          "<p><b><br></b></p><p><b>Disparaît quel que soit l'œil occlus</b></p>",
      "examsArray": ["Dzki95dm6MiYBJcmK"],
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Diplopie binoculaire"
    },
    {
      "wid": "dpPqYGDcg5oe4mY6p",
      "title": "Pas de DPAR",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566574626310"}
      },
      "introduction":
          "<p><span style=\"color: rgb(255, 181, 39); font-size: 1.1em;\"><br><b>Vérifier</b></span><br></p><ul><li>Cornée, transparence des milieux</li><li>Rétine/NO (clinique/imagerie)</li></ul><p>Electrophysiologie en cas de doute</p>",
      "pathologiesArray": [
        "X3XTMgymXcDYaWTRz",
        "oaWPdaq2ZiEX3zLxZ",
        "Nsan86qFjN7Sv2He9",
        "eKEPmughCxhicqhGe"
      ],
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Diagnostics possibles",
      "children": [],
      "examsArray": ["vyBPnq43eF2PdDQvf"],
      "keywords": "Pas de DPAR"
    },
    {
      "wid": "fMwLSQ6NcAPjyKpSg",
      "title": "LCS de composition anormale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567785524938"}
      },
      "introduction":
          "<h3><b><br><font color=\"#f44263\">Diagnostics possibles</font></b></h3><ul><li>Méningite (infectieuse, inflammatoire, néoplasique)</li><li>Tumeur de la queue de cheval (IRM médullaire)</li><li>Thrombose veineuse cérébrale non vue à l'IRM (relire/refaire IRM cérébrale)</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "LCS de composition anormale"
    },
    {
      "wid": "fqvSLHFT24dbSicmh",
      "title": "Pas de respect du méridien vertical",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Diagnostics possibles",
      "createdAt": {
        "date": {"numberLong": "1579003797775"}
      },
      "introduction":
          "<h3><span style=\"font-size: 1em;\"><b><font color=\"#ffb527\"><br>Atteinte\nbilatérale en avant du chiasma optique</font></b></span></h3><ul><li>Trouble des milieux optiques des 2\nyeux : déficit diffus ou rétrécissement concentrique des isoptères</li><li>Rétinopathie bilatérale</li><li>Neuropathie optique bilatérale</li></ul><p>Plus\nrarement&nbsp; : atteinte bilatérale des voies visuelles rétrochiasmatiques</p><p>Atteinte\nfonctionnelle : incohérence entre les examens et la clinique (contexte clinique+++)</p>\n\n\n\n\n\n\n\n\n\n<p></p>",
      "pathologiesArray": [
        "Gh7GFYSxzeqcMuNeX",
        "X3XTMgymXcDYaWTRz",
        "Nsan86qFjN7Sv2He9",
        "eKEPmughCxhicqhGe"
      ],
      "othercats": ["EgeP4xnANLqn9JLWT"],
      "children": [],
      "keywords": "Pas de respect du méridien vertical"
    },
    {
      "wid": "g6yAfdjFMWufxw7Qz",
      "title": "Fonction visuelle centrale anormale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567784875497"}
      },
      "introduction":
          "<p><br></p><ul><li>Baisse d'acuité visuelle</li><li>Dyschromatopsie</li><li>Déficit du champ visuel central, arciforme, altitudinal</li><li>DPAR si unilatéral</li></ul><h4><b><font color=\"#f44263\">Diagnostic possible</font></b></h4><ul><li>Neuropathie optique œdémateuse le plus probable</li></ul><p>Habituellement OP unilatéral</p><h4>A vérifier</h4><p>En dehors de la NOIA non artéritique typique et des uvéites :</p><ul><li>Obtenir une IRM orbitaire et encéphalique</li></ul>",
      "children": ["8ihjsYdJmSscgM9mL", "jqSPD8PrEybwewMRb"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Fonction visuelle centrale anormale"
    },
    {
      "wid": "gYvjfKGkqDumq542N",
      "title": "DPAR et Rétine normale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566574609246"}
      },
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "othercats": ["EgeP4xnANLqn9JLWT"],
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.1em;\"><font color=\"#ffb527\"><br></font></b></p><p><span style=\"font-size: 1.1em;\"><font style=\"\" color=\"#f44263\"><b>Diagnostic possible</b></font></span><br></p><p>Une baisse visuelle unilatérale récente à fond d'œil et OCT normaux AVEC un DPAR, est, en règle, une neuropathie optique</p>",
      "keywords": "DPAR et Rétine normale"
    },
    {
      "wid": "gyY4uWQ75tj52eEPs",
      "title":
          "Test pilocarpine 1% Négatif : pas ou peu d'action sur la mydriase",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568131243254"}
      },
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Mydriase pathologique isolée</font></b><br></p><p>Pas ou peu d'action de la pilocarpine 1% sur la mydriase</p><p><img src=\"/cdn/storage/ResourcesFiles/zqb7Nw92oTFT4zv7t/original/zqb7Nw92oTFT4zv7t.jpg\"><br></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": ["LRxzyzL6TdbtGSDXo", "hptgaErzLjcdfgaBL"],
      "children": [],
      "questionsHelper":
          "<h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Causes iriennes (examen en LAF)</li><li>Mydriase pharmacologique</li></ul>",
      "keywords":
          "Test pilocarpine 1% Négatif : pas ou peu d'action sur la mydriase"
    },
    {
      "wid": "hCwFEh4PPLexRzgLi",
      "title": "Systématisation neurologique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566568182378"}
      },
      "pathologiesArray": ["Mh5xqmtph4N7ZH6iG", "oTpJH44bgRXawtA2R"],
      "introduction":
          "<h3><b><br><font color=\"#f44263\">Diagnostics possibles</font></b></h3><p>Par argument de fréquence<br></p><ul><li>Paralysie du III (au moins 2 territoires musculaires du III)</li><li>Paralysies multiples des nerfs oculomoteurs (tester le V)</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "questionsHelper":
          "<font color=\"#ff0000\">- Etiologies : Attention aux urgences&nbsp;!<br>- Horton&nbsp;: VS et CRP après 50 ans<br>- Paralysie du III&nbsp; et POM multiples : imagerie cérébrale et orbitaire en urgence&nbsp;</font>",
      "keywords": "Systématisation neurologique"
    },
    {
      "wid": "hee5XsxwcsuNjLHbg",
      "title": "Pas de douleur",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568125098422"}
      },
      "children": ["FFkMjf8qYtWrrQ5zf", "bhgLjhw7qmwa2AMcG"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Neuropathie optique bilatérale indolore</font></b></h3><p><i>Indolore = Absence de douleurs périoculaires et/ou orbitaires, mais céphalées possibles</i></p><h4><b><font color=\"#f1522c\">A vérifier</font></b></h4><p>\n\n\n\n\n\n\n\n</p><p></p><ul></ul>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<ul></ul>\n\n<p></p><ul><li>Mode\nd’apparition<br></li><ul><ul><li>Brutal</li><li>Progressif</li></ul></ul><li>Aspect\ndu fond d’œil à la phase aiguë</li><ul><ul><li>Œdème\npapillaire</li><li>Papille\nnormale ou pâle/excavée</li></ul></ul></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Pas de douleur"
    },
    {
      "wid": "htTT2eWfLosDTJNbC",
      "title":
          "Pas de cause oculaire/orbitaire OU présence de signes d'ischémie oculaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568127433805"}
      },
      "introduction":
          "<p><b><br></b></p><h3><b>ACCIDENT ISCHEMIQUE TRANSITOIRE</b></h3>\n\n<p>Causes vasculaires de TMVT</p><ul><li>Accident ischémique transitoire rétinien</li><li>Ischémie choroïdienne</li><li>Syndrome d’ischémie oculaire</li></ul><p>Suivez\nles recommandations !</p>\n\n<p><b>Envoyez\nle patient aux urgences (hôpital avec unité neurovasculaire)</b></p><p>\n\n\n\n\n\n<a href=\"https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-cardiovasculaires/accident-vasculaire-cerebral-avc/article/les-unites-neuro-vasculaires-unv\">https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-cardiovasculaires/accident-vasculaire-cerebral-avc/article/les-unites-neuro-vasculaires-unv</a>&nbsp; &nbsp;&nbsp;<b><br></b></p><h3><b>&nbsp;3 problèmes</b></h3>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<ul><li><b>Eliminer une maladie de Horton</b><br></li><li><b>Evaluer le risque d'accident vasculaire cérébral</b></li><li><b>Evaluer le risque cardiaque</b></li></ul><p>\n\n\n\n\n\n\n\n\n\n</p><p><b>Stratification\ndu risque et prévention\nsecondaire</b></p><ul><li>Bilan urgent</li><ul><ul><li>IRM\ncérébrale et ARM ou angio\n&nbsp;scanner\nou doppler des TSA en urgence </li><li>L’IRM&nbsp; doit être pratiquée à la phase aiguë\n(si\nelle\nn’était pas disponible lors du passage aux urgences)&nbsp; dès\nque possible&nbsp; à la recherche de signes\nd’ischémie cérébrale qui transforme l’Accident Ischémique Transitoire en\nAccident Ischémique Constitué</li><li>ECG</li><li>CRP,\nNFS plaquettes, VS</li><li>Bilan\ndes&nbsp; facteurs de risque vasculaire</li></ul></ul><li>Traitement</li><ul><ul><li>Traitement\nde la cause (urgent)</li><li>Antiagrégants\nplaquettaires</li><li>Statines</li><li>Correction des facteurs\nde risque vasculaire</li></ul></ul></ul>",
      "children": [],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords":
          "Pas de cause oculaire/orbitaire OU présence de signes d'ischémie oculaire"
    },
    {
      "wid": "j2bNRxaBq7672BmEe",
      "title": "PL anormale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567702435284"}
      },
      "introduction":
          "<p style=\"\"><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#f44263\"><br>Diagnostics possibles</font></b><br></p><ul><li>Elévation de la pression d'ouverture du LCS</li></ul><p style=\"margin-left: 50px;\"><b style=\"\"><font color=\"#ff0000\">Avis neurologique rapide</font></b></p>\n\n\n\n\n\n\n\n<ul><li>Méningite</li></ul><p style=\"margin-left: 50px;\"><b><font color=\"#ff0000\">Avis spécialisé</font></b></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "PL anormale"
    },
    {
      "wid": "jbah4ZrsRwkTbAwJ3",
      "title": "ADDuction limitée de façon isolée",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566565971815"}
      },
      "introduction":
          "<h4><h3><b><font color=\"#f44263\"><br>Diagnostics possibles</font></b></h3></h4><ul><li>Ophtalmoplégie internucléaire (OIN) (convergence normale)</li><li>Jonction Neuromusculaire (myasthénie)</li><li>Muscle : paralysie Droit médial ou restriction Droit latéral ? (imagerie oculaire au moins doute)</li></ul><p><font color=\"#ce0000\">- Etiologies : Attention aux urgences !<br></font><span style=\"color: rgb(206, 0, 0);\">- Horton : NFS, VS et CRP après 50 ans<br></span><span style=\"color: rgb(206, 0, 0);\">- IRM orbitaire et cérébrale avec coupe fine sur le pont : AVC ? Démyélinisation ? etc.</span></p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": ["9QjoQnZRihC9uFA8s", "B6LuS4jfnnaYfofRG"],
      "children": [],
      "keywords": "ADDuction limitée de façon isolée"
    },
    {
      "wid": "jqSPD8PrEybwewMRb",
      "title": "IRM cérébrale et orbitaire anormale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567785807106"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Neuropathie Optique œdémateuse</font></b></h3><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Compression du/des NO sur l'IRM</li><li>Prise de contraste du/des NO sur l'IRM</li><ul><ul><li>Infiltration</li><li>NO inflammatoire/infectieuse</li></ul></ul></ul><p><i>Attention : œdème papillaire souvent bilatéral dans les névrites optiques à Ac anti-MOG</i></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": [
        "MhR2dyLYG5fBwFmpp",
        "LNjr2WnBSuyipxCvw",
        "9m5AAxP5pKnbPz8q3",
        "qoNNyoar4x2Mw6sEi"
      ],
      "children": [],
      "keywords": "IRM cérébrale et orbitaire anormale"
    },
    {
      "wid": "mc94nrKtC4qKaZqbE",
      "title": "Test pilocarpine 0,1% Positif : inversion de l'anisocorie",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568131179246"}
      },
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Diagnostics possibles",
      "pathologiesArray": ["cSv7x5EQY2fNLiKSF"],
      "introduction":
          "<h3><b style=\"\"><font color=\"#ffb527\"><br>Mydriase pathologique isolée ET la pilocarpine diluée à 0,1% inverse l'anisocorie</font></b></h3>",
      "keywords": "Test pilocarpine 0,1% Positif : inversion de l'anisocorie"
    },
    {
      "wid": "nMEWkWsnF4ZvnsRHE",
      "title": "LCS de composition normale et  pression d'ouverture normale",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Diagnostics possibles",
      "createdAt": {
        "date": {"numberLong": "1578066815190"}
      },
      "children": [],
      "introduction":
          "<p><span style=\"color: rgb(244, 66, 99); font-size: 1.1em;\"><br><b>Diagnostics possibles</b></span><br></p><ul><li><a href=\"https://app-sfo2020.weconext.eu/cat/XtJkRQ5k9zC5uMQSP\">Pseudo-œdème papillaire </a>pris pour un œdème papillaire ? (angiographie à la fluorescéine, surveillance)</li><li>Mauvaise mesure de la pression d'ouverture ?</li><ul><li>Difficulté de réalisation ?</li><li>Symptômes d'HTIC ?</li><li>Signes indirects d'HTIC à l'IRM ?</li><li>Effets de la PL sur l'OP et les symptômes ?</li><li>Nouvelle PL avec mesure de pression ?</li></ul></ul>",
      "keywords": "LCS de composition normale et  pression d'ouverture normale"
    },
    {
      "wid": "oju5ScFb69zDK7D9m",
      "title": "IRM normale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567785323150"}
      },
      "introduction":
          "<h4><b style=\"font-size: 1.3em;\"><font color=\"#ffb527\"><br>Œdème papillaire de stase ET IRM orbitaire et encéphalique avec séquence veineuse normale</font></b></h4><p>Ponction lombaire en position allongée avec mesure de la pression d'ouverture et analyse du LCS</p>",
      "children": [
        "5ijvejZKc6P9enag5",
        "fMwLSQ6NcAPjyKpSg",
        "nMEWkWsnF4ZvnsRHE"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "IRM normale"
    },
    {
      "wid": "p9eWw9NKibMq5WxGB",
      "title": "Céphalée inhabituelle, d'installation progressive",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567529224250"}
      },
      "children": ["ZHxTcanmh4zLWBPMJ", "7teqGzHENyoAnHrTA"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "introduction":
          "<p><br></p><h3><font color=\"#ffb527\">Céphalée inhabituelle, d'installation progressive</font></h3><p>Adresser aux urgences pour obtenir</p><ol><li>IRM cérébrale avec angioIRM artérielle et veineuse</li><li>ou Scanner cérébral avec angioscanner artériel et veineux</li></ol>",
      "keywords": "Céphalée inhabituelle, d'installation progressive"
    },
    {
      "wid": "pqFjhjsMfsCizx3xS",
      "title": "Avec œdème papillaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568123645415"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Neuropathie optique unilatérale œdémateuse indolore ET brutale</font></b></h3><h4><b style=\"\"><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li><b>Neuropathie\noptique ischémique antérieure aiguë</b></li><ul><ul><li>Artéritique\n(Horton, autre vascularite), céphalées fréquentes</li><li>Non\nartéritique (papille à risque sur l’œil adelphe)</li></ul></ul><li>Attention,\n2 pièges !</li><ul><ul><li><b>Complication\naiguë d’une compression</b> passée inaperçue (méningiome du nerf optique) avec\nOP chronique</li><li><b>Névrite\noptique</b> rapportée comme brutale</li><li><font color=\"#9c0000\">Ne\npas hésiter à imager en cas de doute</font></li></ul></ul><li><b>Neuropathie\noptique radio-induite</b> : contexte de radiothérapie, obtenir une IRM orbitaire et\nencéphalique en urgence</li><li><b>Neuropathie\noptique traumatique </b>: contexte, scanner orbitaire et encéphalique (os, métal)\n+/- IRM orbitaire et encéphalique</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": [
        "MhR2dyLYG5fBwFmpp",
        "YGTJg9tTjbRy36p9j",
        "Ftmf3PBeCS3Tv8du5",
        "63T9WymT3qgmrFKHS",
        "LNjr2WnBSuyipxCvw"
      ],
      "children": [],
      "keywords": "Avec œdème papillaire"
    },
    {
      "wid": "q3AFPC2HpMGxywCNq",
      "title": "Trouble visuel transitoire",
      "isRoot": true,
      "createdAt": {
        "date": {"numberLong": "1561366070583"}
      },
      "children": [
        "HuyKtGcHsrsekcarh",
        "NogQf5uB2WExSRxjZ",
        "qyHsPRkjQiyL2Ca9r",
        "da6M4z573LWftSdED"
      ],
      "introduction":
          "<h4><font color=\"#ffb527\"><b>Examen</b></font></h4><ul><li>Dater le trouble visuel : inférieur à 7 jours ou plus ancien ?</li><li>Récidives ?</li><li>Décrire le trouble visuel : durée,\nsymptômes associés, facteurs précipitants</li><li>Faire\ndessiner le trouble visuel : fortifications/zigzags (suggèrent un trouble\nbinoculaire)</li><li>Chercher\ndes symptômes associées : douleur oculaire, céphalées, douleur cervicale,\nsymptômes de maladie de Horton, symptômes neurologiques. </li><li>Mesurer\nla pression artérielle et prendre le pouls\nà la recherche d’une arythmie</li></ul><p></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "questionsHelper":
          "<h4><font color=\"#ffb527\">A vérifier</font></h4><p>Déterminer si le trouble visuel a affecté un œil ou les deux</p><h4><b><font color=\"#ffb527\">Question</font></b></h4><p>Avez-vous fermé un œil puis l’autre ?</p>",
      "keywords": "Trouble visuel transitoire"
    },
    {
      "wid": "q76B3foF5X88ondHx",
      "title": "PL normale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567702447435"}
      },
      "introduction":
          "<p><br></p>\n\n\n\n\n\n\n\n<p>Traitement antalgique</p><p><b><font color=\"#ff0000\">Avis neurologique non urgent</font></b></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "PL normale"
    },
    {
      "wid": "qyHsPRkjQiyL2Ca9r",
      "title":
          "Oui ET la vision était trouble sur les 2 yeux ET/OU le déficit respectait le méridien vertical",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568126857207"}
      },
      "children": [
        "8Mn8vHn72oRTczBcf",
        "8ABo8q3SHY6pHjT2D",
        "Txswpt55WXYDyukHZ"
      ],
      "introduction":
          "<p><br></p><p>\n\n\n\n\n\n\n\n\n\n</p><h3><b><font color=\"#f44263\">Trouble\nVisuel Binoculaire Transitoire</font></b></h3><h4><font color=\"#f44263\">Evaluation</font></h4><ul><li>Antécédents : diabète (hypoglycémies), HTA&nbsp; ou hypotension, troubles cardiaques, syncopes, migraines, AVC, épilepsie</li><li>Examen oculaire bilatéral (FO\ndilaté : emboles, œdème, ischémie, nodules cotonneux, hémorragies) et\noculomoteur détaillé avec examen des pupilles\n</li><li>Âge ≥ 50\nans, arguments pour une maladie de Horton ? </li><li>Recherche de symptômes/signes neurologiques associés, à l’interrogatoire ou à l’examen neurologique (vertiges, ataxie, paralysie faciale, atteinte des voies\nlongues (déficit moteur ou sensitif hémicorporel),</li><li>Sensation\nde malaise ?</li></ul><p>\n\n\n\n\n\n\n\n\n\n</p><p><b>Le bilan dépendra du mécanisme / de\nla cause évoquée (oculaire, s</b><b>ystémique, neurologique ?)</b></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "examsArray": ["Ss3c2ez7cL9fYe8yQ"],
      "keywords":
          "Oui ET la vision était trouble sur les 2 yeux ET/OU le déficit respectait le méridien vertical"
    },
    {
      "wid": "rJaXmyc8nnGPBJBc4",
      "title": "Anomalie bilatérale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567778940765"}
      },
      "introduction":
          "<h3><b><font color=\"#f44263\"><br>Diagnostics possibles</font></b></h3><ul><li>Si baisse visuelle </li><ul><ul><li>Jeune :\nnévrite optique ? = <b><font color=\"#ff0000\">IRM cérébrale et orbitaire (urgent)</font></b></li><li>≥ 50 ans,&nbsp; Horton ? = <font color=\"#ff0000\"><b>CRP, VS, NFS en urgence</b></font></li></ul></ul><li>Si OP bilatéral</li><ul><ul><li>HTA maligne</li><li>HIC : éclipses ?</li><ul><li>IRM cérébrale et angio IRM veineuse ou</li><li>Scanner cérébral avec angio scanner veineux puis IRM cérébrale&nbsp;</li></ul></ul></ul></ul><ul><ul></ul></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": [
        "ugXG3pnDoBptWzrYW",
        "5pjFMh5J82p5uLagi",
        "YGTJg9tTjbRy36p9j",
        "LNjr2WnBSuyipxCvw"
      ],
      "keywords": "Anomalie bilatérale"
    },
    {
      "wid": "rWaGNuojtsZezqyXt",
      "title": "RPM normal du côté de la petite pupille",
      "isRoot": false,
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "createdAt": {
        "date": {"numberLong": "1584704729552"}
      },
      "examsArray": ["iamFAnWyXXW3sPGCc"],
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Myosis pathologique isolé ET RPM normal</font></b></h3>",
      "pathologiesArray": ["2BajxwEQezz3sY8Xw", "PHemeJdnrzCzm5YkJ"],
      "questionsHelper":
          "<p>A. Test à l'apraclonidine positif : inversion de l'anisocorie<br>&nbsp; &nbsp; &nbsp;Test à la cocaïne positif : pas de dilatation de la petite pupille</p><p><b>-&gt; HORNER (CBH)</b></p><p>B. Test à l'apraclonidine négatif : pas d'inversion de l'anisocorie<br>&nbsp; &nbsp; &nbsp;Test à la cocaïne négatif : dilatation des deux pupilles</p><p><b>-&gt; ANISOCORIE PHYSIOLOGIQUE</b></p>",
      "keywords": "RPM normal du côté de la petite pupille"
    },
    {
      "wid": "rXCWh8EXFBYdQwzft",
      "title": "Pas de douleur",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568119039566"}
      },
      "children": [
        "2qjb67uQStvY7E6Pd",
        "6FY46vhotAR3WTn9i",
        "LbmvZka6QFytcqzRW"
      ],
      "introduction":
          "<div><h3><b><font color=\"#ffb527\"><br></font></b><font color=\"#ffb527\">Neuropathie optique unilatérale indolore</font><br></h3></div><p>Indolore\n= absence de douleurs péri oculaires et/ou orbitaires, mais céphalées possibles</p><h4><b><font color=\"#ffb527\">A vérifier</font></b></h4><ul><li>Mode\nd’apparition</li><ul><ul><li>Brutal</li><li>Rapidement\nprogressif (≤15j)</li><li>Lentement\nprogressif (&gt;15j) ou inconnu</li></ul></ul></ul><ul><li>Aspect\ndu fond d’œil à la phase aiguë</li><ul><ul><li>Œdème\npapillaire</li><li>Papille\nnormale ou pâle/excavée</li></ul></ul></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Pas de douleur"
    },
    {
      "wid": "tMQfPAiJK52qToeJQ",
      "title":
          "Pas de contraction en convergence, pas de mouvements vermiformes",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568131026644"}
      },
      "children": ["MNbMFJoJ7s8zuo3wW", "mc94nrKtC4qKaZqbE"],
      "introduction":
          "<p></p><h3><b style=\"color: rgb(255, 181, 39); font-size: 1.1em;\">Mydriase\naréactive isolée</b></h3><p></p><p>\n\n\n\n\n\n\n\n\n\n</p><p>Faire un test à pilocarpine diluée 0,1%</p>",
      "examsTitle": "Voir fiche",
      "pathologiesTitle": "Fiches à consulter",
      "examsArray": ["iamFAnWyXXW3sPGCc"],
      "pathologiesArray": [
        "Mh5xqmtph4N7ZH6iG",
        "cSv7x5EQY2fNLiKSF",
        "hptgaErzLjcdfgaBL"
      ],
      "questionsHelper":
          "<h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>Mydriase pharmacologique (interrogatoire)</li><li>Pupille d'Adie</li><li>Paralysie du III atypique ou débutante (rare)</li></ul>",
      "keywords":
          "Pas de contraction en convergence, pas de mouvements vermiformes"
    },
    {
      "wid": "tZL5QE98pSwoHmCG5",
      "title": "Absence de contraste du nerf optique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568124479182"}
      },
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Neuropathie optique unilatérale, indolore ET rapidement progressive SANS prise de contraste du NO</font></b><br></p><p></p><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><p>\n\n\n\n\n\n\n\n</p><p></p><ul></ul>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<ul></ul>\n\n<p></p><ul><li><b>Neuropathie optique compressive/infiltrative</b></li><li><b>Neuropathie\noptique héréditaire de Leber</b></li><li><b>Papillite\n/ neurorétinite</b>\n(syphilis, bartonellose,\nborreliose,\ntoxoplasmose, Sarcoïdose,&nbsp; Lupus)</li><li><b>Neuropathie\noptique ischémique </b></li><ul><ul><li>Artéritique\n: Horton, autres vascularites</li><li>Non\nartéritique : œdème papillaire et petite\npapille à risque sur l’œil adelphe</li></ul></ul></ul>",
      "pathologiesArray": [
        "MhR2dyLYG5fBwFmpp",
        "oaWPdaq2ZiEX3zLxZ",
        "YGTJg9tTjbRy36p9j",
        "cTgoQSkEtZdrsGmGK"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords": "Absence de contraste du nerf optique"
    },
    {
      "wid": "uFP2purnp8QKGrXc8",
      "title": "ABDuction anormale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566565952580"}
      },
      "introduction":
          "<h3><b style=\"font-size: 1em;\"><font color=\"#f44263\"><br>Diagnostics possibles</font></b></h3><p>Par argument de fréquence</p><ul><li><a href=\"https://app-sfo2020.weconext.eu/pathology/SXq5dYjukj7M2dHnw\">Paralysie du VI&nbsp;</a></li><li>Muscle\n:\nparalysie droit\nlatéral ou restriction\ndu droit médial ? (imagerie orbitaire au moindre doute)</li><li>Jonction\nneuromusculaire (myasthénie)</li></ul><p><font color=\"#ff0000\">- Etiologies : Attention aux urgences&nbsp;!<br>- Horton&nbsp;: NFS, VS et CRP après 50 ans<br>- Arguments pour une HIC ? Œdème papillaire au FO ?<br>- Systématisation neurologique ? éliminer un AVC</font></p>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "pathologiesArray": ["9QjoQnZRihC9uFA8s", "SXq5dYjukj7M2dHnw"],
      "keywords": "ABDuction anormale"
    },
    {
      "wid": "vSTmLepmkfM9o67QE",
      "title": "Céphalée aiguë",
      "isRoot": true,
      "createdAt": {
        "date": {"numberLong": "1561366065646"}
      },
      "children": ["MKrKDjXiwCXQX4sRp", "HSosdwgdkp7PzEzpf"],
      "introduction":
          "<h3><font color=\"#ffb527\"><b>Rechercher des symptômes associés</b></font></h3>\n\n\n\n\n\n<ul><li>Baisse\nvisuelle</li><li>Diplopie</li><li>Autres\n: fièvre, vomissements, éclipses, vertiges…</li></ul>\n\n<h3><b><font color=\"#ffb527\">Examen clinique neurologique et ophtalmologique</font></b></h3><ul><li>Ptosis, anisocorie,\ntrouble oculomoteur ?</li><li>Examen\noculaire : œil rouge, hypertonie oculaire ?</li><li>Fond\nd’œil : œdème papillaire, rétinopathie,\nsyndrome\nde Terson… ?</li><li>Mesurer\nla pression artérielle</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Céphalée aiguë"
    },
    {
      "wid": "vgfSqJQmtZdEnyoHk",
      "title": "Sans œdème papillaire",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1568125803915"}
      },
      "introduction":
          "<p><b style=\"color: rgb(51, 51, 51); font-size: 1.3em;\"><font color=\"#ffb527\"><br>Neuropathie optique bilatérale, indolore ET brutale SANS œdème papillaire</font></b><br></p><p></p><p><i>Absence de douleurs périoculaires et/ou orbitaires MAIS céphalées possibles</i></p><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li><b>Complication\naiguë d’une compression</b> :</li><ul><ul><li>Apoplexie\nhypophysaire, anévrysme</li></ul></ul><li><b>Neuropathies\noptiques ischémiques postérieures (NOIP)</b><br></li><ul><ul><li>Artéritiques\n: maladie de Horton, autres vascularites</li><li>Post\nchirurgicales</li></ul></ul><li><b>Neuropathie\noptique radio-induite</b></li><li><b>Neuropathie\noptique traumatique&nbsp;</b> &nbsp;&nbsp;</li></ul>",
      "pathologiesArray": [
        "MhR2dyLYG5fBwFmpp",
        "A5ywvdaQLqYmeCXG3",
        "Ftmf3PBeCS3Tv8du5",
        "63T9WymT3qgmrFKHS"
      ],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "children": [],
      "keywords": "Sans œdème papillaire"
    },
    {
      "wid": "wmkfwdmKqD8cE5f2D",
      "title": "Fonction visuelle centrale normale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567784859086"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Vrai œdème papillaire ET fonction visuelle centrale normale</font></b></h3><ul><li>Acuité visuelle normale </li><li>Vision des couleurs normale</li><li>Champ visuel normal et/ou élargissement de la tache\naveugle et/ou ressaut nasal voire constriction des isoptères</li></ul><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><ul><li>HIC le plus probable</li></ul><p>Habituellement OP bilatéral</p><p><font color=\"#ff0000\">IRM cérébrale et orbitaire en urgence avec séquences veineuses</font></p>",
      "children": ["oju5ScFb69zDK7D9m", "x68wJ9sMJ28dZ83g6"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "Fonction visuelle centrale normale"
    },
    {
      "wid": "x68wJ9sMJ28dZ83g6",
      "title": "IRM anormale",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567785335918"}
      },
      "introduction":
          "<h4><b><font color=\"#f44263\"><br>Diagnostics possibles</font></b></h4><ul><li>Processus expansif</li><li>Hydrocéphalie</li><li>Thrombose veineuse centrale</li><li>Fistule durale</li><li>Etc.</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "keywords": "IRM anormale"
    },
    {
      "wid": "xbmghwHhTgMN3f3y2",
      "title": "Œdème papillaire",
      "isRoot": true,
      "createdAt": {
        "date": {"numberLong": "1561366055391"}
      },
      "children": ["XtJkRQ5k9zC5uMQSP", "DQnopaQ2jaJhriYrG"],
      "introduction":
          "<h5><span style=\"color: rgb(51, 51, 51); font-size: 16px;\">Éliminer un pseudo-œdème papillaire</span></h5>\n\n\n\n<ul><li>Fond d’œil</li><li>Auto fluorescence</li><li>OCT papillaire en mode EDI</li><li>Échographie</li><li>Si le doute persiste angiographie fluorescéinique</li></ul>\n\n<p></p>",
      "examsTitle": "Voir fiches",
      "pathologiesTitle": "Fiches à consulter",
      "examsArray": ["JRsqs7mQ9d3fRtw8Z", "6Qg3vj6dhuaFmWXEX"],
      "keywords": "Œdème papillaire"
    },
    {
      "wid": "xqu7DcDMAg3jNJYjs",
      "title": "Pas de systématisation neurologique",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566568205554"}
      },
      "introduction":
          "<h3><b><br><font color=\"#f44263\">Diagnostics possibles</font></b></h3><p>Par ordre de fréquence<br></p><ul><li>Syndrome orbitaire</li><li>Traumatisme</li><li>Jonction neuro-musculaire (myasthénie)</li><li>Paralysie du IV</li></ul>",
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": [
        "frbBAcGBZ3jetKbJb",
        "9QjoQnZRihC9uFA8s",
        "JHfR7rQYHBo2dCxak"
      ],
      "keywords": "Pas de systématisation neurologique"
    },
    {
      "wid": "xqvhEKPExEASQb998",
      "title": "HLH incomplète",
      "isRoot": false,
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Diagnostics possibles",
      "createdAt": {
        "date": {"numberLong": "1584711389184"}
      },
      "introduction":
          "<h3><b><font color=\"#ffb527\"><br>Déficit latéral homonyme incomplet</font></b></h3><h4><b><font color=\"#ffb527\">Question</font></b></h4><p><b><font color=\"#424242\">Le déficit est-il symétrique (congruent) entre l'œil droit et l'œil gauche ?</font></b></p>",
      "pathologiesArray": ["eMyb2qrpiH2rpCnNP", "wPoehPGBoK9cc4Gdd"],
      "keywords": "HLH incomplète"
    },
    {
      "wid": "z89pthNXtTMXk2CPu",
      "title": "Céphalée brutale récente",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1567529196948"}
      },
      "children": ["TN3dADRbFfCRw6K6x", "KbCT5NGofwAvP7Q77"],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "introduction":
          "<p></p><h4><span style=\"font-size: 1.1em;\"><b style=\"\"><font color=\"#ffb527\">Céphalées brutales récentes</font></b></span></h4><p><span style=\"color: rgb(51, 51, 51); font-size: 1.1em;\">Transfert aux urgences pour obtenir</span></p><p></p><ol><li><span style=\"color: rgb(51, 51, 51); font-size: 1.1em;\">IRM cérébrale avec angioIRM artérielle et veineuse</span></li><li><span style=\"color: rgb(51, 51, 51); font-size: 1.1em;\">ou scanner cérébral avec angioscanner artériel et veineux</span></li></ol><p></p><p></p><p></p>",
      "keywords": "Céphalée brutale récente"
    },
    {
      "wid": "ziq493PQofqeKtC43",
      "title":
          "Papilles normales ou atrophiques/excavées ET OCT rétinien normal",
      "isRoot": false,
      "createdAt": {
        "date": {"numberLong": "1566572106722"}
      },
      "children": [],
      "examsTitle": "A vérifier",
      "pathologiesTitle": "Fiches à consulter",
      "pathologiesArray": [
        "X3XTMgymXcDYaWTRz",
        "kczS9G3ZogDEgzCga",
        "eKEPmughCxhicqhGe"
      ],
      "othercats": ["CduEabE9yyjAM9PNB"],
      "introduction":
          "<p></p><h3><b><font color=\"#ffb527\">Baisse visuelle bilatérale ET/OU papilles normales ou atrophiques/excavées ET OCT rétinien normal</font></b></h3><h4><b><font color=\"#f44263\">Diagnostics possibles</font></b></h4><p></p><ul><li>Trouble des milieux</li><li>Neuropathie optique bilatérale</li><li>Atteinte chiasmatique/rétrochiasmatique</li></ul><h4><font color=\"#f44263\">Si discordance, évoquer :</font></h4><ul><li>Atteinte dégénérative du cortex cérébral postérieur</li><li>Atteinte fonctionnelle</li></ul>",
      "conclusion": "<p><br></p><p><br></p>",
      "examsArray": [
        "Bjvy7th9M5QJxZgh9",
        "P4A3a8ph3LuBM9SHT",
        "ReiNopLbtx8X66Bet"
      ],
      "keywords":
          "Papilles normales ou atrophiques/excavées ET OCT rétinien normal"
    }
  ];

  return catItemsJson;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
