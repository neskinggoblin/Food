class Recipe {
  final String title;
  final String description;
  final String imageUrl;
  final List<Ingredient> ingredients;
  final List<Process> process;

  Recipe({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.process,
  });
}

class Process {
  final String name;
  Process({
    required this.name,
  });
}

class Ingredient {
  final String name;
  final String quantity;

  Ingredient({
    required this.name,
    required this.quantity,
  });
}

// Dummy data for testing
// Dummy data for testing
List<Recipe> recipes = [
  Recipe(
      title: 'ไข่เจียวโบราณ',
      description: 'ไข่เจียวหอมๆสูตรโบราณสไตล์ เชฟเนส',
      imageUrl:
          'https://s359.kapook.com/pagebuilder/9b3c0af7-aa5d-44ca-9254-8e6e17c5671c.jpg',
      ingredients: [
        Ingredient(name: 'ไข่', quantity: '2 ฟอง'),
        Ingredient(name: 'กุ้ง', quantity: '200 กรัม'),
        Ingredient(name: 'ผงชูรส', quantity: '1 ช้อนโต๊ะ'),
        Ingredient(name: 'พริกไทย', quantity: '1/2 ช้อนโต๊ะ'),
        Ingredient(name: 'น้ำตาล', quantity: '1 ช้อนโต๊ะ'),
      ],
      process: [
        Process(
            name:
                '1.ตีไข่ : ตอกไข่ลงไปในถ้วยที่เตรียมไว้ ใส่น้ำปลา ซอสหอยนางรม ตีให้เข้ากัน'),
        Process(
            name:
                '2.ทอดไข่ : ตั้งกระทะไฟกลาง เทน้ำมันพืชลงไป รอจนน้ำมันเดือด เทไข่ที่ปรุงไว้ลงไปผ่านกระชอน ทอดจนเหลืองกรอบ'),
        Process(
            name:
                '3.จัดเสิร์ฟ : ตักใส่จานที่เตรียมไว้ โรยต้นหอมซอย พร้อมเสิร์ฟ')
      ]),
  Recipe(
      title: 'กระเพราหมูกรอบ',
      description: 'กระเพราหมูกรอบ สูตรลับหลังมอ กินเเล้วซี้ดเเซ่บ',
      imageUrl:
          'https://i.pinimg.com/originals/6f/9d/13/6f9d133ee92c028963ecac4edea4dd50.jpg',
      ingredients: [
        Ingredient(name: 'ข้าวสวย', quantity: '1 ถ้วย'),
        Ingredient(name: 'หมูกรอบหั่นชิ้น', quantity: 'ตามชอบ'),
        Ingredient(name: 'กระเทียมไทย', quantity: '10 กลีบ'),
        Ingredient(name: 'พริกแดงจินดา ', quantity: '4 เม็ด'),
        Ingredient(name: 'พริกชี้ฟ้าสีแดงหั่นเฉียง', quantity: '1 เม็ด'),
        Ingredient(name: 'ซอสปรุงรส', quantity: '2 ช้อนโต๊ะ'),
        Ingredient(name: 'ใซีอิ๊วดำ', quantity: '1 ช้อนโต๊ะ'),
        Ingredient(name: 'น้ำปลา ', quantity: '2 ช้อนโต๊ะ'),
        Ingredient(name: 'น้ำตาลทราย ', quantity: '2 ช้อนโต๊ะ'),
        Ingredient(name: 'น้ำเปล่า', quantity: '2 ช้อนโต๊ะ'),
      ],
      process: [
        Process(
            name:
                '1.เตรียมครกและสาก หั่นกระเทียมไทย และ พริกแดงจินดา ใส่ลงไป แล้วตำให้แหลก'),
        Process(
            name:
                '2.ตั้งกระทะ ใส่น้ำมัน นำกระเทียมและพริกไทยใส่ลงไปแล้วผัดให้มีกลิ่นหอม'),
        Process(
            name:
                '3.ใส่หมูกรอบ แล้วปรุงรสด้วย ซอสปรุงรส ซีอิ๊วดำ น้ำปลา น้ำตาลทราย น้ำเปล่า ผัดให้ส่วนผสมเข้ากัน'),
        Process(
            name:
                '4.ใส่ใบกะเพรา ตามด้วย พริกชี้ฟ้าหั่นเฉียงลงไป ผัดคลุกเคล้าให้เข้ากัน'),
        Process(name: '5.ตักเสิร์ฟใส่จาน เป็นอันเสร็จ')
      ]),
  Recipe(
    title: 'ข้าวผัดปู',
    description: 'ข้าวผัดปู รสเผ็ด หอม อร่อยมาก',
    imageUrl:
        'https://1.bp.blogspot.com/-NdoJYTuo_Mk/VvpFW-5nivI/AAAAAAAAAmw/II-_Rit8raI69RkcirphdlxdwtH61yw0Q/s1600/%25E0%25B8%2582%25E0%25B9%2589%25E0%25B8%25B2%25E0%25B8%25A7%25E0%25B8%259C%25E0%25B8%25B1%25E0%25B8%2594%25E0%25B8%259B%25E0%25B8%25B9.png',
    ingredients: [
      Ingredient(name: 'ข้าวสวย', quantity: '2 ถ้วย'),
      Ingredient(name: 'ปูอัด', quantity: '200 กรัม'),
      Ingredient(name: 'กระเทียมสับ', quantity: '2 ช้อนโต๊ะ'),
      Ingredient(name: 'พริกขี้หนูสับ', quantity: '1 ช้อนโต๊ะ'),
      Ingredient(name: 'ซอสหอยนางรม', quantity: '1 ช้อนโต๊ะ'),
      Ingredient(name: 'น้ำมันหอย', quantity: '1 ช้อนโต๊ะ'),
      Ingredient(name: 'น้ำตาล', quantity: '1 ช้อนโต๊ะ'),
    ],
    process: [
      Process(name: '1. ล้างข้าวสวยให้สะอาด แล้วนำไปต้มสุก'),
      Process(name: '2. ตั้งกระทะใส่น้ำมันรอให้ร้อน'),
      Process(name: '3. ใส่กระเทียมสับและพริกขี้หนูสับลงไปผัด'),
      Process(
          name:
              '4. เมื่อหอมก็ใส่ปูอัดลงไปผัดพร้อมๆ กับซอสหอยนางรม, น้ำมันหอย, และ น้ำตาล'),
      Process(name: '5. ใส่ข้าวสวยที่ต้มสุกลงไปผัดให้เข้ากัน'),
      Process(name: '6. รับประทานคู่กับผักต่างๆ'),
    ],
  ),
  Recipe(
    title: 'ส้มตำไทย',
    description: 'ส้มตำไทย รสเปรี้ยว สดชื่น',
    imageUrl:
        'https://s359.kapook.com/pagebuilder/868b7d1b-32fe-4cf7-852b-777427ca6dae.jpg',
    ingredients: [
      Ingredient(name: 'มะม่วงสุก', quantity: '1 ลูก'),
      Ingredient(name: 'ถั่วฝักยาว', quantity: '50 กรัม'),
      Ingredient(name: 'มะนาว', quantity: '2 ลูก'),
      Ingredient(name: 'กระเทียม', quantity: '3 กลีบ'),
      Ingredient(name: 'น้ำปลา', quantity: '2 ช้อนโต๊ะ'),
      Ingredient(name: 'น้ำตาล', quantity: '1 ช้อนโต๊ะ'),
      Ingredient(name: 'พริกขี้หนู', quantity: 'ตามชอบ'),
    ],
    process: [
      Process(name: '1. ตำมะม่วงสุกให้ละเอียด'),
      Process(name: '2. ตำถั่วฝักยาวให้ละเอียด'),
      Process(name: '3. ตำมะนาว'),
      Process(name: '4. ตำกระเทียม'),
      Process(name: '5. ใส่มะม่วง, ถั่วฝักยาว, มะนาว, กระเทียมลงในครก'),
      Process(name: '6. เติมน้ำปลา, น้ำตาล, และ พริกขี้หนูลงไป คนให้เข้ากัน'),
      Process(name: '7. รับประทานคู่กับผักสด'),
    ],
  ),
  Recipe(
    title: 'ต้มยำกุ้ง',
    description: 'ต้มยำกุ้ง รสเปรี้ยว หอม อร่อยมาก',
    imageUrl:
        'https://esanbanna.com/wp-content/uploads/2022/12/%E0%B8%95%E0%B9%89%E0%B8%99%E0%B8%A2%E0%B8%B3%E0%B8%81%E0%B8%B8%E0%B9%89%E0%B8%87.jpg',
    ingredients: [
      Ingredient(name: 'กุ้ง', quantity: '300 กรัม'),
      Ingredient(name: 'ตะไคร้', quantity: '2 ต้น'),
      Ingredient(name: 'ข่า', quantity: '3 แว่น'),
      Ingredient(name: 'หอมแดง', quantity: '1 หัว'),
      Ingredient(name: 'มะนาว', quantity: '3 ลูก'),
      Ingredient(name: 'น้ำปลา', quantity: '3 ช้อนโต๊ะ'),
      Ingredient(name: 'น้ำตาล', quantity: '1 ช้อนโต๊ะ'),
      Ingredient(name: 'กะปิ', quantity: '1 ช้อนชา'),
    ],
    process: [
      Process(name: '1. นำตะไคร้, ข่า, และ หอมแดงมาซอยละเอียด'),
      Process(name: '2. ต้มน้ำในหม้อ'),
      Process(name: '3. ใส่ตะไคร้, ข่า, และ หอมแดงที่ซอยลงไปในน้ำ'),
      Process(name: '4. เมื่อน้ำเดือดใส่กุ้งลงไป'),
      Process(name: '5. เมื่อกุ้งสุกใส่มะนาว, น้ำปลา, น้ำตาล, และ กะปิลงไป'),
      Process(name: '6. รับประทานร้อนๆ'),
    ],
  ),
  Recipe(
    title: 'ผัดไทย',
    description: 'ผัดไทย อาหารไทยแบบคลาสสิก',
    imageUrl:
        'https://s.isanook.com/wo/0/ud/37/185369/food.jpg?ip/crop/w670h402/q80/jpg',
    ingredients: [
      Ingredient(name: 'ก๋วยเตี๋ยวเส้นจืด', quantity: '200 กรัม'),
      Ingredient(name: 'กุ้ง', quantity: '100 กรัม'),
      Ingredient(name: 'ไข่', quantity: '1 ฟอง'),
      Ingredient(name: 'ถั่วงอก', quantity: '50 กรัม'),
      Ingredient(name: 'น้ำตาล', quantity: '1 ช้อนชา'),
      Ingredient(name: 'น้ำปลา', quantity: '2 ช้อนโต๊ะ'),
      Ingredient(name: 'มะนาว', quantity: '1 ลูก'),
      Ingredient(name: 'กระเทียมสับ', quantity: '1 ช้อนโต๊ะ'),
    ],
    process: [
      Process(name: '1. ต้มก๋วยเตี๋ยวเส้นจืดในน้ำเดือด'),
      Process(name: '2. ตั้งกระทะใส่น้ำมันรอให้ร้อน'),
      Process(name: '3. ใส่กระเทียมสับลงไปผัด'),
      Process(name: '4. ใส่กุ้งลงไปผัดจนสุก'),
      Process(name: '5. ใส่ไข่ลงไปผัดให้เข้ากัน'),
      Process(name: '6. เติมก๋วยเตี๋ยวที่ต้มไว้ลงไปผัด'),
      Process(name: '7. ใส่ถั่วงอก, น้ำตาล, น้ำปลา, และ มะนาวลงไปผัด'),
      Process(name: '8. รับประทานร้อนๆ'),
    ],
  ),
  Recipe(
    title: 'แกงเขียวหวานไก่',
    description: 'แกงเขียวหวานไก่ รสเข้มข้น หอม อร่อย',
    imageUrl:
        'https://d.line-scdn.net/lcp-prod-photo/20200428_142/1588070173205GCYET_JPEG/F726EVVP3VCPJYPT19CDEY8CD4DJ2S.jpg',
    ingredients: [
      Ingredient(name: 'เนื้อไก่', quantity: '300 กรัม'),
      Ingredient(name: 'ใบมะกรูด', quantity: '5 ใบ'),
      Ingredient(name: 'พริกชี้ฟ้าแดง', quantity: '10 เม็ด'),
      Ingredient(name: 'มะเขือเปราะ', quantity: '5 ลูก'),
      Ingredient(name: 'น้ำมะขามเปียก', quantity: '3 ช้อนโต๊ะ'),
      Ingredient(name: 'น้ำตาลทราย', quantity: '1 ช้อนโต๊ะ'),
      Ingredient(name: 'น้ำปลา', quantity: '2 ช้อนโต๊ะ'),
      Ingredient(name: 'กะทิ', quantity: '1 ถ้วย'),
    ],
    process: [
      Process(name: '1. หั่นเนื้อไก่เป็นชิ้นเล็กๆ'),
      Process(name: '2. ตั้งหม้อใส่น้ำเล็กน้อยรอให้เดือด'),
      Process(name: '3. นำเนื้อไก่ลงไปนึ่งในน้ำเดือดจนสุก'),
      Process(name: '4. ตั้งกระทะใส่กะทิรอให้เดือด'),
      Process(
          name:
              '5. ใส่พริกชี้ฟ้าแดง, มะเขือเปราะ, น้ำมะขามเปียก, น้ำตาลทราย, และ น้ำปลา'),
      Process(name: '6. ใส่เนื้อไก่ที่นึ่งสุกลงไป'),
      Process(name: '7. ใส่ใบมะกรูดลงไป คนให้เข้ากัน'),
      Process(name: '8. รับประทานร้อนๆ'),
    ],
  ),
  Recipe(
    title: 'ปลาร้าทรงเครื่อง',
    description: 'ปลาร้าทรงเครื่อง รสเผ็ดนุ่ม อร่อยมาก',
    imageUrl: 'https://i.ytimg.com/vi/SK-8kCn8JWE/hqdefault.jpg',
    ingredients: [
      Ingredient(name: 'ปลาร้า', quantity: '200 กรัม'),
      Ingredient(name: 'พริกขี้หนู', quantity: '10 เม็ด'),
      Ingredient(name: 'กระเทียม', quantity: '5 กลีบ'),
      Ingredient(name: 'หอมแดง', quantity: '2 หัว'),
      Ingredient(name: 'ข่า', quantity: '1 ต้น'),
      Ingredient(name: 'ใบมะกรูด', quantity: '3 ใบ'),
      Ingredient(name: 'น้ำตาล', quantity: '1 ช้อนโต๊ะ'),
      Ingredient(name: 'น้ำปลาร้า', quantity: '3 ช้อนโต๊ะ'),
    ],
    process: [
      Process(name: '1. ล้างปลาร้าให้สะอาด'),
      Process(name: '2. บีบหัวกระเทียม หั่นพริกขี้หนู, หอมแดง, ข่า'),
      Process(name: '3. นำปลาร้า, พริกขี้หนู, กระเทียม, หอมแดง, ข่าลงครก'),
      Process(name: '4. ใส่ใบมะกรูด คนให้เข้ากัน'),
      Process(name: '5. ตั้งกระทะใส่น้ำตาล ความตั้งแต่น้อยไปหาปานกลาง'),
      Process(name: '6. เทปลาร้าลงไป คนให้เข้ากัน'),
      Process(name: '7. เติมน้ำปลาร้า คนให้เข้ากันอีกครั้ง'),
      Process(name: '8. รับประทานร้อนๆ'),
    ],
  ),
];
