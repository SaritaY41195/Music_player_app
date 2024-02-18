import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../models/playlist_model.dart';

class PlaylistS extends StatefulWidget {
  final Playlist playLists;
  const PlaylistS({super.key, required this.playLists});

  @override
  State<PlaylistS> createState() => _PlaylistSState();
}

class _PlaylistSState extends State<PlaylistS> {
  List<bool> _isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xff870160),
            Color(0xffac255e),
            Color(0xffca485c),
            Color(0xffe16b5c),
            //Color(0xfff39060),
            // Color(0xffffb56b),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Playlist'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child:  Image.network(
                    widget.playLists.imageUrl,
                    height: 250,
                    width: 260,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Text(widget.playLists.title, style: Theme.of(context)
                  .textTheme.titleMedium!
                  .copyWith(color: Colors.white,fontSize: 25),),
              const SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(
                       onPressed: (){},
                       child: const Text('Play'),
                   ),
                   ElevatedButton(onPressed: (){}, child: const Text('Suffle')),
                 ],
               ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.30,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context,index){
                            return ListTile(
                              leading: Text('${index + 1}', style: const TextStyle(fontSize: 15.0, color: Colors.white),),
                              title: Text('User ${index + 1}',  style: const TextStyle(fontSize: 15.0, color: Colors.white),),
                              subtitle: const Text('user......', style: const TextStyle(fontSize: 15.0, color: Colors.white),),
                              trailing: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(Icons.more_vert, color: Colors.white,),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
