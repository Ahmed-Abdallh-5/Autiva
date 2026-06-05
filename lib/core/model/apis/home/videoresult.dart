class VideoResult {
  final String message;
  final Assessment? assessment;
  final String processingTime;

  VideoResult({
    required this.message,
    required this.assessment,
    required this.processingTime,
  });

  factory VideoResult.fromJson(Map<String, dynamic> json) {
    return VideoResult(
      message: json['message']?.toString() ?? '',
      assessment: json['assessment'] != null
          ? Assessment.fromJson(Map<String, dynamic>.from(json['assessment']))
          : null,
      processingTime: json['processingTime']?.toString() ?? '',
    );
  }
}

class Assessment {
  final int id;
  final int childId;
  final String childName;
  final int videoId;
  final String videoUrl;
  final String stage1Prediction;
  final String stage2Behavior;
  final int repetitiveScore;
  final int eyeContactScore;
  final int expressivenessScore;
  final int combinedScore;
  final String severity;
  final String recommendations;
  final String assessedAt;

  Assessment({
    required this.id,
    required this.childId,
    required this.childName,
    required this.videoId,
    required this.videoUrl,
    required this.stage1Prediction,
    required this.stage2Behavior,
    required this.repetitiveScore,
    required this.eyeContactScore,
    required this.expressivenessScore,
    required this.combinedScore,
    required this.severity,
    required this.recommendations,
    required this.assessedAt,
  });

  factory Assessment.fromJson(Map<String, dynamic> json) {
    return Assessment(
      id: (json['id'] ?? 0) as int,
      childId: (json['childId'] ?? 0) as int,
      childName: json['childName']?.toString() ?? '',
      videoId: (json['videoId'] ?? 0) as int,
      videoUrl: json['videoUrl']?.toString() ?? '',
      stage1Prediction: json['stage1Prediction']?.toString() ?? '',
      stage2Behavior: json['stage2Behavior']?.toString() ?? '',
      repetitiveScore: (json['repetitiveScore'] ?? 0) as int,
      eyeContactScore: (json['eyeContactScore'] ?? 0) as int,
      expressivenessScore: (json['expressivenessScore'] ?? 0) as int,
      combinedScore: (json['combinedScore'] ?? 0) as int,
      severity: json['severity']?.toString() ?? '',
      recommendations: json['recommendations']?.toString() ?? '',
      assessedAt: json['assessedAt']?.toString() ?? '',
    );
  }
}
