import 'package:flutter/material.dart';
import 'package:matnbaz_mobile/icons/matnbaz_custom_icons.dart';

class RepositoryPreview extends StatelessWidget {
  final dynamic repository;

  const RepositoryPreview({Key? key, required this.repository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Flex(
                  direction: Axis.horizontal,
                  textDirection: TextDirection.ltr,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/${repository.owner?.platformId}?v=4',
                      ),
                      radius: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.ltr,
                      children: [
                        Text(
                          repository.fullName,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          repository.descriptionLimited,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textDirection:
                              repository.descriptionDirection == "RTL"
                                  ? TextDirection.rtl
                                  : TextDirection.ltr,
                        ),
                      ],
                    ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Row(
                      textDirection: TextDirection.ltr,
                      children: [
                        const Icon(
                          Icons.star_border,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(repository.stargazersCount.toString())
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      textDirection: TextDirection.ltr,
                      children: [
                        const Icon(
                          MatnbazCustomIcons.repo_forked,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(repository.forksCount.toString())
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      textDirection: TextDirection.ltr,
                      children: [
                        const Icon(
                          MatnbazCustomIcons.issue_opened,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(repository.openIssuesCount.toString())
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    Row(
                      textDirection: TextDirection.ltr,
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(
                                  repository.language.color.rgba.red,
                                  repository.language.color.rgba.green,
                                  repository.language.color.rgba.blue,
                                  1)),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(repository.language.name)
                      ],
                    ),
                  ],
                )
              ],
            )));
  }
}
