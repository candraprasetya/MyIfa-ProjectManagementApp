part of '../screens.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [textField(context), helloUser()],
    );
  }

  Widget textField(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        decoration:
            BoxDecoration(color: white, borderRadius: BorderRadius.circular(6)),
        width: MediaQuery.of(context).size.width,
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              prefix: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  CupertinoIcons.search,
                  size: 14,
                  color: blackPearl,
                ),
              ),
              hintText: "Search what interests you",
              hintStyle: standardStyle.copyWith(
                  color: blackPearl.withOpacity(.4), fontSize: 14),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget helloUser() {
    return Padding(
      padding: EdgeInsets.only(left: defMargin),
      child: Text(
        'Hallo, Candra!',
        style: standardStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
