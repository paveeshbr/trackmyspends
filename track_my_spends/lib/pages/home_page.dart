import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<int> spends = [200, 59, 458, 456];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(187, 201, 209, 1),
        child: CustomScrollView(
          slivers: [
            // Add the app bar to the CustomScrollView.
            SliverAppBar(
              backgroundColor: Theme.of(context)
                  .scaffoldBackgroundColor
                  .withRed(188)
                  .withGreen(212)
                  .withBlue(188),
              // Provide a standard title.
              title: Text('Track My Spends'),
              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              elevation: 0,
              floating: true,
              stretch: true,
              pinned: false,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: const FlexibleSpaceBar(
                stretchModes: [StretchMode.blurBackground],
                background: Image(
                  image: AssetImage('assets/night.png'),
                  fit: BoxFit.cover,
                ),
              ),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 350,
            ),
            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                (context, index) => ListTile(
                  title: Text(spends[index].toString())
                ),
                // Builds 1000 ListTiles
                childCount: spends.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
