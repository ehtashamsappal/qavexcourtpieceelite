import 'package:flutter/material.dart';
import 'package:qavexcourtpieceelite/core/app_state.dart';
import 'package:qavexcourtpieceelite/widgets/ui.dart';

class HowToScreen extends StatelessWidget {
  const HowToScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBuilder(
      builder: (context, s) => QxScaffold(
        title: 'How to Play',
        body: ListView(
          children: const [
            QxCard(
              child: Text('HOW TO PLAY\n\nGoal: with your partner, be the first team to win 2 rounds.\n\n- Partners sit across: you and the player opposite are one team.\n- Everyone bids tricks; the highest bidder becomes the trump-caller and names the trump suit.\n- The calling team must take at least 7 tricks to win the round. Play stops the moment a team reaches 7.\n- You must follow the led suit if you can. Highest trump wins, otherwise highest led card.\n- Win the round to bank 1 point. First to 2 round wins takes the match.\n\nMODES\n- Classic: the pure best-of-rounds match.\n- Timed Run: 10 minutes; finish fast for the win.\n- Daily Challenge: one seeded deal per day; streaks earn bonus chips.\n- Zen Table: no timer, free hints and undo.\n- Kids Mode: gentle guidance, easy rivals.\n- Practice: free play with auto-hints.\n- AI Ladder: climb 8 rungs from Easy to Expert.\n- Tournament: 5 rounds, highest total takes the crown.\n\nSimplifications for mobile: the trump-caller is the highest trick-bidder;\nclassic kot and goon-kot tier scoring is folded into a simple round win.',
                  style: TextStyle(fontSize: 15, height: 1.5)),
            ),
          ],
        ),
      ),
    );
  }
}
