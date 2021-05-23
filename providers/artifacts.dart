import 'package:flutter/material.dart';

import '../models/artifact_overview.dart';

class Artifacts with ChangeNotifier {
  List<Artifact_Overview> _artifacts = [
    Artifact_Overview(
      id: 'a1',
      titleAR: 'تمثال 1',
      titleEN: 'statue',
      categoriesId: ['a2'],
      imageUrl: [
        'https://cdn.pixabay.com/photo/2019/05/08/18/57/sculpture-4189352__340.jpg'
      ],
      descriptionEN: ['lkjdsalk;djasldh'],
      descriptionAR: ['يشسيشسيشسي'],
    ),
    Artifact_Overview(
      id: 'a2',
      titleAR: 'تمثال 2',
      titleEN: 'statue 2',
      categoriesId: ['a1'],
      imageUrl: [
        'https://cdn.pixabay.com/photo/2015/06/14/16/48/sarcophagus-809103_960_720.jpg'
      ],
      descriptionEN: ['lkjdsalk;djasldh'],
      descriptionAR: ['تمثال  '],
    ),
    Artifact_Overview(
      id: 'a3',
      titleAR: 'تمثال 3',
      titleEN: 'statue 3',
      categoriesId: ['a1'],
      imageUrl: [
        'https://cdn.pixabay.com/photo/2019/03/07/12/50/egypt-4040121__340.jpg'
      ],
      descriptionEN: ['lkjdsalk;djasldh'],
      descriptionAR: ['تمثال  '],
    ),
    Artifact_Overview(
      id: 'a4',
      titleAR: 'تمثال 4',
      titleEN: 'statue4',
      categoriesId: ['a1'],
      imageUrl: [
        'https://cdn.pixabay.com/photo/2016/12/10/22/21/canopic-1898323__340.jpg'
      ],
      descriptionEN: ['lkjdsalk;djasldh'],
      descriptionAR: ['تمثال  '],
    ),
    Artifact_Overview(
      id: 'a5',
      titleAR: 'تمثال الاله اوزوريس',
      titleEN: 'Statuette of the god Osiris',
      categoriesId: ['a1'],
      imageUrl: ['http://collezioni.museoegizio.it/assets/ph-gallery.png'],
      descriptionEN: [''],
      descriptionAR: ['تمثال  '],
    ),
    Artifact_Overview(
      id: 'a6',
      titleAR: 'تمثال الاله اوزوريس',
      titleEN: 'Battlefield Palette',
      categoriesId: ['a1'],
      imageUrl: [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/British_Museum_Egypt_029.jpg/603px-British_Museum_Egypt_029.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/British_Museum_Egypt_028.jpg/599px-British_Museum_Egypt_028.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/e/e5/Hierakonpolis_Palette_fragment.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/0/04/Battlefield_palette.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Man_in_patterned_and_fringed_dress%2C_behind_naked_prisoner%2C_The_Battlefield_Palette_3100_BCE.jpg/700px-Man_in_patterned_and_fringed_dress%2C_behind_naked_prisoner%2C_The_Battlefield_Palette_3100_BCE.jpg'
      ],
      descriptionEN: [
        'The Battlefield Palette (also known as the Vultures Palette, the Giraffes Palette, or the Lion Palette)[1] may be the earliest battle scene representation of the dozen or more ceremonial or ornamental cosmetic palettes of ancient Egypt. Along with the others in this series of palettes, including the Narmer Palette, it includes some of the first representations of the figures, or glyphs, that became Egyptian hieroglyphs. Most notable on the Battlefield Palette is the standard (iat hieroglyph), and Man-prisoner hieroglyph, probably the forerunner that gave rise to the concept of the Nine bows (representation of foreign tribal enemies).',
        'The Battlefield Palette obverse contains the circular defined area for the mixing of a cosmetic substance. It contains the battlefield scene, and forerunners of hieroglyphs: prisoner, tribal-territory wooden standard, the horus-falcon and an ibis bird resting on standards. The fractured lower half of the prisoner on the obverse right may have a hieroglyph at his front (the rectangle, as rounded for land) with suspected papyrus plants attached on top.The reverse of the palette has dramatically stylized versions of a bird, two antelope-like mammals, a vertical palm-tree trunk, a partial top with fruits, and short horizontal palm fronds.',
        'An individual in robe appears fragmentarily behind naked prisoners.[4] He may be wearing a full-length dress made of leopard skin,[5] and is probably a representative of the victorious Pharaoh standing behind one of the naked prisoner (naked, but for a penile sheath).[4] The fragment in front of the prisoner may possibly be part of the ancient sign for "Libya", an early enemy of pre-Dynastic Egyptian kings.[6] The character would consist in the throwing stick on top of an oval, meaning "region", "place", "island", a toponym of Libya or Western Delta pronouced THnw, Tjehenw, as seen on the Libyan Palette.[7]',
      ],
      descriptionAR: ['تمثال  '],
    ),
    Artifact_Overview(
      id: 'a7',
      titleAR: '  ',
      titleEN: '',
      categoriesId: ['e1', 'm2'],
      imageUrl: [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Woman-E_11887-IMG_9547-gradient.jpg/800px-Woman-E_11887-IMG_9547-gradient.jpg'
      ],
      descriptionEN: [''],
      descriptionAR: [''],
    ),
    Artifact_Overview(
      id: 'a8',
      titleAR: '  ',
      titleEN: '',
      categoriesId: ['e1', 'm2'],
      imageUrl: [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Calendar_aswan.JPG/1024px-Calendar_aswan.JPG'
      ],
      descriptionEN: [''],
      descriptionAR: [''],
    ),
    Artifact_Overview(
      id: 'a9',
      titleAR: '  ',
      titleEN: '',
      categoriesId: ['e1', 'm2'],
      imageUrl: [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Chronological_evolution_of_Egyptian_prehistoric_pottery_styles%2C_from_Naqada_I_to_Naqada_III.jpg/800px-Chronological_evolution_of_Egyptian_prehistoric_pottery_styles%2C_from_Naqada_I_to_Naqada_III.jpg'
      ],
      descriptionEN: [''],
      descriptionAR: [''],
    ),
    Artifact_Overview(
      id: 'a10',
      titleAR: '  ',
      titleEN: '',
      categoriesId: ['e1', 'm2'],
      imageUrl: [
        'https://upload.wikimedia.org/wikipedia/commons/6/64/Egypte_louvre_300.jpg'
      ],
      descriptionEN: [''],
      descriptionAR: [''],
    ),
  ];

  List<Artifact_Overview> get artifacts {
    return [..._artifacts];
  }
}
