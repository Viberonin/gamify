import 'package:flutter/material.dart';
import 'package:gamify/home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _opacity = 0.0;
  double _position = 1.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 5))
                            ..forward()
                            ..addStatusListener((status) {
                              if(status == AnimationStatus.completed) {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()),
                                );
                              }
                            });
    _animation = Tween<double>(begin: 0, end: 1)
        .chain(CurveTween(curve: Curves.elasticOut))
        .animate(_animationController);
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
        _position = 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              child: AnimatedBuilder(
                animation: _animationController,
                  builder: (context, child) {
                    return Transform.scale(scale: _animation.value, child: Image.asset('assets/icons/splashscreen.png', height: 100, width: 100)
                    );
                    },
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(milliseconds: 500),
                child: AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                  left: _position,
                  child: Text(
                    'Your Gaming Companion',
                    style: TextStyle(
                      fontFamily: "Gotham Bold",
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
            ),
          ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}