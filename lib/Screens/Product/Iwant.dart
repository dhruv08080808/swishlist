import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import '../../API/Product/get_product_api.dart';
import '../../API/Product/getallproduct.dart';
import '../../API/sizesandweights/update_sizeandw_api.dart';
import '../../Constants/colors.dart';
import '../../widgets/buttons.dart';
import '../ProductDetails/ProductDetails.dart';
import 'Product.dart';
class Iwant extends StatefulWidget {
  const Iwant({super.key});
  @override
  State<Iwant> createState() => _IwantState();
}
class _IwantState extends State<Iwant> {


  var dio =Dio();
  int index=0;
  TextEditingController amazonlink=TextEditingController();
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
 List title = [
   'RESPAWN 110 Racing Style Gaming Chair, Reclining Ergonomic Chair with Footrest...',
   'Samsung Galaxy Tab A8 Android Tablet, 10.5” LCD Scre...',
   'RESPAWN 110 Racing Style Gaming Chair, Reclining Ergonomic Chair with Footrest...',
   'Samsung Galaxy Tab A8 Android Tablet, 10.5” LCD Scre...',
 ];
 List priceee = [
   '\$47.99',
   '\$1247.99',
   '\$47.99',
   '\$1247.99',
 ];
 List productsimg=[
   'assets/images/chair p.png',
   'assets/images/tv.png',
   'assets/images/chair p.png',
   'assets/images/tv.png',

 ];
 List time=[
   'Today',
   'Yesterday',
   'Today',
   'Yesterday'
 ];
getproductdetails(){
 var resp= getProductsApi();
 resp.then((value) {
   if(value['status']==true){
     setState(() {

     });
   }
 });
}
  final titleController = TextEditingController();
  final productLinkController = TextEditingController();
  final priceController = TextEditingController();
  final dateController = TextEditingController();
  final productTypeController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: kE5F3E2,
        appBar: AppBar(
          backgroundColor:kE5F3E2,
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
                                        child: GestureDetector(

                                            child: Text(imgg[i],style: robo_400_14_38)),
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
        body: Column(
            children: [
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text('I want',style:Ubun_700_24_29,),
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
                                                controller: amazonlink,
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
                          child: GestureDetector(
                            onTap: (){
                              getproductapi(type: productTypeController.text, name: titleController.text, link: , price: price, purchase_date: purchase_date, privacy: privacy, photo: photo)
                            },
                            child: Row(
                              children: [
                                Image.asset('assets/Icons/Plus.png',height: 20,width: 20,),
                                Text('Add',style: robo_500_14_29)
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),



              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: kFFFFFF,
                        borderRadius: BorderRadius.only(     topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),)

                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(height: 16),
                          Text('9 products',style: robo_500_12_70),
                          SizedBox(height: 12),
                          ListView.separated(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (context,i){
                                return Container(
                                    child: Row(children: [
                                      SizedBox(width: 8),
                                      Container(
                                          height: 86,
                                          width: 86,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: kE0E0E0),borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Image.asset(productsimg[i])),
                                      SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(title[i],style: robo_400_12_29,maxLines: 2,overflow: TextOverflow.ellipsis),
                                              SizedBox(height: 8),
                                              Text(priceee[i],style: robo_500_14_29,maxLines: 2,overflow: TextOverflow.ellipsis),
                                              SizedBox(height: 4),
                                              Row(
                                                children: [
                                                  Image.asset('assets/Icons/world icon.png'),
                                                  SizedBox(width: 6),
                                                  Image.asset('assets/Icons/dot.png'),
                                                  SizedBox(width: 6),
                                                  Text(time[i],style: robo_400_12_70),
                                                ],
                                              ),
                                            ]),
                                      ),


                                    ],)



                                );
                              }, separatorBuilder: (context,i){
                            return SizedBox(height: 16);

                          }, itemCount:title.length ),
                        ],),
                    )

                ),
              )


            ])
    );
  }
}
//----------------------------
class Product extends StatelessWidget {
  final String immmg;
  final String Tittle;
  final String pp;
  final String timeee;
  const Product({super.key, required this.immmg, required this.Tittle, required this.pp, required this.timeee});
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
                Expanded(child: Text(Tittle,style: robo_400_12_29,maxLines: 2,overflow: TextOverflow.ellipsis)),
                Text(pp,style: robo_500_14_29),
                Text(timeee,style: robo_400_12_70),
              ])])
    );
  }
}