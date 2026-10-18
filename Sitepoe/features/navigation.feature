Feature: Navigation du site

    Scenario Outline: La page d'accueil liste les classes
        Given je suis sur la page d'accueil
        Then je vois le lien "Maraudeur"


    Scenario Outline: Cliquer sur une classe ouvre sa page
        Given je suis sur la page d'accueil
        When je clique sur le lien "<classe>"
        Then la page affichée est "<fichier>"
        And je vois le titre "<classe>"

        Examples:
            | classe        | fichier       |
            | Maraudeur     | Maraudeur.html|
            | Dueliste      | Dueliste.html |
            | Ombre         | Ombre.html    |
            | Ranger        | Ranger.html   |
            | Scion         | Scion.html    |
            | Sorciere      | Sorciere.html |
            | Templier      | Templier.html |

    Scenario Outline: Ouvrir et refermer une ascendance
        Given je suis sur la page "<fichier>"
        Then avis de "<ascendance>" est caché
        When je clique sur "<ascendance>"
        Then avis de "<ascendance>" est visible
        When je clique sur "<ascendance>"
        Then avis de "<ascendance>" est caché

        Examples:
            | ascendance    | fichier       |
            | Juggernaut    | Maraudeur.html|
            | Berserker     | Maraudeur.html|
            | Chieftain     | Maraudeur.html|
            | Slayer        | Dueliste.html |
            | Gladiator     | Dueliste.html |
            | Champion      | Dueliste.html |
            | Assassin      | Ombre.html    |
            | Saboteur      | Ombre.html    |
            | Trickster     | Ombre.html    |
            | Deadeye       | Ranger.html   |
            | Warden        | Ranger.html   |
            | Pathfinder    | Ranger.html   |
            | Ascendant     | Scion.html    |
            | Reliquarian   | Scion.html    |
            | Luminary      | Scion.html    |
            | Necromancer   | Sorciere.html |
            | Occultist     | Sorciere.html |
            | Elementalist  | Sorciere.html |
            | Inquisitor    | Templier.html |
            | Hierophant    | Templier.html |
            | Guardian      | Templier.html |