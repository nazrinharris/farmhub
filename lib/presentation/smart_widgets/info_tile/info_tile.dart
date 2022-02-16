import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_animations/simple_animations.dart';

import 'bloc/info_tile_bloc.dart';

enum InfoTileStatus { loading, success, error }

/// Guide on using [InfoTileOverlay]
///
/// [InfoTileOverlay] is a fairly simple widget that positions the [InfoTile] to the top
/// of the screen with respect to the top padding from [SafeArea]
///
/// This widget is meant to be used inside of a [Stack] which takes up the whole screen.
class InfoTileOverlay extends StatelessWidget {
  final InfoTile infoTile;

  const InfoTileOverlay({Key? key, required this.infoTile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      left: false,
      right: false,
      bottom: false,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
        ),
      ),
    );
  }
}

//TODO: Upgrade on InfoTile: Allow the disclusion of a child, and automatically replace it with a [SizedBox.shrink]

/// Guide on using [InfoTile]
///
/// Precautions : -
///
/// 1. Make sure [InfoTileBloc] has been created and properly provided to the widget tree. Use [Builder] if
/// you cannot access the bloc in the correct context.
///
/// 2. If you call [triggerStateChange()], and the [isAbleToExpand] property is different from before,
/// make sure [isExpanded] property is set to [false]. This must be done in order to trigger the state change properly.
///
/// 3. No custom alignment is currently allowed. Lazy to do it. Currently the child is aligned to top left.
class InfoTile extends StatefulWidget {
  const InfoTile({
    Key? key,
  }) : super(key: key);

  @override
  _InfoTileState createState() => _InfoTileState();
}

class _InfoTileState extends State<InfoTile> with AnimationMixin {
  late AnimationController _childrenHeightFactorController;

  late Animation<double> _childrenHeightFactor;
  late Animation<double> _horizontalLeadingPadding;
  late Animation<double> _topLeadingPadding;
  late Animation<double> _iconRotation;
  late Animation<double> _opacity;
  late Animation<double> _fontSize;

  bool _isExpanded = false;

  InfoTileProps readProps(BuildContext context) =>
      context.read<InfoTileBloc>().state.infoTileProps;

  @override
  void initState() {
    super.initState();

    _childrenHeightFactorController = createController();
    _childrenHeightFactor = CurvedAnimation(
      parent: _childrenHeightFactorController,
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.fastOutSlowIn.flipped,
    );
    _horizontalLeadingPadding =
        Tween<double>(begin: 14, end: 24).animate(_childrenHeightFactor);
    _iconRotation =
        Tween<double>(begin: 0, end: math.pi).animate(_childrenHeightFactor);
    _opacity = Tween<double>(begin: 0, end: 1).animate(_childrenHeightFactor);
    _fontSize = Tween<double>(begin: 16.0.sp, end: 18.0.sp)
        .animate(_childrenHeightFactor);
    _topLeadingPadding =
        Tween<double>(begin: 0.0, end: 6.0).animate(_childrenHeightFactor);
    _isExpanded = context.read<InfoTileBloc>().state.infoTileProps.isExpanded;

    if (_isExpanded) {
      _childrenHeightFactorController.value = 1.0;
    }
  }

  void _handleTap() {
    setState(() {
      _isExpanded =
          !context.read<InfoTileBloc>().state.infoTileProps.isExpanded;
      if (_isExpanded) {
        _childrenHeightFactorController.play(
            duration: const Duration(milliseconds: 250));
        context.read<InfoTileBloc>().add(const InfoTileEvent.toggleExpansion());
      } else {
        _childrenHeightFactorController.playReverse(
            duration: const Duration(milliseconds: 250));
        context.read<InfoTileBloc>().add(const InfoTileEvent.toggleExpansion());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfoTileBloc, InfoTileState>(
      builder: (context, state) {
        return _buildInfoTile();
      },
    );
  }

  Widget _buildInfoTile() {
    final InfoTileProps currentStateProps =
        context.read<InfoTileBloc>().state.infoTileProps;

    if (currentStateProps.isAbleToExpand == false &&
        currentStateProps.isExpanded == false) {
      _childrenHeightFactorController.playReverse(
          duration: const Duration(milliseconds: 350));
    }

    return AnimatedBuilder(
        animation: _childrenHeightFactorController.view,
        builder: (context, child) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 20,
              right: 20,
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: _resolveStatusForBackgroundColor(),
                  boxShadow: [
                    BoxShadow(
                      color: _resolveShadowColor(),
                      offset: const Offset(0, 3),
                      blurRadius: 10,
                    ),
                  ]),
              child: Material(
                type: MaterialType.transparency,
                borderRadius: BorderRadius.circular(16.0),
                child: InkWell(
                  splashColor: _resolveSplashColorForInkWell(),
                  highlightColor: _resolveHighlightColorForInkWell(),
                  borderRadius: BorderRadius.circular(16.0),
                  onTap: () {
                    final bool _isAbleToExpand = context
                        .read<InfoTileBloc>()
                        .state
                        .infoTileProps
                        .isAbleToExpand;
                    if (_isAbleToExpand) {
                      _handleTap();
                    } else {
                      return;
                    }
                  },
                  child: Ink(
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: _horizontalLeadingPadding.value,
                                right: _horizontalLeadingPadding.value,
                                top: _topLeadingPadding.value,
                              ),
                              alignment: Alignment.centerLeft,
                              //height: 54,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(right: 50),
                                        child: Text(
                                          readProps(context).leadingText,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: _fontSize.value,
                                                color:
                                                    _resolveStatusForTextColor(),
                                              ),
                                        ),
                                      ),
                                    ),
                                    AnimatedSwitcher(
                                        duration:
                                            const Duration(milliseconds: 10),
                                        child: context
                                                .read<InfoTileBloc>()
                                                .state
                                                .infoTileProps
                                                .isAbleToExpand
                                            ? _buildIcon()
                                            : _buildEmptySpace())
                                  ],
                                ),
                              ),
                            ),
                            ClipRect(
                              child: Align(
                                heightFactor: _childrenHeightFactor.value,
                                child: Opacity(
                                  opacity: _opacity.value,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 24,
                                      right: 34,
                                      bottom: 24,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: child,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
            ),
          );
        },
        child: readProps(context).child);
  }

  Color _resolveStatusForBackgroundColor() {
    switch (readProps(context).currentStatus) {
      case InfoTileStatus.loading:
        {
          return Theme.of(context).colorScheme.primary;
        }
      case InfoTileStatus.success:
        {
          return Theme.of(context).colorScheme.secondaryVariant;
        }
      case InfoTileStatus.error:
        {
          return Theme.of(context).colorScheme.error;
        }
      default:
        {
          throw UnimplementedError(
            "InfoTile - _resolveStatusForBackgroundColor() - Unexpected Error",
          );
        }
    }
  }

  Color _resolveStatusForTextColor() {
    switch (readProps(context).currentStatus) {
      case InfoTileStatus.loading:
        {
          return Theme.of(context).colorScheme.onPrimary;
        }
      case InfoTileStatus.success:
        {
          return Theme.of(context).colorScheme.primary;
        }
      case InfoTileStatus.error:
        {
          return Theme.of(context).colorScheme.onErrorContainer;
        }
      default:
        {
          throw UnimplementedError(
            "InfoTile - _resolveStatusForTextColor() - Unexpected Error",
          );
        }
    }
  }

  Color _resolveSplashColorForInkWell() {
    final Color _errorSplashColor =
        Theme.of(context).colorScheme.onErrorContainer.withOpacity(0.25);
    final Color _successSplashColor =
        Theme.of(context).colorScheme.background.withOpacity(0.25);
    final Color _loadingSplashColor =
        Theme.of(context).colorScheme.background.withOpacity(0.25);

    switch (readProps(context).currentStatus) {
      case InfoTileStatus.loading:
        {
          return _loadingSplashColor;
        }
      case InfoTileStatus.success:
        {
          return _successSplashColor;
        }
      case InfoTileStatus.error:
        {
          return _errorSplashColor;
        }
      default:
        {
          throw UnimplementedError(
            "InfoTile - _resolveSplashColorForInkwell() - Unexpected Error",
          );
        }
    }
  }

  Color _resolveHighlightColorForInkWell() {
    final Color _errorHighlightColor =
        Theme.of(context).colorScheme.onErrorContainer.withOpacity(0.15);
    final Color _successHighlightColor =
        Theme.of(context).colorScheme.background.withOpacity(0.15);
    final Color _loadingHighlightColor =
        Theme.of(context).colorScheme.onPrimary.withOpacity(0.15);

    switch (readProps(context).currentStatus) {
      case InfoTileStatus.loading:
        {
          return _loadingHighlightColor;
        }
      case InfoTileStatus.success:
        {
          return _successHighlightColor;
        }
      case InfoTileStatus.error:
        {
          return _errorHighlightColor;
        }
      default:
        {
          throw UnimplementedError(
            "InfoTile - _resolveHighlightColorForInkwell() - Unexpected Error",
          );
        }
    }
  }

  Color _resolveShadowColor() {
    final Color _errorShadowColor =
        Theme.of(context).colorScheme.error.withOpacity(0.5);
    final Color _successShadowColor =
        Theme.of(context).colorScheme.secondaryVariant.withOpacity(0.5);
    final Color _loadingShadowColor =
        Theme.of(context).colorScheme.primary.withOpacity(0.12);

    switch (readProps(context).currentStatus) {
      case InfoTileStatus.loading:
        {
          return _loadingShadowColor;
        }
      case InfoTileStatus.success:
        {
          return _successShadowColor;
        }
      case InfoTileStatus.error:
        {
          return _errorShadowColor;
        }
      default:
        {
          throw UnimplementedError(
            "InfoTile - _resolveShadowColor() - Unexpected Error",
          );
        }
    }
  }

  Widget _buildIcon() {
    Color _resolveIconColor() {
      switch (readProps(context).currentStatus) {
        case InfoTileStatus.loading:
          {
            return Theme.of(context).colorScheme.primaryVariant;
          }
        case InfoTileStatus.success:
          {
            return Theme.of(context).colorScheme.primary;
          }
        case InfoTileStatus.error:
          {
            return Theme.of(context).colorScheme.onPrimary;
          }
        default:
          {
            throw UnimplementedError(
              "InfoTile - _resolveIconColor() - Unexpected Error",
            );
          }
      }
    }

    return Transform.rotate(
      angle: _iconRotation.value,
      child: Icon(
        Icons.expand_more,
        color: _resolveIconColor(),
      ),
    );
  }

  Widget _buildEmptySpace() {
    return const SizedBox.shrink();
  }
}
