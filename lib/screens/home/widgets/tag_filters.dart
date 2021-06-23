import 'package:flutter/material.dart';
import 'package:lms/models/tag.dart';
import 'package:lms/widgets/tag_badge.dart';

class TagFilters extends StatefulWidget {
  @override
  _TagFiltersState createState() => _TagFiltersState();
}

class _TagFiltersState extends State<TagFilters> {
  List<int> selectedTags = [];
  List<Tag> tags = [
    Tag(id: 1, name: 'Frontend'),
    Tag(id: 2, name: 'Backend'),
    Tag(id: 3, name: 'Prototype'),
    Tag(id: 4, name: 'UI/UX'),
  ];

  bool isSelected(Tag tag) {
    return selectedTags.contains(tag.id);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: [
        ...tags.map(
          (tag) => TagBadge(
            text: tag.name,
            active: isSelected(tag),
            onClick: () {
              setState(() {
                isSelected(tag)
                    ? selectedTags.remove(tag.id!)
                    : selectedTags.add(tag.id!);
              });
            },
          ),
        ),
      ],
    );
  }
}
