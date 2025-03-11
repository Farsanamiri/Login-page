import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AfterLogin extends StatefulWidget {
  const AfterLogin({super.key});

  @override
  State<AfterLogin> createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  bool isOpen = false;
  final PageController _controller = PageController();

  final List<String> jobTitles = [
    "Product Design",
    "Front end",
    "Visual Designer",
    "Voyager"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("After login", style: GoogleFonts.poppins()),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        // اسکرول فعال شد
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 245, 216, 216),
                      child: SizedBox(
                        height: 300,
                        width: 200,
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(height: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/image/1910.jpeg",
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Farsan amiri",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text("Profession"),
                    const SizedBox(height: 5),
                    const Text("Contractor",
                        style: TextStyle(color: Colors.red)),
                    const SizedBox(height: 20),
                    const Text("Contact"),
                    const SizedBox(height: 5),
                    const Text("+234 808 2344 4675",
                        style: TextStyle(color: Colors.red)),
                    const SizedBox(height: 20),
                    const Text("Location"),
                    const SizedBox(height: 5),
                    const Text("Logos", style: TextStyle(color: Colors.red)),
                    const SizedBox(height: 20),
                    const Text("Position"),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Switch(
                          value: isOpen,
                          onChanged: (value) {
                            setState(() {
                              isOpen = value;
                            });
                          },
                          activeColor: Colors.red,
                          activeTrackColor: Colors.brown,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.brown,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          isOpen ? "open" : "closed",
                          style: TextStyle(
                              color: isOpen ? Colors.red : Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Job done",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: PageView.builder(
                controller: _controller,
                itemCount: jobTitles.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: const Offset(0, 5),
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          jobTitles[index],
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            SmoothPageIndicator(
              controller: _controller,
              count: jobTitles.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.redAccent,
                dotColor: Colors.pinkAccent,
                dotHeight: 10,
                dotWidth: 10,
                expansionFactor: 2,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius:
                    BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Row(
                      children: [
                        SizedBox(width: 40,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("4.3", style: TextStyle(fontSize: 70),),
                            Text("Average rating")
                          ],
                        ),
                        SizedBox(width: 105,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("37", style: TextStyle(fontSize: 70),),
                            Text("Jobs completed")
                          ],
                        )
                      ],
                  ),
                  SizedBox(height: 60,),
                  Row(
                      children: [
                        SizedBox(width: 40,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("payrange", style: TextStyle(fontSize: 20),),
                            Text("150k-200k" , style: TextStyle(fontSize: 30),),
                            Text("(negotiable)" , style: TextStyle(fontSize: 20),)
                          ],
                        ),
                        SizedBox(width: 75,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("02", style: TextStyle(fontSize: 70),),
                            Text("ongoing")
                          ],
                        )
                      ],
                  ),
                  SizedBox(height: 60,),
                  Row(
                      children: [
                        SizedBox(width: 40,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Availability",style: TextStyle(fontSize: 20),),
                            Text("Excellent")
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Service",style: TextStyle(fontSize: 20)),
                            Text("Good")
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Quality",style: TextStyle(fontSize: 20)),
                            Text("Good")
                          ],
                        )
                      ],
                  ),
                ],
              )
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
