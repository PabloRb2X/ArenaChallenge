import 'package:arena_challenge/core/theme/app_typography.dart';
import 'package:arena_challenge/features/home/domain/entities/pokemon_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/pokemon_summary.dart';
import '../../utils/home_utils.dart';
import '../cubit/home_api_cubit.dart';
import '../cubit/pokemon_detail_cache.dart';
import 'pokemon_avatar.dart';
import 'pokemon_type_chip.dart';
import 'pokemon_detail_bottom_sheet.dart';

class PokemonCard extends StatefulWidget {
  final PokemonSummary summary;

  const PokemonCard({super.key, required this.summary});

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  late Future<PokemonDetail> _detailFuture;

  @override
  void initState() {
    super.initState();
    final apiCubit = context.read<HomeApiCubit>();
    _detailFuture = PokemonDetailCache.get(widget.summary.name, apiCubit);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FutureBuilder<PokemonDetail>(
      future: _detailFuture,
      builder: (context, snapshot) {
        final hasData = snapshot.hasData;
        final detail = snapshot.data;

        return Padding(
          padding: HomePokemonListUtils.cardOuterPadding,
          child: InkWell(
            borderRadius: HomePokemonListUtils.cardBorderRadius,
            onTap: hasData
                ? () async {
                    final d = await _detailFuture;
                    if (!context.mounted) return;

                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: theme.colorScheme.surface,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      builder: (_) => PokemonDetailBottomSheet(detail: d),
                    );
                  }
                : null,
            child: Card(
              elevation: HomePokemonListUtils.cardElevation,
              shape: RoundedRectangleBorder(
                borderRadius: HomePokemonListUtils.cardBorderRadius,
              ),
              color: theme.colorScheme.surface,
              child: Padding(
                padding: HomePokemonListUtils.cardInnerPadding,
                child: Row(
                  children: [
                    PokemonAvatar(snapshot: snapshot),
                    const SizedBox(
                      width: HomePokemonListUtils.cardAvatarTextSpacing,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.summary.name.toUpperCase(),
                            style: AppTypography.titleMedium,
                          ),
                          const SizedBox(
                            height: HomePokemonListUtils.cardNameTypesSpacing,
                          ),
                          if (snapshot.connectionState ==
                              ConnectionState.waiting)
                            Text(
                              HomeUtils.loadingTypes,
                              style: AppTypography.bodySmall.copyWith(
                                color: Colors.grey.shade600,
                              ),
                            )
                          else if (hasData && detail != null)
                            Wrap(
                              spacing: 6,
                              runSpacing: 4,
                              children: detail.types
                                  .map(
                                    (t) =>
                                        PokemonTypeChip(typeName: t.type.name),
                                  )
                                  .toList(),
                            )
                          else
                            Text(
                              HomeUtils.noTypes,
                              style: AppTypography.bodySmall,
                            ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
