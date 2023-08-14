import 'package:flutter/material.dart';
import 'package:gpay_app/more_button.dart';
import 'package:gpay_app/more_options.dart';
import 'package:gpay_app/profile_widget.dart';
import 'package:gpay_app/topic.dart';
import 'circular_button.dart';
import 'less_button.dart';
import 'shortcut_widget.dart';
import 'package:gpay_app/promotions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showThirdRow = false;
  bool more = true;
  bool less = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                    ),
                    child: const Image(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white54),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.search,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                              const Text(
                                "Pay by name or phone number",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black38,
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white54),
                          child: IconButton(
                            icon: const Icon(
                              Icons.person,
                              size: 20,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 100,
                      bottom: 20,
                      child: Column(
                        children: [
                          const SizedBox(
                              width: 160,
                              height: 40,
                              child: Text(
                                "Use RuPay credit card for all your QR payments",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              )),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the desired radius
                                ),
                              ),
                            ),
                            child: const Text("Add card now >"),
                          ),
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.qr_code_scanner,
                                size: 33,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            const Text("Scan any"),
                            const Text("QR code"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.contact_page_rounded,
                                size: 33,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            const Text("Pay"),
                            const Text("contacts"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.send_to_mobile,
                                size: 33,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            const Text("Pay phone"),
                            const Text("number"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.account_balance,
                                size: 33,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            const Text("Bank"),
                            const Text("transfer"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.format_list_numbered_outlined,
                                size: 33,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            const Text("Pay UPI ID"),
                            const Text("or number"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.person,
                                size: 33,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            const Text("self"),
                            const Text("transfer"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.payment_rounded,
                                size: 33,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            const Text("Pay"),
                            const Text("bills"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.mobile_friendly_outlined,
                                size: 33,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            const Text("Mobile"),
                            const Text("recharge"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 30,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("UPI ID: mohana2002@oktmbbank"),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.copy,
                          size: 15,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TopicWidget(message: "People"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        ProfileWidget(
                          name: "Jeyaram",
                          firstLetter: "J",
                          color: Colors.blue,
                        ),
                        ProfileWidget(
                          name: "Mohanapriya",
                          firstLetter: "M",
                          color: Colors.red,
                        ),
                        ProfileWidget(
                          name: "Surrya",
                          firstLetter: "S",
                          color: Colors.green,
                        ),
                        ProfileWidget(
                          name: "Tara",
                          firstLetter: "T",
                          color: Colors.purple,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      const ProfileWidget(
                        name: "Prakash",
                        firstLetter: "P",
                        color: Colors.lightBlueAccent,
                      ),

                      const ProfileWidget(
                        name: "Shiva",
                        firstLetter: "S",
                        color: Colors.orange,
                      ),

                      const ProfileWidget(
                        name: "Karthikeyan",
                        firstLetter: "K",
                        color: Colors.black,
                      ),
                      // Visibility(
                      //   visible: showThirdRow,
                      //   child: ProfileWidget(
                      //     name: "John",
                      //     firstLetter: "J",
                      //     color: Colors.green,
                      //   ),
                      // ),

                      Visibility(
                        visible: more,
                        child: MoreButton(
                          onPressed: () {
                            setState(() {
                              showThirdRow = !showThirdRow;
                              more = !more;
                            });
                          },
                        ),
                      ),

                      Visibility(
                        visible: !more,
                        child: const ProfileWidget(
                          name: "John",
                          firstLetter: "J",
                          color: Colors.green,
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: showThirdRow,
                      child: Row(
                        children: [
                          const ProfileWidget(
                              name: "Shalini",
                              firstLetter: "S",
                              color: Colors.indigo),

                          const ProfileWidget(
                            name: "Gowtham",
                            firstLetter: "G",
                            color: Colors.blue,
                          ),
                          // ProfileWidget(
                          //   name: "Rihana",
                          //   firstLetter: "R",
                          //   color: Colors.pinkAccent,
                          // ),
                          Visibility(
                            visible: !less,
                            child: LessButton(
                              onPressed: () {
                                setState(() {
                                  showThirdRow = !showThirdRow;
                                  more = !more;
                                });
                                // Toggle the visibility of the third row
                              },
                            ),
                          ),

                          // ProfileWidget(
                          //   name: "Priya",
                          //   firstLetter: "P",
                          //   color: Colors.orangeAccent,
                          // ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TopicWidget(message: "Businesses"),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    height: 35,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue.shade100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                        Text(
                          "Explore",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ProfileWidget(
                    name: "Vodafone",
                    firstLetter: "V",
                    color: Colors.red,
                  ),
                  ProfileWidget(
                    name: "Jio Prepaid",
                    firstLetter: "J",
                    color: Colors.indigo,
                  ),
                  ProfileWidget(
                    name: "LIC",
                    firstLetter: "L",
                    color: Colors.deepOrangeAccent,
                  ),
                  ProfileWidget(
                    name: "Vodafone",
                    firstLetter: "V",
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Try adding these",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MoreOptions(
                    tagName: 'Mobile Recharge',
                    icon: Icons.phonelink_setup_rounded,
                  ),
                  MoreOptions(
                    tagName: 'DTH / Cable TV',
                    icon: Icons.tv,
                  ),
                  MoreOptions(
                    tagName: 'Electricity',
                    icon: Icons.lightbulb_outline,
                  ),
                  MoreOptions(
                    tagName: 'FASTag Recharge',
                    icon: Icons.car_crash_outlined,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Center(child: CircularButton(name: 'See all')),
              ),
              const SizedBox(
                height: 25,
              ),
              const TopicWidget(message: "Promotions"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Promotion(tagName: "Rewards", image: "rewards"),
                  Promotion(tagName: "Offers", image: "offers"),
                  Promotion(tagName: "Referrals", image: "referrals"),
                  Promotion(tagName: "Indi-Home", image: "home"),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const ShortCut(
                  tagName: "Check your CIBIL score for free",
                  icon: Icons.electric_meter_outlined),
              const SizedBox(
                height: 25,
              ),
              const ShortCut(
                  tagName: "Show transaction history", icon: Icons.history),
              const SizedBox(
                height: 25,
              ),
              const ShortCut(
                  tagName: "Check bank balance", icon: Icons.account_balance),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 280,
                color: Colors.blue.shade50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Invite friends to get ₹200",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Invite friends to Google Play and get ₹201 when your friend sends their first payment. They get ₹21!",
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Copy your code",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          const Text(
                            "k56au0r",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.copy,
                            size: 20,
                            color: Colors.grey.shade700,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CircularButton(name: "Invite")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: const [
                    Text(
                      "Showing business based on your location -  ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Learn more",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
