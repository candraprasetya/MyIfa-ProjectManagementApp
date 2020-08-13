part of 'widgets.dart';

class BoxItem extends StatelessWidget {
  final Color color;
  final String icon;
  final String text;
  final Function function;

  const BoxItem({Key key, this.color, this.icon, this.text, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.16,
            height: MediaQuery.of(context).size.width * 0.16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color.withOpacity(.2)),
            child: Center(
                child: Image.asset(
              icon,
              width: MediaQuery.of(context).size.width * .1,
              height: MediaQuery.of(context).size.width * .1,
            )),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 10.6,
              color: blackPearl.withOpacity(.4),
            ),
          )
        ],
      ),
    );
  }
}
