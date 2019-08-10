import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('rogerjordan09'),
            leading: Icon(
              Icons.keyboard_arrow_left,
              size: 40.0,
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  icon: Icon(Icons.person_add),
                  onPressed: () {},
                ),
              )
            ],
            backgroundColor: Colors.black,
            bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Posts',
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '100',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Followers',
                            style: Theme.of(context)
                                .textTheme
                                .title
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '765',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Following',
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '265',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(100.0),
            ),
            expandedHeight: MediaQuery.of(context).size.height / 2,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: Image.network(
                  'http://kurtliuphotography.com/wp-content/uploads/2016/11/D4S_7475-002.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 160.0,
            delegate: SliverChildListDelegate(
              [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Roger Jordan'),
                        subtitle: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 16.0,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text('Netherlands, Amsterdam')
                          ],
                        ),
                        trailing: Icon(Icons.message),
                      ),
                      _buildLeftAlignedTile(
                        'https://i.ytimg.com/vi/Elz4-Wx-Yfg/maxresdefault.jpg',
                        '124',
                        '23',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 90.0,
            delegate: SliverChildListDelegate([
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    _buildRightAlignedTile(
                      'https://www.thomsonreuters.com/content/dam/ewp-m/images/image-library/en/photography/201138-118072186.jpeg.transform/hero-s/q90/image.jpg',
                      '43',
                      '87',
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    _buildLeftAlignedTile(
                      'https://bese.kaust.edu.sa/research/PublishingImages/Research-fields/microbiology.jpg?RenditionID=137',
                      '76',
                      '23',
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    _buildRightAlignedTile(
                      'https://compu-mail.com/app/uploads/2015/09/psychology-representation.jpg',
                      '65',
                      '123',
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    _buildLeftAlignedTile(
                      'https://guardian.ng/wp-content/uploads/2017/03/Naija-Mathematics-Olympiad.jpg',
                      '789',
                      '234',
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    _buildRightAlignedTile(
                      'https://cache.escapistmagazine.com/2019/07/hell.jpg',
                      '65',
                      '123',
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    _buildLeftAlignedTile(
                      'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAFAxr4.img?h=350&w=624&m=6&q=60&u=t&o=t&l=f&f=jpg&x=1100&y=570',
                      '789',
                      '234',
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    _buildRightAlignedTile(
                      'https://enil.eu/wp-content/uploads/2018/01/ILRN.png',
                      '65',
                      '123',
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    _buildLeftAlignedTile(
                      'https://3c1703fe8d.site.internapcdn.net/newman/csz/news/800/2018/europeslostf.jpg',
                      '789',
                      '234',
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }

  Row _buildRightAlignedTile(
      String imageUrl, String favorites, String messages) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              Text(favorites),
              Icon(
                Icons.whatshot,
                color: Colors.brown,
              ),
              Text(messages),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black45,
                    BlendMode.darken,
                  )),
              color: Colors.black45,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row _buildLeftAlignedTile(
      String imageUrl, String favorites, String messages) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black45,
                    BlendMode.darken,
                  )),
              color: Colors.black45,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              Text(favorites),
              Icon(
                Icons.whatshot,
                color: Colors.brown,
              ),
              Text(messages),
            ],
          ),
        ),
      ],
    );
  }
}
