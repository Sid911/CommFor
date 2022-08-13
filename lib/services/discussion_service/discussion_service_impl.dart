import 'package:firebase_storage/firebase_storage.dart';

/// This is Discussion Service which deals with the discussion forum
class DiscussionService {
  DiscussionService(this.uid);
  final String uid;
  FirebaseStorage instance = FirebaseStorage.instance;

  Future<void> makePost(PostData data) async {
    /// makes the post
  }

  Future<void> makeBugReport(BugReportData data) async {}

  Future<List<PostData>?> getRecentPosts(int length) async {
    // get recent posts for questions
  }

  Future<List<BugReportData>?> getRecentBugReports(int length) async {
    // ger recent bug reports posted in the forum
  }
}

class PostData {
  final String postUID;
  final String authorName;
  final String authorUID;
  final String postTitle;
  final String postDescription;
  final DateTime authoredDate;
  final DateTime lastEdited;
  final int upvotes;
  final List<String> upvotersUID;
  final bool isReply;
  final List<String> replies;

  PostData copyWith({
    String? postUID,
    String? authorName,
    String? authorUID,
    String? postTitle,
    String? postDescription,
    DateTime? authoredDate,
    DateTime? lastEdited,
    int? upvotes,
    List<String>? upvotersUID,
    bool? isReply,
    List<String>? replies,
  }) {
    return PostData(
      postUID: postUID ?? this.postUID,
      authorName: authorName ?? this.authorName,
      authorUID: authorUID ?? this.authorUID,
      postTitle: postTitle ?? this.postTitle,
      postDescription: postDescription ?? this.postDescription,
      authoredDate: authoredDate ?? this.authoredDate,
      lastEdited: lastEdited ?? this.lastEdited,
      upvotes: upvotes ?? this.upvotes,
      upvotersUID: upvotersUID ?? this.upvotersUID,
      isReply: isReply ?? this.isReply,
      replies: replies ?? this.replies,
    );
  }

  PostData({
    required this.postUID,
    required this.authorName,
    required this.authorUID,
    required this.postTitle,
    required this.postDescription,
    required this.authoredDate,
    required this.lastEdited,
    required this.upvotes,
    required this.upvotersUID,
    required this.isReply,
    required this.replies,
  });
}

class BugReportData {
  final String bugReportUID;
  final String title;
  final String description;
  final String stepsToFind;
  final String? screenshotURL;
  final int? upvotes;
  final List<String>? upvotersUID;

  BugReportData({
    required this.bugReportUID,
    required this.title,
    required this.description,
    required this.stepsToFind,
    required this.screenshotURL,
    required this.upvotes,
    required this.upvotersUID,
  });
}
