//
//  Model.swift
//  iOSFastlaneIntegration
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//
//  http://www.ign.com/articles/2015/11/24/ever-jedi-ever

import Foundation

struct Model {
    var id: Int?
    var name: String?
    var species: String?
    var trainedBy: String?
    var rank: String?
    var holocronBio: String?
}

extension Model {

    func getData() -> [Model] {
        return [
            Model(id: 1, name: "Qui-Gon Jinn", species: "Human", trainedBy: "Count Dooku", rank: "Jedi Master", holocronBio: "The Jedi who discovered Anakin Skywalker and determined that he was the Chosen One who would bring balance to the Force."),
            Model(id: 2, name: "Obi-Wan Kenobi", species: "Human", trainedBy: "Qui-Gon Jinn", rank: "Jedi Master", holocronBio: "The mentor to Anakin Skywalker and, years later, Anakin's son Luke. Served as a general in the Clone Wars before going into hiding as one of the only survivors of Order 66."),
            Model(id: 3, name: "Anakin Skywalker", species: "Human", trainedBy: "Obi-Wan Kenobi", rank: "Jedi Knight", holocronBio: "The boy immaculately conceived via midi-chlorians who grew up to become a great Jedi, only to be seduced by the Dark Side, assist in the decimation of the Order, and become the hated Sith Lord Darth Vader."),
            Model(id: 4, name: "Quinlan Vos", species: "Human/Kiffar", trainedBy: "Tholme", rank: "Jedi Master", holocronBio: "Renowned for his ability to read the memories of others and use them as a tracker. Often took on covert missions for the Jedi, including an (unsuccessful) attempt with Asajj Ventress to assassinate Count Dooku."),
            Model(id: 5, name: "Yoda", species: "Unknown", trainedBy: "Unknown", rank: "Grand Master", holocronBio: "The 900-year-old Jedi Master who led the Order in its final days and, decades later while in hiding on Dagobah, trained Luke Skywalker to carry on the traditions of the Jedi."),
            Model(id: 6, name: "Mace Windu", species: "Human", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "The most senior member of the Jedi Council, aside from Yoda, during the Clone Wars. In later years, Imperial propaganda claimed Mace Windu had been the leader of a “criminal gang” who caused the start of the wars."),
            Model(id: 7, name: "Ki-Adi-Mundi", species: "Cerean", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "A member of the Jedi Council and a general in the Clone Wars, Ki-Adi-Mundi was gunned down by his own Clone Troopers on the Outer Rim planet Mygeeto when Order 66 was put into effect."),
            Model(id: 8, name: "Plo Koon", species: "Kel Dor", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "Plo Koon first discovered the Force-sensitive child Ahsoka Tano, who would eventually become Anakin Skywalker’s Padawan. This Council member required a mask when in oxygen atmospheres due to his Kel Dor physiology."),
            Model(id: 9, name: "Saesee Tiin", species: "Iktotchi", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "A member of the Jedi Council, Saesee Tiin was among those slaughtered in a lightsaber battle with Palpatine when the Supreme Chancellor was revealed to be the Sith Lord Darth Sidious."),
            Model(id: 10, name: "Even Piell", species: "Lannik", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "Even Piell also held a seat on the Council at the time of the invasion of Naboo, though he became a prisoner of war during the Clone Wars. He was killed while attempting to escape."),
            Model(id: 11, name: "Oppo Rancisis", species: "Thisspiasian", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "A member of the serpentine species from the planet Thisspias, Oppo Rancisis served on the Jedi Council for years and became a general during the Clone Wars."),
            Model(id: 12, name: "Adi Gallia", species: "Tholothian", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "Adi Gallia was a Jedi Master who sat on the Council until she was killed by Darth Maul’s brother Savage Opress. Subsequently, her cousin Stass Allie took her place on the Council."),
            Model(id: 13, name: "Yarael Poof", species: "Quermian", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "The Quermian Jedi Council member Yarael Poof had two brains -- and an extra set of arms."),
            Model(id: 14, name: "Eeth Koth", species: "Zabrak", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "A member of the Council, Eeth Koth was captured by the cyborg General Grievous during the Clone Wars. But thanks to a secret message sent by Koth, the Jedi was saved during a rescue mission led by Obi-Wan Kenobi, Anakin Skywalker and Adi Gallia."),
            Model(id: 15, name: "Depa Billaba", species: "Chalactan", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "The former Padawan of Mace Windu, Depa Billaba eventually became a respected member of the Council herself. She died during Order 66 protecting her own Padawan, Caleb Dume, who would survive the Jedi Purge and change his name to Kanan Jarrus."),
            Model(id: 16, name: "Kit Fisto", species: "Nautolan", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "The amphibious Kit Fisto was a member of the Jedi Council who was able to fight the Clone Wars on worlds both dry and watery. He was killed by Darth Sidious on the night of the Jedi Purge."),
            Model(id: 17, name: "Luminara Unduli", species: "Mirialan", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "Although this Jedi Master avoided death when Order 66 was implemented, she was captured and executed by Imperial forces soon after that fateful night. Her remains were used for years afterwards to attract and trap other Jedi."),
            Model(id: 18, name: "Barriss Offee", species: "Mirialan", trainedBy: "Luminara Unduli", rank: "Padawan", holocronBio: "A Padawan who fought during the Clone Wars, Barriss Offee betrayed her fellow Jedi after she became convinced that the Order was on the wrong side of the conflict. She eventually coordinated the bombing of the Temple, causing the death of several Jedi."),
            Model(id: 19, name: "Shaak Ti", species: "Togruta", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "A Council member and general during the wars, Shaak Ti also oversaw the training of the Clone Troopers on Kamino for a time. Shaak Ti and Ahsoka Tano hail from the same homeworld of Shili."),
            Model(id: 20, name: "Coleman Trebor", species: "Vurk", trainedBy: "Unknown", rank: "Jedi Master", holocronBio: "This member of the Jedi Council was killed by Jango Fett during the Battle of Geonosis.")
        ]
    }
}
