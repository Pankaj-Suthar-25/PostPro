import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postpro/views/home/story_detail_view.dart';

class StoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String authorName;
  final String authorAvatarUrl;
  final String date;
  final int applauseCount;
  final int commentCount;
  final String storyId;
  final int dislikeCount;

  const StoryCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.authorName,
    required this.authorAvatarUrl,
    required this.date,
    required this.applauseCount,
    required this.commentCount,
    required this.storyId,
    required this.dislikeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
               Get.to(()=> StoryDetailView(storyId: storyId,));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(authorAvatarUrl),
                    ),
                    SizedBox(width: 8),
                    Text(authorName),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            subtitle,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Image.network(
                      imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: 16),
                        SizedBox(width: 4),
                        Text(date),
                        SizedBox(width: 8),
                        Icon(Icons.thumb_up, size: 16),
                        SizedBox(width: 4),
                        Text(applauseCount.toString()),
                        SizedBox(width: 8),
                        Icon(Icons.comment, size: 16),
                        SizedBox(width: 4),
                        Text(commentCount.toString()),
                        SizedBox(width: 8),
                        Icon(Icons.thumb_down, size: 16),
                        SizedBox(width: 4),
                        Text(dislikeCount.toString()),
                      ],
                    ),
                    PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 'more_like_this',
                          child: Text('More like this'),
                        ),
                        PopupMenuItem(
                          value: 'less_like_this',
                          child: Text('Less like this'),
                        ),
                        PopupMenuItem(
                          value: 'save',
                          child: Text('Save'),
                        ),
                        PopupMenuItem(
                          value: 'share',
                          child: Text('Share'),
                        ),
                        PopupMenuItem(
                          value: 'follow_author',
                          child: Text('Follow author'),
                        ),
                        PopupMenuItem(
                          value: 'follow_publication',
                          child: Text('Follow publication'),
                        ),
                        PopupMenuItem(
                          value: 'mute_author',
                          child: Text('Mute author'),
                        ),
                        PopupMenuItem(
                          value: 'mute_publication',
                          child: Text('Mute publication'),
                        ),
                        PopupMenuItem(
                          value: 'report_story',
                          child: Text('Report story'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
