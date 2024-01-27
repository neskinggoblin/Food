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
];
