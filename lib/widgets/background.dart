import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class Background extends StatefulWidget {
  final int noOfTasks;
  final String name;
  final String image;
  const Background({
    super.key,
    required this.name,
    required this.noOfTasks,
    required this.image,
  });

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.8,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(190, 100),
                bottomRight: Radius.elliptical(
                  190,
                  100,
                ),
              ),
              color: Color(0xfff9ea85),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        FontAwesomeIcons.arrowLeft,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7.5,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/${widget.image}.png",
                            height: 68,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${widget.noOfTasks} Tasks",
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                widget.name,
                                style: const TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.62,
                )
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width - 75,
            top: MediaQuery.of(context).size.height - 80,
            child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 27,
                  backgroundColor: Color(0xff11d8b9),
                  child: Icon(
                    Icons.add,
                    size: 54,
                    color: Colors.white,
                  ),
                )),
          ),
        ]),
      ],
    );
  }
}
