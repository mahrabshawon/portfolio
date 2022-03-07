import "package:flutter/material.dart";

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: PortfolioPage(),
));

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  PortfolioPageState createState() => PortfolioPageState();
}

class PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      body: Column(
        children: [
          Container(
            height: size.height / 1.9,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://avatars.githubusercontent.com/u/101059776?s=400&u=e9b1b70cc621a5311479a95152d2f29f7f3e41cb&v=4"
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 15,
                ),
                Container(
                  width: size.width / 1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height / 3,
                ),
                const Text(
                  "Mahrab Hossain Shawon",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          info(size),
          buttons(size),
          tiles("Location: Add Location"),
          tiles("Gender: Add Gender"),
          tiles("Profession: Add Profession"),
        ],
      ),
    );
  }

  Widget info(Size argSize) {
    return Container(
      height: argSize.height / 10,
      width: argSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            "Like\n10.5M",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Comment\n1.9M",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Share\n15.2M",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget buttons(Size argSize) {
    return Container(
      height: argSize.height / 10,
      width: argSize.width / 1.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            child: const Text("Post"),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(29, 29, 29, 1),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 42),
              textStyle: const TextStyle(fontSize: 20),
              side: const BorderSide(
                width: 2,
                color: Color.fromRGBO(255, 0, 102, 1),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text("Message"),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(255, 0, 102, 1),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 36),
              textStyle: const TextStyle(fontSize: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget tiles(String argTitle) {
    return SizedBox(
      height: 32,
      child: ListTile(
        title: Text(
          argTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(
          Icons.edit,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}