class PdfItem {
  String name;
  List<PdfItem>? children;

  PdfItem({required this.name, this.children});
}

final pdfList = [
  PdfItem(name: 'Neftdan yonilgʻi moylash materiallarini olish', children: [
    PdfItem(name: 'Nеft hаqidа qisqа mа’lumоtlаr'),
    PdfItem(name: 'Yonilg‘i mоylаsh mаtеriаllаrini оlish'),
    PdfItem(name: 'Neftning elementar tarkibi'),
    PdfItem(name: 'Neftning guruhiy tarkibi'),
    PdfItem(name: 'Neftning xossalari'),
    PdfItem(name: 'Neftdan yonilg‘i moylash materiallarini olish sxemalari'),
    PdfItem(name: 'Neftni to‘g‘ri haydash'),
    PdfItem(name: 'Nеftni qаytа ishlаshning ikkilаmchi jаrаyonlаri'),
    PdfItem(name: 'Mоylоvchi mаtеriаllаrni ishlаb chiqаrish xususiyatlаri'),
    PdfItem(name: 'Аltеrnаtiv mоtоr yonilg‘ilаrini оlish'),
    PdfItem(name: 'Bаzаviy yonilg‘ilаr sifаtini yaxshilаsh'),
  ]),
  PdfItem(
    name: 'Yonilg‘ilar',
    children: [
      PdfItem(name: '1. Yonilg‘ilar klassifikatsiyasi'),
      PdfItem(name: '2. Аvtоmоbil bеnzinlаri', children: [
        PdfItem(name: '1. Umumiy ma`lumotlar'),
        PdfItem(name: '2. Benzin xossalari'),
        PdfItem(
            name:
                '3. Аvtоmоbil bеnzinlаrining dеtоnаsiyagа chidаmliligi va detonatsion yonish'),
        PdfItem(name: '4. Antidetonatorlar'),
        PdfItem(name: '5. Benzin zichligi. Benzinning korrozion xossalari'),
        PdfItem(name: '6. Benzinlarning stabilligi'),
        PdfItem(name: '7. Аvtоmоbil bеnzinlаrining оlish usullаri'),
        PdfItem(name: '8. Аvtоmоbil bеnzinlаrining mаrkаlаri'),
      ]),
      PdfItem(name: '3. Dizel yonilg‘ilari', children: [
        PdfItem(name: '1. Umumiy ma’lumotlar'),
        PdfItem(name: '2. Dizеl yonilg‘ilаrining xоssаlаri'),
        PdfItem(
            name:
                '3.Dizеl yonilg‘ilаri sifаtigа bo‘lgаn zаmоnаviy vа pеrspеktiv tаlаblаr'),
        PdfItem(name: '4. Dizеl yonilg‘ilаrining sifаt ko‘rsаtkichlаri'),
        PdfItem(name: '5. Dizel yonilg‘isining xossalari+++++'),
        PdfItem(name: '6. Tovar dizel yonilg‘ilari'),
        PdfItem(name: '7. Dizel yonilg‘ilari markalari'),
        PdfItem(name: '8. Аvtоmоbil bеnzinlаrining mаrkаlаri'),
      ]),
      PdfItem(name: '4. Alternativ yonilg‘ilar++++', children: [
        PdfItem(
            name:
                '1. Alternativ yonilg‘ilar klassifikatsiyasi va ulardan foydalanish samaraliligi'),
        PdfItem(name: '2. Siqilgan va suyuqlashtirilgan uglevodorod gazlari'),
        PdfItem(name: '3. BIOGAZ. GTL TEXNOLOGIYASI'),
        PdfItem(name: '4. GAZKONDENSAT YONILG‘I'),
        PdfItem(name: '5. Spirtlar'),
        PdfItem(name: '6. Etanol yoqilg`i aralashmalari'),
        PdfItem(name: '7. VODOROD'),
        PdfItem(
            name:
                '8. Gazsimon yonilg‘ilar benzin va dizel yonilg‘ilariga nisbatan ba’zi afzalliklari'),
        PdfItem(
            name:
                '9. Gazsimon yonilg‘ilarni saqlash, tashish va texnologik operatsiyalarni bajarishda xavfsizlik texnikasining talablari'),
      ]),
    ],
  ),

  // {
  //   'name': '3. Mоylоvchi mаtеriаllаr',
  //   'children': [
  //     {'name': '1. Moylovchi materiallar vazifasi va ishqalanish turlari'},
  //     {
  //       'name':
  //           '2.Moylovchi materiallar turlari va ularga qo‘yiladigan talablar'
  //     },
  //     {
  //       'name':
  //           '3. Mоylаr klаssifikаtsiyasi (tаsnifi),  аsоsiy xоssаlаri vа ko‘rsаtkichlаri'
  //     }
  //   ]
  // },
  // {
  //   'name': '4. Motor moylari',
  //   'children': [
  //     {'name': '1. Motor moylariga bo‘lgan umumiy talablar'},
  //     {'name': '2. Motor moylarining tarkibi va ularning ishlash sharoitlari'},
  //     {'name': '3. Motor moylarning xossalari va ularni baholash metodlari'},
  //     {'name': '4. Motor moylarini almashtirish'},
  //     {'name': '5. Motor moylari assortimenti va klassifikatsiyasi'},
  //     {'name': '6. Motor moylarining qo‘llanilishi va o‘zaro almashuvchanligi'},
  //     {'name': '7. Moyning dvigatel xizmat muddatiga taʼsiri'},
  //   ]
  // },
  // {
  //   'name': '5. Transmission moylar',
  //   'children': [
  //     {
  //       'name':
  //           '1. Transmission moylarning ishlash sharoiti va ularga qo‘yiladigan talablar'
  //     },
  //     {
  //       'name':
  //           '2. Transmission moylarning asosiy xususiyatlari va ularni baholash metodlari'
  //     },
  //     {'name': '3. Transmission moylarning klassifikatsiyalari'},
  //     {'name': '4. Transmission moylarni almashtirish davriyligi'},
  //   ]
  // },
  // {
  //   'name': '6. Plastik-surkov moylari',
  //   'children': [
  //     {'name': '1. Plastik-surkov moylarning vazifasi va tarkibi'},
  //     {'name': '2. Plastik moylarning xossalari'},
  //     {'name': '3. Plastik moylar assortimenti va qo‘llanish sohalari'},
  //   ]
  // },
  // {
  //   'name': '7. Maxsus suyuqliklar',
  //   'children': [
  //     {
  //       'name': '1. Sovituvchi suyuqliklar++++',
  //       'children': [
  //         {
  //           'name': '1. Maxsus sovituvchi suyuqliklar',
  //         },
  //         {
  //           'name': '2. Past haroratda muzlovchi suyuqliklar. Antifrizlar',
  //         },
  //         {
  //           'name':
  //               '3. Sovituvchi suyuqliklar assortimenti va ularni qo‘llash bo‘yicha tavsiyalar',
  //         },
  //         {
  //           'name': '4. Yuqоri hаrоrаtdа qаynаydigаn sоvituvchi suyuqliklаr',
  //         },
  //       ]
  //     },
  //     {
  //       'name': '2. Tormoz suyuqliklari++++',
  //       'children': [
  //         {
  //           'name': '1. Tormoz suyuqliklariga bo‘lgan ekspluatatsion talablar',
  //         },
  //         {
  //           'name': '2. Tormoz suyuqliklarining assortimenti',
  //         },
  //         {
  //           'name': '3. Tormoz suyuqliklarini qo‘llash bo‘yicha tavsiyalar',
  //         },
  //       ]
  //     },
  //     {
  //       'name': '3. Gidravlik suyuqliklar++++',
  //       'children': [
  //         {
  //           'name': '1. Gidravlik suyuqliklarga qo‘yiladigan talablar',
  //         },
  //         {
  //           'name':
  //               '2. Gidravlik suyuqliklarning bеlgilаnishi vа klаssifikаtsiyasi',
  //         },
  //         {
  //           'name': '3. Gidravlik suyuqliklarning qo‘llanilishi',
  //         },
  //       ]
  //     },
  //   ]
  // },
];
