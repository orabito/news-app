import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:news_app/models/articale_service_model.dart';



class NewsTile extends StatelessWidget {
  const NewsTile({required this.articaleModele, super.key});

  final ArticaleModele articaleModele;

  @override
  Widget build(BuildContext context) {
    if (articaleModele.title.isEmpty && (articaleModele.subTitle?.isEmpty ?? true)) {

      return Center(
        child: Text(
          'There is no news to display',
          style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: CachedNetworkImage(
              imageUrl: articaleModele.imagearticale ??
                  'https://img.freepik.com/free-vector/realistic-news-studio-background_23-2149985606.jpg',
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Image.asset(
                'assets/images/breaking_news.jpeg',
                fit: BoxFit.cover,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          articaleModele.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Text(
          articaleModele.subTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Color.fromARGB(255, 55, 55, 55), fontSize: 14),
        ),
      ],
    );
  }
}

