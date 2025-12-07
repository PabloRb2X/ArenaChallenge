import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_typography.dart';
import '../../utils/home_utils.dart';
import '../cubit/cubit.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(HomeAppBarUtils.appBarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.primaryContainer,
              theme.colorScheme.primary,
            ],
            begin: HomeAppBarUtils.gradientBegin,
            end: HomeAppBarUtils.gradientEnd,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: HomeAppBarUtils.shadowOpacity,
              ),
              blurRadius: HomeAppBarUtils.shadowBlurRadius,
              offset: Offset(0, HomeAppBarUtils.shadowOffsetY),
            ),
          ],
        ),
      ),
      titleSpacing: HomeAppBarUtils.titleSpacing,
      title: Row(
        children: [
          Container(
            width: HomeAppBarUtils.avatarSize,
            height: HomeAppBarUtils.avatarSize,
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha: HomeAppBarUtils.avatarBackgroundOpacity,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withValues(
                  alpha: HomeAppBarUtils.avatarBorderOpacity,
                ),
                width: HomeAppBarUtils.avatarBorderWidth,
              ),
            ),
            child: const Icon(
              Icons.catching_pokemon,
              color: Colors.white,
              size: HomeAppBarUtils.avatarIconSize,
            ),
          ),
          Expanded(
            child: Padding(
              padding: HomeAppBarUtils.titlePadding,
              child: const _TitleSection(),
            ),
          ),
        ],
      ),
      actions: const [
        _FavoritesButton(),
        SizedBox(width: HomeAppBarUtils.actionsRightSpacing),
      ],
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          HomeAppBarUtils.title,
          style: AppTypography.titleLarge.copyWith(color: Colors.white),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Padding(
          padding: HomeAppBarUtils.subtitlePadding,
          child: Text(
            HomeAppBarUtils.subtitle,
            style: AppTypography.bodySmall.copyWith(
              color: Colors.white.withValues(
                alpha: HomeAppBarUtils.subtitleOpacity,
              ),
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _FavoritesButton extends StatelessWidget {
  const _FavoritesButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.favorite),
      color: Colors.white,
      tooltip: HomeAppBarUtils.tooltipFavorites,
      onPressed: () => context.read<HomeNavCubit>().goToPreferencesList(),
    );
  }
}
