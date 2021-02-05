class Job {
  Job(this.company, this.title);

  final String company;
  final String title;

  Job.fromJson(Map<String, dynamic> json)
      : company = json['company'],
        title = json['title'];
}

