part of '../screens.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [textField(context), helloUser(), boxItems(context)],
    );
  }

  Widget textField(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        decoration:
            BoxDecoration(color: white, borderRadius: BorderRadius.circular(6)),
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
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

  Widget boxItems(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defMargin),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: blackPearl.withAlpha(10), blurRadius: 20, spreadRadius: 5)
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BoxItem(
                color: green,
                icon: icCreditCard,
                text: "Cards",
                function: () {},
              ),
              BoxItem(
                color: blue,
                icon: icCalendar,
                text: "Installment",
                function: () {},
              ),
              BoxItem(
                color: softPurple,
                icon: icMoney,
                text: "Loan",
                function: () {},
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BoxItem(
                color: primaryDarkColor,
                icon: icLove,
                text: "Invest",
                function: () {},
              ),
              BoxItem(
                color: violet,
                icon: icDocuments,
                text: "Data",
                function: () {},
              ),
              BoxItem(
                color: pink,
                icon: icNotif,
                text: "Service",
                function: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
