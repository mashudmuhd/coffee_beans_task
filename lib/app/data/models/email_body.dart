
class EmailModel {
  final String emailBody;
  final String emailId;
  final String subject;
  final String content;
  final String dateTime;

  EmailModel({
    required this.emailBody,
    required this.emailId,
    required this.subject,
    required this.content,
    required this.dateTime,
  });

  factory EmailModel.fromJson(Map<String, dynamic> json) {
    return EmailModel(
      emailBody: json['emailBody'],
      emailId: json['emailId'],
      subject: json['subject'],
      content: json['content'],
      dateTime: json['dateTime'],
    );
  }
}