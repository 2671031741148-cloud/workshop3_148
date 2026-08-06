enum Foodpic { 
  menu1 (image: "assets/images/1.png"),
  menu2 (image: "assets/images/2.png"),
  menu3 (image: "assets/images/3.png"),
  menu4 (image: "assets/images/4.png"),
  menu5 (image: "assets/images/5.png"),
  menu6 (image: "assets/images/6.png"),
  menu7 (image: "assets/images/7.png"),
  menu8 (image: "assets/images/8.png"),
  menu9 (image: "assets/images/9.png"),
  menu10 (image: "assets/images/10.png"),
  menu11 (image: "assets/images/11.png"),
  menu12 (image: "assets/images/12.png");

  const Foodpic({required this.image}); 
  final String image; 
}

class FoodMenu {
  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic,
  });
  String name;
  String type;
  String component;
  int price;
  Foodpic foodpic;
}

List<FoodMenu> emp = [
  FoodMenu(
    name: "สุกี้ผักรวม",
    type: "ต้ม",
    component: "ไข่ไก่,เกี๊ยวกุ้ง,ปูอัด,เบคอน,ผักสต",
    price: 299,
    foodpic: Foodpic.menu1,
  ),
  FoodMenu(
    name: "สลัดผัก",
    type: "สุขภาพ",
    component: "แครอท,มะเขือเทศ,ผักรวม",
    price: 299,
    foodpic: Foodpic.menu2,
  ),
  FoodMenu(
    name: "สเต็กหมู",
    type: "สเต็ก",
    component: "สะโพกหมู 120 กรัม,เรดโอ๊ค,เคล",
    price: 299,
    foodpic: Foodpic.menu3,
  ),
  FoodMenu(
    name: "สเต็กเนื้อ",
    type: "สเต็ก",
    component: "สันคอวัว 120 กรัม,ไข่ดาว,เบคอน",
    price: 389,
    foodpic: Foodpic.menu4,
  ),
  FoodMenu(
    name: "แฮมเบอร์เกอร์",
    type: "ฟาสฟู้ด",
    component: "ชิสเบอร์เกอร์,หมูบดเบอร์เกอร์,ชีส",
    price: 189,
    foodpic: Foodpic.menu5,
  ),
  FoodMenu(
    name: "พิซซ่า",
    type: "ฟาสฟู้ด",
    component: "แป้งพิซซ่า,เบคอน,พริก",
    price: 139,
    foodpic: Foodpic.menu6,
  ),
  FoodMenu(
    name: "ก๋วยเตี๋ยวต้มยำ",
    type: "ก๋วยเตี๋ยว",
    component: "เส้นอุด้ง,ไข่ต้ม,ลูกชิ้น,หมูสไลด์",
    price: 88,
    foodpic: Foodpic.menu7,
  ),
];

// ==========================================
// เพิ่มข้อมูลพนักงาน / เพื่อน ต่อท้ายที่นี่
// ==========================================
class Staff {
  String name;
  String position;
  String image;

  Staff({
    required this.name,
    required this.position,
    required this.image,
  });
}

List<Staff> staffList = [
  Staff(
    name: "นายธามฟันเหยินดาบเขี้ยว",
    position: "เจ้าของร้านสุดลาบ",
    image: "assets/images/8.png",
  ),
  Staff(
    name: "ไอโอ็คพอร์ตแดง",
    position: "ผู้สร้างหนี้ไห้ร้าน",
    image: "assets/images/9.png",
  ),
  Staff(
    name: "กิต hub",
    position: "คู่แข่งเว้ปหนังดัง",
    image: "assets/images/10.png",
  ),
  Staff(
    name: "เฟรมลูกเจ้าของร้านโกจง",
    position: "ข้าวมันไก่ทอดและแตงโม",
    image: "assets/images/11.png",
  ),
  Staff(
    name: "ไอกัสลูกรักจารโอ๋",
    position: "นอนอ้วนเดินทีเดียวมีเรื่อง",
    image: "assets/images/12.png",
  ),
];