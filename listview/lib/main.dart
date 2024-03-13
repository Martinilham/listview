import "package:flutter/material.dart";

void main() {
  runApp( const MaterialApp(
    title: "list View",
    home: Hal_utama(),
  ));
}

class Hal_utama extends StatelessWidget{
  const Hal_utama({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Belajar List View"),
        ),
        leading: const Icon(Icons.home),
      ),
      body: ListView(
        children: const [
          Datalist(judul: "Kim Ji Eun", 
          gambar: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.wikipedia.org%2Fwiki%2FKim_Ji-eun&psig=AOvVaw2Wdqn7e6ztmoWk1PiwPSA5&ust=1710428110782000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCKD34rvL8YQDFQAAAAAdAAAAABAE", 
          decs: "Ini My Favorit Aktris"),
          Datalist(judul: "Kim Ji Eun", 
          gambar: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.wikipedia.org%2Fwiki%2FKim_Ji-eun&psig=AOvVaw2Wdqn7e6ztmoWk1PiwPSA5&ust=1710428110782000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCKD34rvL8YQDFQAAAAAdAAAAABAE", 
          decs: "Ini My Favorit Aktris"),
          Datalist(judul: "Kim Ji Eun", 
          gambar: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.wikipedia.org%2Fwiki%2FKim_Ji-eun&psig=AOvVaw2Wdqn7e6ztmoWk1PiwPSA5&ust=1710428110782000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCKD34rvL8YQDFQAAAAAdAAAAABAE", 
          decs: "Ini My Favorit Aktris"),
          Datalist(judul: "Kim Ji Eun", 
          gambar: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.wikipedia.org%2Fwiki%2FKim_Ji-eun&psig=AOvVaw2Wdqn7e6ztmoWk1PiwPSA5&ust=1710428110782000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCKD34rvL8YQDFQAAAAAdAAAAABAE", 
          decs: "Ini My Favorit Aktris"),
          Datalist(judul: "Kim Ji Eun", 
          gambar: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.wikipedia.org%2Fwiki%2FKim_Ji-eun&psig=AOvVaw2Wdqn7e6ztmoWk1PiwPSA5&ust=1710428110782000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCKD34rvL8YQDFQAAAAAdAAAAABAE", 
          decs: "Ini My Favorit Aktris")
        ],
      ),
    );
  }

}

class Datalist extends StatelessWidget{
  const Datalist({super.key,required this.judul,required this.gambar,required this.decs});
  final String judul;
  final String gambar;
  final String decs;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image(
            image: NetworkImage(gambar),
            width: 100.0,
            height: 100.0,
          ),
          Center(
            child: Row(children: [
              Text(judul,
              style: const TextStyle(
                fontSize: 14.0
              ),),
              
              Text(decs,
              style: const TextStyle(
                fontSize: 11.0
              ),),
              
            ],),
          )    
        ],
      ),
    );

  }
}