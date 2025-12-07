import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/global_error.dart';
import '../../../../core/widgets/global_loading.dart';
import '../../../../core/theme/app_typography.dart';
import '../../utils/preferences_utils.dart';
import '../cubit/cubit.dart';
import '../widget/list_page/prefs_list_view.dart';

class PrefsListPage extends StatelessWidget {
  const PrefsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PrefsNavListener(child: _PrefsScaffold());
  }
}

class _PrefsNavListener extends StatelessWidget {
  final Widget child;

  const _PrefsNavListener({required this.child});

  void _handleNavigation(BuildContext context, PreferencesNavState state) {
    final target = state.target;
    if (target == null) return;

    switch (target) {
      case PreferencesNavTarget.preferencesNew:
        AppRouter.router.navigateTo(context, AppRouter.prefsNew);
        break;
      case PreferencesNavTarget.preferenceDetail:
        final id = state.preferenceId;
        if (id != null) {
          AppRouter.router.navigateTo(context, '/prefs/$id');
        }
        break;
    }

    context.read<PreferencesNavCubit>().reset();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PreferencesNavCubit, PreferencesNavState>(
      listener: _handleNavigation,
      child: child,
    );
  }
}

class _PrefsScaffold extends StatelessWidget {
  const _PrefsScaffold();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const _PrefsAppBar(),
      body: _PrefsBody(theme: theme),
      floatingActionButton: _PrefsFab(theme: theme),
    );
  }
}

class _PrefsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _PrefsAppBar();

  @override
  Size get preferredSize => const Size.fromHeight(PrefsListUtils.appBarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.secondaryContainer,
              theme.colorScheme.secondary,
            ],
            begin: PrefsListUtils.gradientBegin,
            end: PrefsListUtils.gradientEnd,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: PrefsListUtils.shadowOpacity,
              ),
              blurRadius: PrefsListUtils.shadowBlurRadius,
              offset: Offset(0, PrefsListUtils.shadowOffsetY),
            ),
          ],
        ),
      ),
      titleSpacing: PrefsListUtils.titleSpacing,
      title: Row(
        children: [
          Container(
            width: PrefsListUtils.iconSize,
            height: PrefsListUtils.iconSize,
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha: PrefsListUtils.iconBgOpacity,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withValues(
                  alpha: PrefsListUtils.iconBorderOpacity,
                ),
                width: PrefsListUtils.iconBorderWidth,
              ),
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
              size: PrefsListUtils.iconInternalSize,
            ),
          ),
          const SizedBox(width: 12),
          const _PrefsTitleSection(),
        ],
      ),
    );
  }
}

class _PrefsTitleSection extends StatelessWidget {
  const _PrefsTitleSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            PrefsListUtils.title,
            style: AppTypography.titleLarge.copyWith(color: Colors.white),
          ),
          Text(
            PrefsListUtils.subtitle,
            style: AppTypography.bodySmall.copyWith(
              color: Colors.white.withValues(
                alpha: PrefsListUtils.subtitleOpacity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PrefsBody extends StatelessWidget {
  final ThemeData theme;

  const _PrefsBody({required this.theme});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PrefsHintBanner(theme: theme),
        const SizedBox(height: 4),
        Expanded(
          child: BlocBuilder<PreferenceCubit, PreferenceState>(
            builder: (context, state) {
              return state.when(
                initial: (list) => const GlobalLoading(),
                loading: (list) => const GlobalLoading(),
                success: (list) => PrefsListView(list: list),
                error: (message, list) => GlobalError(
                  message: message,
                  onRetry: () =>
                      context.read<PreferenceCubit>().loadPreferences(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _PrefsHintBanner extends StatelessWidget {
  final ThemeData theme;

  const _PrefsHintBanner({required this.theme});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.info_outline,
                size: 18,
                color: theme.colorScheme.primary.withValues(alpha: 0.9),
              ),
            ),
            Expanded(
              child: Text(
                PrefsListUtils.fabRecomendation,
                style: AppTypography.bodySmall.copyWith(
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PrefsFab extends StatelessWidget {
  final ThemeData theme;

  const _PrefsFab({required this.theme});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: theme.colorScheme.secondary,
      foregroundColor: theme.colorScheme.onSecondary,
      onPressed: () => context.read<PreferencesNavCubit>().goToNewPreference(),
      label: const Text(PrefsListUtils.fabLabel),
      icon: const Icon(Icons.add_rounded),
    );
  }
}
