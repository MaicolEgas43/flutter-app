enum FromWho { me, hers }

class Message {
  final String bodyMessage;
  final String? imageUrl;
  final FromWho fromWho;

  Message({required this.bodyMessage, this.imageUrl, required this.fromWho});
}
