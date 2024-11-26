import 'package:dashboard_app/theme/app_theme_context_extensions.dart';
import 'package:dashboard_app/theme/text_style_extensions.dart';
import 'package:dashboard_app/ticket_card/ticket_card_model.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
    required this.data,
  });

  final TicketCardModel data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => _goToDetailsPage(context, data),
      child: Hero(
        tag: data.id,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          color: context.theme.colors.backgroundColor,
          child: SizedBox(
            height: 222,
            width: 165,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      data.icon,
                      size: 60,
                      color: context.appColors.primary,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.titleCard,
                          style: context.theme.text.heading5
                              .withColor(context.appColors.black),
                        ),
                        Text(
                          data.subtitleCard,
                          style: context.theme.text.caption2.makeRegular
                              .withColor(context.appColors.grey),
                        ),
                        Text(
                          data.moneyCard,
                          style: context.theme.text.caption2.makeRegular
                              .withColor(context.appColors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_goToDetailsPage(BuildContext context, TicketCardModel data) {
  Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (BuildContext context) => Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: data.id,
        child: Container(),
      ),
    ),
  ));
}
