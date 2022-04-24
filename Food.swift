//
//  Food.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 23/04/22.
//

struct Food {
    var name: String
    var calories: Int // kkal
    var imageName: String = "skinny"
    var location: String = ""
    var description:  String = ""
}

class FoodList {
    
    static let morning = [
        Food(
            name: "Cooked Rice",
            calories: 230,
            // source: kabarfajar.com
            imageName: "cooked-rice",
            location: "National",
            description: "A regular food serving as base for any dishes."
        ),
        Food(
            name: "Lotek",
            calories: 480,
            // source: tabloidbintang.com
            imageName: "lotek",
            location: "Sundanese",
            description: "Vegetable-based served with peanut sauce that contains pecel and sweet soy sauce. This dishes tends to be sweet and normally served with kerupuk (shrimp crisp) and lontong (some form of rice cake). This dishes its quite healthy for daily consumptions due to its balanced ingredients."
        ),
        Food(
            name: "Uduk Rice",
            calories: 400,
            // source: kompas.com
            imageName: "uduk-rice",
            location: "Java Island",
            description: "Uduk Rice is an Indonesian style of steamed rice cooked in coconut milk. This rice is normally used to replace normal rice as a base for dishes with more taste."
        ),
        Food(
            name: "Soto",
            calories: 500,
            // source: merdeka.com
            imageName: "soto",
            location: "Various Local",
            description: "A traditional Indonesian soup mainly composed of broth, meat, vegetables, and added ingredients according to region speciality. Example region variants: Bandung, Betawi, Madura, Padang, and many more"
        ),
        Food(
            name: "Sate Maranggi",
            calories: 440,
            // source: suara.com
            imageName: "sate-maranggi",
            location: "Sundanese",
            description: "Satay that normally found at Purwakarta City, Maranggi itself means \"a keris maker master\". This satay available in 2 variants, beef or lamb. Normally served with sambal, grilled sticky rice, or nasi timbel. This food is also known for it high calories at around 40-50 kcal per stick."
        ),
        Food(
            name: "Batagor",
            calories: 300,
            // source: orami.co.id
            imageName: "batagor",
            location: "Sundanese",
            description: "A fried bakso and tofu mixed together a.k.a. (Bakso Tahu Goreng), this dishes also served with Peanut sauce that's normally spicy. Bakso is made with tenggiri (wahoo) fish meat tradionally, but it can also be made using other type of fish such as tuna, mackerel, or prawn. This food is also known for it high calories at around 50 kcal per piece."
        ),
        Food(
            name: "Steamed Brownies",
            calories: 260,
            // source: kompas.com
            imageName: "steamed-brownies",
            location: "Bandung, West Java",
            description: "A sweet steamed brownies, normally this what people bought when visiting Bandung City, but not the authentic traditional food you might expect. It also come with several variants. This food is also known for it high calories at around 130 kcal per slice."
        )
    ]
    
    static let afternoon = [
        Food(
            name: "Cooked Rice",
            calories: 230,
            // source: kabarfajar.com
            imageName: "cooked-rice",
            location: "National",
            description: "A regular food serving as base for any dishes."
        ),
        Food(
            name: "Gudeg",
            calories: 1000,
            // source: cookpad.com
            imageName: "gudeg",
            location: "Jogjakarta",
            description: "Gudeg is made from young unripe jack fruit that stewed for several hours along with palm sugar, coconut milk, and several other spices. Commonly served with sambal, egg, chicken, and rice. Without that, it could be considered as Vegetarian dishes"
        ),
        Food(
            name: "Rendang",
            calories: 350,
            // source: resepedia.com
            imageName: "rendang",
            location: "West Sumatra",
            description: "Rendang is a rich dish meat that has been slow cooked and braised in a seasoned coconut milk with herb and spice mixture, that produces dark brown, tender, caramelized, and rich of flavors. Traditionally served to honour guest at ceremonial events. This dishes is recognized as one of Indonesian intangible cultural heritage"
        ),
        Food(
            name: "Bika Ambon",
            calories: 240,
            // source: merdeka.com
            imageName: "bika-ambon",
            location: "Medan, North Sumatra",
            description: "Indonesia desert made from baked tapioca flour, eggs, sugar, yeast, and coconut milk. There are several other ingredient added e.g. Pandan and Banana. Known for its spongy texture yet moist and have unique texture."
        ),
        Food(
            name: "Rawon",
            calories: 680,
            // source: selerasa.com
            imageName: "rawon",
            location: "Central Java",
            description: "Rawon is a beef soup that uses black keluak nut as the main seasoning, which gives a dark color and nutty flavor to the soup. Normally served with rice, saltened egg, shrimp crisps, and sambal."
        ),
        Food(
            name: "Nasi Padang",
            calories: 650,
            // source: pergikuliner.com
            imageName: "nasi-padang",
            location: "Padang, West Sumatra",
            description: "Also commonly reffered as Padang Rice is a steamed rice with various pre-cooked dishes originating from Sumatra, that includes: boiled egg, rendang, sambal, various gulai, crispy beef, chicken, shrimp in chili, eggplant, fried catfish, cassava leaf, and many more."
        )
    ]
    
    static let evening = [
        Food(
            name: "Cooked Rice",
            calories: 230,
            // source: kabarfajar.com
            imageName: "cooked-rice",
            location: "National",
            description: "A regular food serving as base for any dishes."
        ),
        Food(
            name: "Fried Rice",
            calories: 450,
            // source: selerasa.com
            imageName: "fried-rice",
            location: "National",
            description: "Fried rice is as simple as stir-fried rice that usually mixed with various ingredients, but basically it's served as minimal as using eggs and vegetables. Some additional topping can be added like meat."
        ),
        Food(
            name: "Pempek",
            calories: 240,
            // source: resepedia.com
            imageName: "pempek",
            location: "Lampung, South Sumatra",
            description: "One of Indonesian Fishcake made from fish and tapioca flour. Normally served with rich sweet yet sour sauce called \"kuah cuka\", cucumber, and yellow noodles. There are several variation e.g. kapal selam, lenjer, etc. These variation will add extra ingredient to the dish or modify the way it's cooked or shaped."
        ),
        Food(
            name: "Serabi",
            calories: 320,
            // source: kompas.com
            imageName: "serabi",
            location: "West Java",
            description: "Indonesia pancake made from rice flour and coconut milk. Normally served with brown coconut syrup. Some adaptation add toppings like cheese and chocolate. There are another variation as a savoury version served with oncom as topping."
        ),
        Food(
            name: "Instant Noodle",
            calories: 370,
            // source: beautynesia.id
            imageName: "instant-noodle",
            location: "National",
            description: "Pre-cooked noodle dried in a package that comes with packaged seeasoning. There are many variation in the world but Indonesia known for its superiority in taste, especially a well known brand called Indomie."
        ),
        Food(
            name: "Woku Chicken",
            calories: 400,
            // source: cookpad.com
            imageName: "woku-chicken",
            location: "Manado, North Sulawesi",
            description: "Woku itself is a spice mixture consists of ground spices paste; red ginger, turmeric, candlenut and red chili pepper, mixed with chopped shallot, scallion, tomato, lemon or citrus leaf and turmeric leaf, lemon basil leaf and bruised lemongrass. This mixture has rich aroma and spicy taste. The mixture then rubbed into a chicken meat with lemon juice marinated for around 30 minutes. The marinated chicken then cooked in coconut oil."
        )
    ]
    
}


let foodExample = Food(
    name: "Sate Ayam",
    calories: 300,
    location: "Bandung, West Java",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin neque quis cum aliquam. Est eu in enim et sociis urna tortor ut. Feugiat lectus egestas tellus placerat tellus, id scelerisque fringilla ultrices. Blandit in cursus mi convallis elementum fames nisi sollicitudin."
)
