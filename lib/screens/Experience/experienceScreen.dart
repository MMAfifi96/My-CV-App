import 'package:flutter/material.dart';

class CompanyModel {
  final String companyName;
  final String aboutCompany;
  final String myRole;
  final String companyLogo;

  CompanyModel({
    required this.companyLogo,
    required this.companyName,
    required this.aboutCompany,
    required this.myRole,
  });
}

class ExperienceScreen extends StatelessWidget {
  List<CompanyModel> companies = [
    CompanyModel(
      companyLogo:
          'https://www.albawaba.com/sites/default/files/styles/default/public/im_new/rimshami/Flowardlogo.png?itok=d89jziPG',
      companyName: 'Floward Co.',
      aboutCompany:
          'Founded in 2017, Floward is an online flowers and gifting company; we pride ourselves in creating a seamless experience for our customers and making sending flowers and gifts as enjoyable as receiving them.We source our flowers daily from the best growers and farmers around the world to create one of a kind stunning arrangements and plants that fit every occasion. We also partner with local and international brands to offer a wide range of gifts including chocolate, perfumes, cakes and more, coupled with our arrangements to create the perfect gift.Operating in 36 cities in nine countries across the MENA region and UK, we guarantee same-day delivery across the board through our own refrigerated fleet to ensure our arrangements arrive fresh to the customer.',
      myRole:
          'As part of the technology team, my responsibility for building intuitive, engaging, and progressive mobile apps features across multiple devices across platforms (iOS & Android) using flutter technology .',
    ),
    CompanyModel(
      companyLogo:
          'https://seeklogo.com/images/D/dominos-pizza-logo-3C4574E20F-seeklogo.com.png',
      companyName: 'Domino\'s Pizza',
      aboutCompany:
          'What’s behind one of the world’s top public restaurant brands? Fun and innovative franchise and corporate team members who are driven to win. Inspired to make each day better than the last, people may join for different reasons but what motivates them to stay are the passionate and talented colleagues who want Domino’s to be the best pizza company in every neighborhood.  And, we’re having fun doing it! Whether debuting technology firsts, like our voice-ordering iPhone® and Android™ apps, or creating delicious new menu items, we’re dedicated to our customers and focused on making great pizza and more in approximately 17,100 stores in 90+ markets around the world. A lot has happened since Domino’s was founded in 1960, but the best part is that the brand is just getting started.',
      myRole:
          'As part of the customer service team , My Responsibility is to respond to incoming calls from the customers to take their orders, answer questions and inquiries, troubleshoot problems, provide information, and handle complaints regarding the organization\'s products or services.',
    ),
    CompanyModel(
      companyLogo:
          'https://media.licdn.com/dms/image/C510BAQH0kXEgfzjFZA/company-logo_100_100/0/1535956603303?e=1686182400&v=beta&t=64L0wbIO4NOvfNDEao0iIF_JWAPhViFy9RRevxgpuFU',
      companyName: 'UniMoni',
      aboutCompany:
          'Unimoni is part of Finablr, a global platform for Payments and Foreign Exchange solutions. With deep regulatory know-how, technology expertise and industry leading partnerships, Finablr companies provide a broad array of tailored and trusted financial solutions for consumers and businesses. With a global reach spanning 170+ countries, Finablr companies processed over 150 million transactions in 2018, managing nearly USD 115 billion for customers.',
      myRole:
          'As part of the compliance team,  My Role was Anti-Money Laundering Executive.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 770,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 770,
                      child: ListView.separated(
                        itemBuilder: (context, index) =>
                            companyItem(companies[index], context),
                        separatorBuilder: (context, index) => Container(
                          color: Colors.grey[300],
                          height: 1,
                          width: double.infinity,
                        ),
                        itemCount: companies.length,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget companyItem(CompanyModel company, BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 50,
                child: Image(
                  image: NetworkImage(company.companyLogo),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  company.companyName,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 30.0,
              ),
            ],
          ),
          onTap: () {
            showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext builder) {
                return SizedBox(
                  height: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  company.companyName,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                'About The Company :',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                company.aboutCompany,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                'My Role :',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                company.myRole,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      );
}
