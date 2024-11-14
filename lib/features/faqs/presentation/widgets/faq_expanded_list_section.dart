import '../../../../exports.dart';
import 'faqs_model_data.dart';

class FaqExpandedListSection extends StatefulWidget {
  const FaqExpandedListSection({super.key});

  @override
  State<FaqExpandedListSection> createState() => _FaqExpandedListSectionState();
}

class _FaqExpandedListSectionState extends State<FaqExpandedListSection> {
  final Set<int> _expandedTiles =
      {}; //! Holds the indices of the currently expanded tiles
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        faqList.length,
        (index) {
          final faq = faqList[index];
          final isExpanded = _expandedTiles.contains(index);
          return Padding(
            padding: EdgeInsets.only(bottom: 16.0.h),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.backGroundGray,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor:
                      AppColors.transparent, //! Remove divider border color
                ),
                child: ExpansionTile(
                  title: Text(
                    faq.question,
                    style: isExpanded
                        ? getSemiBoldTextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            height: 0,
                          )
                        : getRegularTextStyle(
                            color: AppColors.richCharcoal,
                            fontSize: 14,
                          ),
                  ),
                  trailing: SvgDisplayer(
                    assetName:
                        isExpanded ? AppAssets.arrowUp : AppAssets.arrowDown,
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        faq.answer,
                        style: getRegularTextStyle(
                          color: AppColors.richCharcoal,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                  onExpansionChanged: (expanded) {
                    setState(
                      () {
                        if (expanded) {
                          _expandedTiles.add(index);
                        } else {
                          _expandedTiles.remove(index);
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
