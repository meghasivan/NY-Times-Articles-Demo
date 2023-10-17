// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class NyPopularArticleModel {
  String? status;
  String? copyright;
  int? numResults;
  List<Results>? results;
  NyPopularArticleModel({
    this.status,
    this.copyright,
    this.numResults,
    this.results,
  });

  NyPopularArticleModel copyWith({
    String? status,
    String? copyright,
    int? numResults,
    List<Results>? results,
  }) {
    return NyPopularArticleModel(
      status: status ?? this.status,
      copyright: copyright ?? this.copyright,
      numResults: numResults ?? this.numResults,
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'copyright': copyright,
      'numResults': numResults,
      'results': results?.map((x) => x.toMap()).toList(),
    };
  }

  factory NyPopularArticleModel.fromMap(Map<String, dynamic> map) {
    return NyPopularArticleModel(
      status: map['status'] != null ? map['status'] as String : null,
      copyright: map['copyright'] != null ? map['copyright'] as String : null,
      numResults: map['numResults'] != null ? map['numResults'] as int : null,
      results: map['results'] != null
          ? List<Results>.from(
              (map['results'] as List).map<Results?>(
                (x) => Results.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NyPopularArticleModel.fromJson(String source) =>
      NyPopularArticleModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NyPopularArticleModel(status: $status, copyright: $copyright, numResults: $numResults, results: $results)';
  }

  @override
  bool operator ==(covariant NyPopularArticleModel other) {
    if (identical(this, other)) return true;

    return other.status == status &&
        other.copyright == copyright &&
        other.numResults == numResults &&
        listEquals(other.results, results);
  }

  @override
  int get hashCode {
    return status.hashCode ^
        copyright.hashCode ^
        numResults.hashCode ^
        results.hashCode;
  }
}

class Results {
  String? uri;
  String? url;
  int? id;
  int? assetId;
  String? source;
  String? publishedDate;
  String? updated;
  String? section;
  String? subsection;
  String? nytdsection;
  String? adxKeywords;
  String? column;
  String? byline;
  String? type;
  String? title;
  String? abstract;
  List<String>? desFacet;
  List<String>? orgFacet;
  List<String>? perFacet;
  List<String>? geoFacet;
  List<Media>? media;
  int? etaId;
  Results({
    this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.abstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId,
  });

  Results copyWith({
    String? uri,
    String? url,
    int? id,
    int? assetId,
    String? source,
    String? publishedDate,
    String? updated,
    String? section,
    String? subsection,
    String? nytdsection,
    String? adxKeywords,
    String? column,
    String? byline,
    String? type,
    String? title,
    String? abstract,
    List<String>? desFacet,
    List<String>? orgFacet,
    List<String>? perFacet,
    List<String>? geoFacet,
    List<Media>? media,
    int? etaId,
  }) {
    return Results(
      uri: uri ?? this.uri,
      url: url ?? this.url,
      id: id ?? this.id,
      assetId: assetId ?? this.assetId,
      source: source ?? this.source,
      publishedDate: publishedDate ?? this.publishedDate,
      updated: updated ?? this.updated,
      section: section ?? this.section,
      subsection: subsection ?? this.subsection,
      nytdsection: nytdsection ?? this.nytdsection,
      adxKeywords: adxKeywords ?? this.adxKeywords,
      column: column ?? this.column,
      byline: byline ?? this.byline,
      type: type ?? this.type,
      title: title ?? this.title,
      abstract: abstract ?? this.abstract,
      desFacet: desFacet ?? this.desFacet,
      orgFacet: orgFacet ?? this.orgFacet,
      perFacet: perFacet ?? this.perFacet,
      geoFacet: geoFacet ?? this.geoFacet,
      media: media ?? this.media,
      etaId: etaId ?? this.etaId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
      'url': url,
      'id': id,
      'assetId': assetId,
      'source': source,
      'published_date': publishedDate,
      'updated': updated,
      'section': section,
      'subsection': subsection,
      'nytdsection': nytdsection,
      'adxKeywords': adxKeywords,
      'column': column,
      'byline': byline,
      'type': type,
      'title': title,
      'abstract': abstract,
      'desFacet': desFacet,
      'orgFacet': orgFacet,
      'perFacet': perFacet,
      'geoFacet': geoFacet,
      'media': media?.map((x) => x.toMap()).toList(),
      'etaId': etaId,
    };
  }

  factory Results.fromMap(Map<String, dynamic> map) {
    return Results(
      uri: map['uri'] != null ? map['uri'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      id: map['id'] != null ? map['id'] as int : null,
      assetId: map['assetId'] != null ? map['assetId'] as int : null,
      source: map['source'] != null ? map['source'] as String : null,
      publishedDate: map['published_date'] != null
          ? map['published_date'] as String
          : null,
      updated: map['updated'] != null ? map['updated'] as String : null,
      section: map['section'] != null ? map['section'] as String : null,
      subsection:
          map['subsection'] != null ? map['subsection'] as String : null,
      nytdsection:
          map['nytdsection'] != null ? map['nytdsection'] as String : null,
      adxKeywords:
          map['adxKeywords'] != null ? map['adxKeywords'] as String : null,
      column: map['column'] != null ? map['column'] as String : null,
      byline: map['byline'] != null ? map['byline'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      abstract: map['abstract'] != null ? map['abstract'] as String : null,
      desFacet: map['desFacet'] != null
          ? List<String>.from((map['desFacet'] as List<String>))
          : null,
      orgFacet: map['orgFacet'] != null
          ? List<String>.from((map['orgFacet'] as List<String>))
          : null,
      perFacet: map['perFacet'] != null
          ? List<String>.from((map['perFacet'] as List<String>))
          : null,
      geoFacet: map['geoFacet'] != null
          ? List<String>.from((map['geoFacet'] as List<String>))
          : null,
      media: map['media'] != null
          ? List<Media>.from(
              (map['media'] as List).map<Media?>(
                (x) => Media.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      etaId: map['etaId'] != null ? map['etaId'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Results.fromJson(String source) =>
      Results.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Results(uri: $uri, url: $url, id: $id, assetId: $assetId, source: $source, publishedDate: $publishedDate, updated: $updated, section: $section, subsection: $subsection, nytdsection: $nytdsection, adxKeywords: $adxKeywords, column: $column, byline: $byline, type: $type, title: $title, abstract: $abstract, desFacet: $desFacet, orgFacet: $orgFacet, perFacet: $perFacet, geoFacet: $geoFacet, media: $media, etaId: $etaId)';
  }

  @override
  bool operator ==(covariant Results other) {
    if (identical(this, other)) return true;

    return other.uri == uri &&
        other.url == url &&
        other.id == id &&
        other.assetId == assetId &&
        other.source == source &&
        other.publishedDate == publishedDate &&
        other.updated == updated &&
        other.section == section &&
        other.subsection == subsection &&
        other.nytdsection == nytdsection &&
        other.adxKeywords == adxKeywords &&
        other.column == column &&
        other.byline == byline &&
        other.type == type &&
        other.title == title &&
        other.abstract == abstract &&
        listEquals(other.desFacet, desFacet) &&
        listEquals(other.orgFacet, orgFacet) &&
        listEquals(other.perFacet, perFacet) &&
        listEquals(other.geoFacet, geoFacet) &&
        listEquals(other.media, media) &&
        other.etaId == etaId;
  }

  @override
  int get hashCode {
    return uri.hashCode ^
        url.hashCode ^
        id.hashCode ^
        assetId.hashCode ^
        source.hashCode ^
        publishedDate.hashCode ^
        updated.hashCode ^
        section.hashCode ^
        subsection.hashCode ^
        nytdsection.hashCode ^
        adxKeywords.hashCode ^
        column.hashCode ^
        byline.hashCode ^
        type.hashCode ^
        title.hashCode ^
        abstract.hashCode ^
        desFacet.hashCode ^
        orgFacet.hashCode ^
        perFacet.hashCode ^
        geoFacet.hashCode ^
        media.hashCode ^
        etaId.hashCode;
  }
}

class Media {
  String? type;
  String? subtype;
  String? caption;
  String? copyright;
  int? approvedForSyndication;
  List<MediaMetadata>? mediaMetadata;
  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approvedForSyndication,
    this.mediaMetadata,
  });

  Media copyWith({
    String? type,
    String? subtype,
    String? caption,
    String? copyright,
    int? approvedForSyndication,
    List<MediaMetadata>? mediaMetadata,
  }) {
    return Media(
      type: type ?? this.type,
      subtype: subtype ?? this.subtype,
      caption: caption ?? this.caption,
      copyright: copyright ?? this.copyright,
      approvedForSyndication:
          approvedForSyndication ?? this.approvedForSyndication,
      mediaMetadata: mediaMetadata ?? this.mediaMetadata,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'subtype': subtype,
      'caption': caption,
      'copyright': copyright,
      'approvedForSyndication': approvedForSyndication,
      "media-metadata": mediaMetadata?.map((x) => x.toMap()).toList(),
    };
  }

  factory Media.fromMap(Map<String, dynamic> map) {
    return Media(
      type: map['type'] != null ? map['type'] as String : null,
      subtype: map['subtype'] != null ? map['subtype'] as String : null,
      caption: map['caption'] != null ? map['caption'] as String : null,
      copyright: map['copyright'] != null ? map['copyright'] as String : null,
      approvedForSyndication: map['approvedForSyndication'] != null
          ? map['approvedForSyndication'] as int
          : null,
      mediaMetadata: map["media-metadata"] != null
          ? List<MediaMetadata>.from(
              (map["media-metadata"] as List).map<MediaMetadata?>(
                (x) => MediaMetadata.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Media.fromJson(String source) =>
      Media.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Media(type: $type, subtype: $subtype, caption: $caption, copyright: $copyright, approvedForSyndication: $approvedForSyndication, mediaMetadata: $mediaMetadata)';
  }

  @override
  bool operator ==(covariant Media other) {
    if (identical(this, other)) return true;

    return other.type == type &&
        other.subtype == subtype &&
        other.caption == caption &&
        other.copyright == copyright &&
        other.approvedForSyndication == approvedForSyndication &&
        listEquals(other.mediaMetadata, mediaMetadata);
  }

  @override
  int get hashCode {
    return type.hashCode ^
        subtype.hashCode ^
        caption.hashCode ^
        copyright.hashCode ^
        approvedForSyndication.hashCode ^
        mediaMetadata.hashCode;
  }
}

class MediaMetadata {
  String? url;
  String? format;
  int? height;
  int? width;
  MediaMetadata({
    this.url,
    this.format,
    this.height,
    this.width,
  });

  MediaMetadata copyWith({
    String? url,
    String? format,
    int? height,
    int? width,
  }) {
    return MediaMetadata(
      url: url ?? this.url,
      format: format ?? this.format,
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'format': format,
      'height': height,
      'width': width,
    };
  }

  factory MediaMetadata.fromMap(Map<String, dynamic> map) {
    return MediaMetadata(
      url: map['url'] != null ? map['url'] as String : null,
      format: map['format'] != null ? map['format'] as String : null,
      height: map['height'] != null ? map['height'] as int : null,
      width: map['width'] != null ? map['width'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MediaMetadata.fromJson(String source) =>
      MediaMetadata.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MediaMetadata(url: $url, format: $format, height: $height, width: $width)';
  }

  @override
  bool operator ==(covariant MediaMetadata other) {
    if (identical(this, other)) return true;

    return other.url == url &&
        other.format == format &&
        other.height == height &&
        other.width == width;
  }

  @override
  int get hashCode {
    return url.hashCode ^ format.hashCode ^ height.hashCode ^ width.hashCode;
  }
}
