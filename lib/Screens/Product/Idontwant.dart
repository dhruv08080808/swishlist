import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import '../../Constants/colors.dart';
import '../../widgets/buttons.dart';
class Idontwant extends StatefulWidget {
  const Idontwant({super.key});
  @override
  State<Idontwant> createState() => _IdontwantState();
}
class _IdontwantState extends State<Idontwant> {
  List imgg = [
    'Title',
    'Price',
    'Date Added',
    'Views',
  ];
  List Store = [
    'Amazon',
    'Etsy',

  ];
  List PriceList = [
    'Under ₹200',
    '₹200-₹500',
    '₹500-₹2000',
    '₹2000-₹5000',
    '₹5000 Above',
  ];

  List DateAdded = [
    'This year',
    'Today',
    'This week',
    'This month',
    'Previous Year',
  ];
  TextEditingController linkk=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kF3E2E2,
        appBar: AppBar(
          backgroundColor:kF3E2E2,
          title: Text('Products',style: robo_500_16_29),
          actions: [
            GestureDetector(
                onTap: (){
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  );
                  showModalBottomSheet( context: context,
                      builder: (context){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
                          child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment:  CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Search Filters',style: ubun_700_24_29),
                                        Text('Clear',style: robo_500_14_00,)
                                      ]),
                                  SizedBox(height: 28),
                                  Text('Sort by',style: robo_400_14_70),
                                  SizedBox(height: 8),
                                  SizedBox(
                                    height:36,
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context,i){
                                          return
                                            Container(
                                              height: 36,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: kD1D1D1),
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8
                                                ),
                                                child: Text(imgg[i],style: robo_400_14_38),
                                              ),
                                            );

                                        }, separatorBuilder: (context,i){
                                      return SizedBox(width: 8);
                                    }, itemCount: imgg.length),
                                  ),
                                  SizedBox(height: 20),
                                  Text('Store',style: robo_400_14_70),
                                  SizedBox(height: 8),
                                  SizedBox(
                                    height:36,
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context,i){
                                          return
                                            Container(
                                              height: 36,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: kD1D1D1),
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8
                                                ),
                                                child: Text(Store[i],style: robo_400_14_38),
                                              ),
                                            );

                                        }, separatorBuilder: (context,i){
                                      return SizedBox(width: 8);
                                    }, itemCount: Store.length),
                                  ),
                                  SizedBox(height: 20),
                                  Text('Price',style: robo_400_14_70),
                                  SizedBox(height: 8),
                                  SizedBox(
                                    height:36,
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context,i){
                                          return
                                            Container(
                                              height: 36,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: kD1D1D1),
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8
                                                ),
                                                child: Text(PriceList[i],style: robo_400_14_38),
                                              ),
                                            );

                                        }, separatorBuilder: (context,i){
                                      return SizedBox(width: 8);
                                    }, itemCount: PriceList.length),
                                  ),
                                  SizedBox(height: 20),
                                  Text('Date Added',style: robo_400_14_70),
                                  SizedBox(height: 8),
                                  SizedBox(
                                    height:36,
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context,i){
                                          return
                                            Container(
                                              height: 36,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: kD1D1D1),
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8
                                                ),
                                                child: Text(DateAdded[i],style: robo_400_14_38),
                                              ),
                                            );

                                        }, separatorBuilder: (context,i){
                                      return SizedBox(width: 8);
                                    }, itemCount: DateAdded.length),
                                  ),
                                ]),
                          ),
                        );
                      });
                },
                child: Image.asset('assets/images/3 line.png')),
            Image.asset('assets/Icons/3 dot in a line.png')
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child:       Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('I don’t want',style:Ubun_700_24_29,),
                      Container(
                        height: 44,
                        width: 86,
                        decoration: BoxDecoration(
                          color: kF7E641,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: GestureDetector(
                            onTap: (){
                              showModalBottomSheet<void>(
                                // context and builder are
                                // required properties in this widget
                                context: context,
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(0),
                                  ),
                                ),
                                clipBehavior: Clip.antiAlias,

                                builder: (BuildContext context) {
                                  // we set up a container inside which
                                  // we create center column and display text

                                  // Returning SizedBox instead of a Container
                                  return SingleChildScrollView(
                                    child: Column(
                                      children: [

                                        Container(
                                          height: 272,
                                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
                                          decoration: BoxDecoration(

                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Enter Link URL',style: ubun_700_24_29),
                                              SizedBox(height: 8),
                                              Text('Paste an amazon or etsy URL link to add a wanted product.',style: robo_400_12_70),
                                              SizedBox(height: 28),
                                              Container(
                                                height: 52,
                                                decoration: BoxDecoration(
                                                    color: kEDEDF1,
                                                    borderRadius: BorderRadius.circular(8)
                                                ),
                                                child:TextFormField(
                                                  controller: linkk,
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:'Amazon or Etsy link',
                                                    hintStyle:robo_400_14_70,
                                                    contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),

                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 16),
                                              MainButton(height: 52, width: 96, title: 'Add', txtstyle: robo_500_14_B5, onTap: () {  }, color: kFCF5B6),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset('assets/Icons/Plus.png',height: 20,width: 20,),
                                Text('Add',style: robo_500_14_29)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    height: 1000,
                    decoration: BoxDecoration(
                      color: kFFFFFF,
                      borderRadius: BorderRadius.circular(24),

                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 36),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('9 products',style: robo_500_12_70),
                              SizedBox(height: 12),
                              Product(immmg: 'assets/images/chair p.png', Tittle:'RESPAWN 110 Racing Style Gaming Chair,\nReclining Ergonomic Chair with Footrest...', pp: '\$47.99', timeee: 'Today', icconn: 'assets/Icons/world icon.png',),
                              SizedBox(height: 16),
                              Product(immmg: 'assets/images/tv.png', Tittle:'Samsung Galaxy Tab A8 Android Tablet,\n10.5” LCD Scre...', pp: '\$1247.99', timeee: 'Yesterday', icconn: 'assets/Icons/profile icon.png',),
                              SizedBox(height: 16),
                              Product(immmg: 'assets/images/chair p.png', Tittle:'RESPAWN 110 Racing Style Gaming Chair,\nReclining Ergonomic Chair with Footrest...', pp: '\$47.99', timeee: 'Today', icconn: 'assets/Icons/world icon.png',),
                              SizedBox(height: 16),
                              Product(immmg: 'assets/images/tv.png', Tittle:'Samsung Galaxy Tab A8 Android Tablet,\n10.5” LCD Scre...', pp: '\$1247.99', timeee: 'Yesterday', icconn: 'assets/Icons/profile icon.png',),
                              SizedBox(height: 16),
                              Product(immmg: 'assets/images/chair p.png', Tittle:'RESPAWN 110 Racing Style Gaming Chair,\nReclining Ergonomic Chair with Footrest...', pp: '\$47.99', timeee: 'Today', icconn: 'assets/Icons/world icon.png',),
                            ])))]),
        )
    );
  }
}
//----------------------------
class Product extends StatelessWidget {
  final String immmg;
  final String Tittle;
  final String pp;
  final String timeee;
  final String icconn;
  const Product({super.key, required this.immmg, required this.Tittle, required this.pp, required this.timeee, required this.icconn});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 86,
        child: Row(children: [
          Container(
              height: 86,
              width: 86,
              decoration: BoxDecoration(
                border: Border.all(color: kE0E0E0),borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(immmg)),
          SizedBox(width: 8),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(Tittle,style: robo_400_12_29)),
                Text(pp,style: robo_500_14_29),
                Row(
                  children: [
                    Image.asset(icconn),
                    SizedBox(width: 6),
                    Image.asset('assets/Icons/dot.png'),
                    SizedBox(width: 6),
                    Text(timeee,style: robo_400_12_70),
                  ],
                ),
              ])])
    );
  }
}
//assets/Icons/world icon.png

