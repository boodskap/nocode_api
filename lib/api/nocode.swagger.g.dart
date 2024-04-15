// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nocode.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoCodeTemplate _$NoCodeTemplateFromJson(Map<String, dynamic> json) =>
    NoCodeTemplate(
      className: json['className'] as String? ?? '',
    );

Map<String, dynamic> _$NoCodeTemplateToJson(NoCodeTemplate instance) =>
    <String, dynamic>{
      'className': instance.className,
    };

BaseEntity _$BaseEntityFromJson(Map<String, dynamic> json) => BaseEntity(
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
    );

Map<String, dynamic> _$BaseEntityToJson(BaseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rtype': instance.rtype,
      'createdBy': instance.createdBy,
      'createdStamp': instance.createdStamp,
      'updatedBy': instance.updatedBy,
      'updatedStamp': instance.updatedStamp,
      'domainKey': instance.domainKey,
    };

BaseRes _$BaseResFromJson(Map<String, dynamic> json) => BaseRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$BaseResToJson(BaseRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

BaseListRes _$BaseListResFromJson(Map<String, dynamic> json) => BaseListRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      total: json['total'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$BaseListResToJson(BaseListRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}

ListReq _$ListReqFromJson(Map<String, dynamic> json) => ListReq(
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$ListReqToJson(ListReq instance) => <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

SearchReq _$SearchReqFromJson(Map<String, dynamic> json) => SearchReq(
      search: json['search'] as String? ?? '',
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$SearchReqToJson(SearchReq instance) => <String, dynamic>{
      'search': instance.search,
      'page': instance.page,
      'size': instance.size,
    };

ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) => ProfileInfo(
      address: json['address'] as String? ?? '',
      email: json['email'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      website: json['website'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : ProfileSettings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileInfoToJson(ProfileInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  val['email'] = instance.email;
  val['name'] = instance.name;
  writeNotNull('phone', instance.phone);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  return val;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      address: json['address'] as String? ?? '',
      email: json['email'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      website: json['website'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : ProfileSettings.fromJson(json['settings'] as Map<String, dynamic>),
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  val['email'] = instance.email;
  val['name'] = instance.name;
  writeNotNull('phone', instance.phone);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  return val;
}

ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) =>
    ProfileEntity(
      entity: json['entity'] == null
          ? null
          : Profile.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileEntityToJson(ProfileEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

ProfileEntityRes _$ProfileEntityResFromJson(Map<String, dynamic> json) =>
    ProfileEntityRes(
      entity: json['entity'] == null
          ? null
          : Profile.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$ProfileEntityResToJson(ProfileEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

OrgProfileBase _$OrgProfileBaseFromJson(Map<String, dynamic> json) =>
    OrgProfileBase(
      subscribed: json['subscribed'] as bool? ?? false,
      orgId: json['orgId'] as String? ?? '',
      profileId: json['profileId'] as String? ?? '',
    );

Map<String, dynamic> _$OrgProfileBaseToJson(OrgProfileBase instance) =>
    <String, dynamic>{
      'subscribed': instance.subscribed,
      'orgId': instance.orgId,
      'profileId': instance.profileId,
    };

OrgProfile _$OrgProfileFromJson(Map<String, dynamic> json) => OrgProfile(
      address: json['address'] as String? ?? '',
      email: json['email'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      website: json['website'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : ProfileSettings.fromJson(json['settings'] as Map<String, dynamic>),
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
      subscribed: json['subscribed'] as bool? ?? false,
      orgId: json['orgId'] as String? ?? '',
      profileId: json['profileId'] as String? ?? '',
    );

Map<String, dynamic> _$OrgProfileToJson(OrgProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  val['email'] = instance.email;
  val['name'] = instance.name;
  writeNotNull('phone', instance.phone);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  val['subscribed'] = instance.subscribed;
  val['orgId'] = instance.orgId;
  val['profileId'] = instance.profileId;
  return val;
}

OrgProfileEntity _$OrgProfileEntityFromJson(Map<String, dynamic> json) =>
    OrgProfileEntity(
      entity: json['entity'] == null
          ? null
          : OrgProfile.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrgProfileEntityToJson(OrgProfileEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

OrgProfileEntityRes _$OrgProfileEntityResFromJson(Map<String, dynamic> json) =>
    OrgProfileEntityRes(
      entity: json['entity'] == null
          ? null
          : OrgProfile.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$OrgProfileEntityResToJson(OrgProfileEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

OrgProfileArray _$OrgProfileArrayFromJson(Map<String, dynamic> json) =>
    OrgProfileArray(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => OrgProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OrgProfileArrayToJson(OrgProfileArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}

OrgProfileArrayRes _$OrgProfileArrayResFromJson(Map<String, dynamic> json) =>
    OrgProfileArrayRes(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => OrgProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      total: json['total'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$OrgProfileArrayResToJson(OrgProfileArrayRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}

TeamProfileBase _$TeamProfileBaseFromJson(Map<String, dynamic> json) =>
    TeamProfileBase(
      teamId: json['teamId'] as String? ?? '',
    );

Map<String, dynamic> _$TeamProfileBaseToJson(TeamProfileBase instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
    };

TeamProfile _$TeamProfileFromJson(Map<String, dynamic> json) => TeamProfile(
      address: json['address'] as String? ?? '',
      email: json['email'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      website: json['website'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : ProfileSettings.fromJson(json['settings'] as Map<String, dynamic>),
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
      subscribed: json['subscribed'] as bool? ?? false,
      orgId: json['orgId'] as String? ?? '',
      profileId: json['profileId'] as String? ?? '',
      teamId: json['teamId'] as String? ?? '',
    );

Map<String, dynamic> _$TeamProfileToJson(TeamProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  val['email'] = instance.email;
  val['name'] = instance.name;
  writeNotNull('phone', instance.phone);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  val['subscribed'] = instance.subscribed;
  val['orgId'] = instance.orgId;
  val['profileId'] = instance.profileId;
  val['teamId'] = instance.teamId;
  return val;
}

TeamProfileEntity _$TeamProfileEntityFromJson(Map<String, dynamic> json) =>
    TeamProfileEntity(
      entity: json['entity'] == null
          ? null
          : TeamProfile.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamProfileEntityToJson(TeamProfileEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

TeamProfileEntityRes _$TeamProfileEntityResFromJson(
        Map<String, dynamic> json) =>
    TeamProfileEntityRes(
      entity: json['entity'] == null
          ? null
          : TeamProfile.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$TeamProfileEntityResToJson(
    TeamProfileEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

TeamProfileArray _$TeamProfileArrayFromJson(Map<String, dynamic> json) =>
    TeamProfileArray(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => TeamProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TeamProfileArrayToJson(TeamProfileArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}

TeamProfileArrayRes _$TeamProfileArrayResFromJson(Map<String, dynamic> json) =>
    TeamProfileArrayRes(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => TeamProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      total: json['total'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$TeamProfileArrayResToJson(TeamProfileArrayRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}

OrganizationInfo _$OrganizationInfoFromJson(Map<String, dynamic> json) =>
    OrganizationInfo(
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      website: json['website'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : OrganizationSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationInfoToJson(OrganizationInfo instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  return val;
}

Organization _$OrganizationFromJson(Map<String, dynamic> json) => Organization(
      profileId: json['profileId'] as String? ?? '',
      organizationState:
          organizationOrganizationStateFromJson(json['organizationState']),
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      website: json['website'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : OrganizationSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
    );

Map<String, dynamic> _$OrganizationToJson(Organization instance) {
  final val = <String, dynamic>{
    'profileId': instance.profileId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('organizationState',
      organizationOrganizationStateToJson(instance.organizationState));
  val['name'] = instance.name;
  writeNotNull('address', instance.address);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  return val;
}

OrganizationEntity _$OrganizationEntityFromJson(Map<String, dynamic> json) =>
    OrganizationEntity(
      entity: json['entity'] == null
          ? null
          : Organization.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationEntityToJson(OrganizationEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

OrganizationEntityRes _$OrganizationEntityResFromJson(
        Map<String, dynamic> json) =>
    OrganizationEntityRes(
      entity: json['entity'] == null
          ? null
          : Organization.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$OrganizationEntityResToJson(
    OrganizationEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

OrganizationArray _$OrganizationArrayFromJson(Map<String, dynamic> json) =>
    OrganizationArray(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Organization.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OrganizationArrayToJson(OrganizationArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}

OrganizationArrayRes _$OrganizationArrayResFromJson(
        Map<String, dynamic> json) =>
    OrganizationArrayRes(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Organization.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      total: json['total'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$OrganizationArrayResToJson(
    OrganizationArrayRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      orgId: json['orgId'] as String? ?? '',
      profileId: json['profileId'] as String? ?? '',
      subscriptionState:
          subscriptionSubscriptionStateFromJson(json['subscriptionState']),
      subscriptionType:
          subscriptionSubscriptionTypeFromJson(json['subscriptionType']),
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{
    'orgId': instance.orgId,
    'profileId': instance.profileId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subscriptionState',
      subscriptionSubscriptionStateToJson(instance.subscriptionState));
  writeNotNull('subscriptionType',
      subscriptionSubscriptionTypeToJson(instance.subscriptionType));
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  return val;
}

SubscriptionEntity _$SubscriptionEntityFromJson(Map<String, dynamic> json) =>
    SubscriptionEntity(
      entity: json['entity'] == null
          ? null
          : Subscription.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionEntityToJson(SubscriptionEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

SubscriptionEntityRes _$SubscriptionEntityResFromJson(
        Map<String, dynamic> json) =>
    SubscriptionEntityRes(
      entity: json['entity'] == null
          ? null
          : Subscription.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$SubscriptionEntityResToJson(
    SubscriptionEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

TeamInfo _$TeamInfoFromJson(Map<String, dynamic> json) => TeamInfo(
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      website: json['website'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : TeamSettings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamInfoToJson(TeamInfo instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  return val;
}

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      orgId: json['orgId'] as String? ?? '',
      profileId: json['profileId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      website: json['website'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : TeamSettings.fromJson(json['settings'] as Map<String, dynamic>),
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
    );

Map<String, dynamic> _$TeamToJson(Team instance) {
  final val = <String, dynamic>{
    'orgId': instance.orgId,
    'profileId': instance.profileId,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  return val;
}

TeamEntity _$TeamEntityFromJson(Map<String, dynamic> json) => TeamEntity(
      entity: json['entity'] == null
          ? null
          : Team.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamEntityToJson(TeamEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

TeamEntityRes _$TeamEntityResFromJson(Map<String, dynamic> json) =>
    TeamEntityRes(
      entity: json['entity'] == null
          ? null
          : Team.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$TeamEntityResToJson(TeamEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

TeamArray _$TeamArrayFromJson(Map<String, dynamic> json) => TeamArray(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Team.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TeamArrayToJson(TeamArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}

TeamArrayRes _$TeamArrayResFromJson(Map<String, dynamic> json) => TeamArrayRes(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Team.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      total: json['total'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$TeamArrayResToJson(TeamArrayRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}

ApplicationInfo _$ApplicationInfoFromJson(Map<String, dynamic> json) =>
    ApplicationInfo(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      website: json['website'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : ApplicationSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationInfoToJson(ApplicationInfo instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('website', instance.website);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  return val;
}

ApplicationModel _$ApplicationModelFromJson(Map<String, dynamic> json) =>
    ApplicationModel(
      modelJson: json['modelJson'] as String? ?? '',
    );

Map<String, dynamic> _$ApplicationModelToJson(ApplicationModel instance) =>
    <String, dynamic>{
      'modelJson': instance.modelJson,
    };

Application _$ApplicationFromJson(Map<String, dynamic> json) => Application(
      orgId: json['orgId'] as String? ?? '',
      teamId: json['teamId'] as String? ?? '',
      target: applicationTargetFromJson(json['target']),
      applicationState:
          applicationApplicationStateFromJson(json['applicationState']),
      freePages: json['freePages'] as int,
      paidPages: json['paidPages'] as int,
      canBuildAndroid: json['canBuildAndroid'] as bool? ?? false,
      canBuildIoS: json['canBuildIoS'] as bool? ?? false,
      canBuildLinux: json['canBuildLinux'] as bool? ?? false,
      canBuildMacos: json['canBuildMacos'] as bool? ?? false,
      canBuildWindows: json['canBuildWindows'] as bool? ?? false,
      canBuildWeb: json['canBuildWeb'] as bool? ?? true,
      canExport: json['canExport'] as bool? ?? true,
      canDeploy: json['canDeploy'] as bool? ?? true,
      modelJson: json['modelJson'] as String? ?? '',
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      website: json['website'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      settings: json['settings'] == null
          ? null
          : ApplicationSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationToJson(Application instance) {
  final val = <String, dynamic>{
    'orgId': instance.orgId,
    'teamId': instance.teamId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('target', applicationTargetToJson(instance.target));
  writeNotNull('applicationState',
      applicationApplicationStateToJson(instance.applicationState));
  val['freePages'] = instance.freePages;
  val['paidPages'] = instance.paidPages;
  writeNotNull('canBuildAndroid', instance.canBuildAndroid);
  writeNotNull('canBuildIoS', instance.canBuildIoS);
  writeNotNull('canBuildLinux', instance.canBuildLinux);
  writeNotNull('canBuildMacos', instance.canBuildMacos);
  writeNotNull('canBuildWindows', instance.canBuildWindows);
  writeNotNull('canBuildWeb', instance.canBuildWeb);
  writeNotNull('canExport', instance.canExport);
  writeNotNull('canDeploy', instance.canDeploy);
  val['modelJson'] = instance.modelJson;
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('website', instance.website);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('settings', instance.settings?.toJson());
  return val;
}

ApplicationEntity _$ApplicationEntityFromJson(Map<String, dynamic> json) =>
    ApplicationEntity(
      entity: json['entity'] == null
          ? null
          : Application.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationEntityToJson(ApplicationEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

ApplicationEntityRes _$ApplicationEntityResFromJson(
        Map<String, dynamic> json) =>
    ApplicationEntityRes(
      entity: json['entity'] == null
          ? null
          : Application.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$ApplicationEntityResToJson(
    ApplicationEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

ApplicationArray _$ApplicationArrayFromJson(Map<String, dynamic> json) =>
    ApplicationArray(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Application.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApplicationArrayToJson(ApplicationArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}

ApplicationArrayRes _$ApplicationArrayResFromJson(Map<String, dynamic> json) =>
    ApplicationArrayRes(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Application.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      total: json['total'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$ApplicationArrayResToJson(ApplicationArrayRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => PageInfo(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      desktopBgImage: json['desktopBgImage'] as String? ?? '',
      tabBgImage: json['tabBgImage'] as String? ?? '',
      mobileBgImage: json['mobileBgImage'] as String? ?? '',
      bgColor: json['bgColor'] as int?,
      settings: json['settings'] == null
          ? null
          : PageSettings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('desktopBgImage', instance.desktopBgImage);
  writeNotNull('tabBgImage', instance.tabBgImage);
  writeNotNull('mobileBgImage', instance.mobileBgImage);
  writeNotNull('bgColor', instance.bgColor);
  writeNotNull('settings', instance.settings?.toJson());
  return val;
}

PageModel _$PageModelFromJson(Map<String, dynamic> json) => PageModel(
      modelJson: json['modelJson'] as String? ?? '',
    );

Map<String, dynamic> _$PageModelToJson(PageModel instance) => <String, dynamic>{
      'modelJson': instance.modelJson,
    };

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      orgId: json['orgId'] as String? ?? '',
      teamId: json['teamId'] as String? ?? '',
      appId: json['appId'] as String? ?? '',
      pageState: pagePageStateFromJson(json['pageState']),
      lockedBy: json['lockedBy'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      landscapeBanner: json['landscapeBanner'] as String? ?? '',
      portraitBanner: json['portraitBanner'] as String? ?? '',
      desktopBgImage: json['desktopBgImage'] as String? ?? '',
      tabBgImage: json['tabBgImage'] as String? ?? '',
      mobileBgImage: json['mobileBgImage'] as String? ?? '',
      bgColor: json['bgColor'] as int?,
      settings: json['settings'] == null
          ? null
          : PageSettings.fromJson(json['settings'] as Map<String, dynamic>),
      modelJson: json['modelJson'] as String? ?? '',
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
    );

Map<String, dynamic> _$PageToJson(Page instance) {
  final val = <String, dynamic>{
    'orgId': instance.orgId,
    'teamId': instance.teamId,
    'appId': instance.appId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pageState', pagePageStateToJson(instance.pageState));
  val['lockedBy'] = instance.lockedBy;
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  writeNotNull('logo', instance.logo);
  writeNotNull('landscapeBanner', instance.landscapeBanner);
  writeNotNull('portraitBanner', instance.portraitBanner);
  writeNotNull('desktopBgImage', instance.desktopBgImage);
  writeNotNull('tabBgImage', instance.tabBgImage);
  writeNotNull('mobileBgImage', instance.mobileBgImage);
  writeNotNull('bgColor', instance.bgColor);
  writeNotNull('settings', instance.settings?.toJson());
  val['modelJson'] = instance.modelJson;
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  return val;
}

PageEntity _$PageEntityFromJson(Map<String, dynamic> json) => PageEntity(
      entity: json['entity'] == null
          ? null
          : Page.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageEntityToJson(PageEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

PageEntityRes _$PageEntityResFromJson(Map<String, dynamic> json) =>
    PageEntityRes(
      entity: json['entity'] == null
          ? null
          : Page.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$PageEntityResToJson(PageEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

PageArray _$PageArrayFromJson(Map<String, dynamic> json) => PageArray(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PageArrayToJson(PageArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}

PageArrayRes _$PageArrayResFromJson(Map<String, dynamic> json) => PageArrayRes(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      total: json['total'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$PageArrayResToJson(PageArrayRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}

ImageFileInfo _$ImageFileInfoFromJson(Map<String, dynamic> json) =>
    ImageFileInfo(
      imageType: imageFileInfoImageTypeFromJson(json['imageType']),
      imageTarget: imageFileInfoImageTargetFromJson(json['imageTarget']),
      name: json['name'] as String? ?? '',
      orgId: json['orgId'] as String? ?? '',
      teamId: json['teamId'] as String? ?? '',
      appId: json['appId'] as String? ?? '',
      pageId: json['pageId'] as String? ?? '',
    );

Map<String, dynamic> _$ImageFileInfoToJson(ImageFileInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageType', imageFileInfoImageTypeToJson(instance.imageType));
  writeNotNull(
      'imageTarget', imageFileInfoImageTargetToJson(instance.imageTarget));
  val['name'] = instance.name;
  val['orgId'] = instance.orgId;
  writeNotNull('teamId', instance.teamId);
  writeNotNull('appId', instance.appId);
  writeNotNull('pageId', instance.pageId);
  return val;
}

ImageFile _$ImageFileFromJson(Map<String, dynamic> json) => ImageFile(
      contentType: json['contentType'] as String? ?? '',
      imageType: imageFileImageTypeFromJson(json['imageType']),
      imageTarget: imageFileImageTargetFromJson(json['imageTarget']),
      name: json['name'] as String? ?? '',
      orgId: json['orgId'] as String? ?? '',
      teamId: json['teamId'] as String? ?? '',
      appId: json['appId'] as String? ?? '',
      pageId: json['pageId'] as String? ?? '',
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdStamp: json['createdStamp'] as int,
      updatedBy: json['updatedBy'] as String? ?? '',
      updatedStamp: json['updatedStamp'] as int,
      domainKey: json['domainKey'] as String? ?? '',
    );

Map<String, dynamic> _$ImageFileToJson(ImageFile instance) {
  final val = <String, dynamic>{
    'contentType': instance.contentType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageType', imageFileImageTypeToJson(instance.imageType));
  writeNotNull('imageTarget', imageFileImageTargetToJson(instance.imageTarget));
  val['name'] = instance.name;
  val['orgId'] = instance.orgId;
  writeNotNull('teamId', instance.teamId);
  writeNotNull('appId', instance.appId);
  writeNotNull('pageId', instance.pageId);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['createdBy'] = instance.createdBy;
  val['createdStamp'] = instance.createdStamp;
  val['updatedBy'] = instance.updatedBy;
  val['updatedStamp'] = instance.updatedStamp;
  val['domainKey'] = instance.domainKey;
  return val;
}

ImageFileEntity _$ImageFileEntityFromJson(Map<String, dynamic> json) =>
    ImageFileEntity(
      entity: json['entity'] == null
          ? null
          : ImageFile.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageFileEntityToJson(ImageFileEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  return val;
}

ImageFileEntityRes _$ImageFileEntityResFromJson(Map<String, dynamic> json) =>
    ImageFileEntityRes(
      entity: json['entity'] == null
          ? null
          : ImageFile.fromJson(json['entity'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
    );

Map<String, dynamic> _$ImageFileEntityResToJson(ImageFileEntityRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  return val;
}

ImageFileArray _$ImageFileArrayFromJson(Map<String, dynamic> json) =>
    ImageFileArray(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => ImageFile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ImageFileArrayToJson(ImageFileArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}

ImageFileArrayRes _$ImageFileArrayResFromJson(Map<String, dynamic> json) =>
    ImageFileArrayRes(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => ImageFile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      total: json['total'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$ImageFileArrayResToJson(ImageFileArrayRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('size', instance.size);
  return val;
}

OrgTeam _$OrgTeamFromJson(Map<String, dynamic> json) => OrgTeam(
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      teams: (json['teams'] as List<dynamic>?)
              ?.map((e) => Team.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OrgTeamToJson(OrgTeam instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('organization', instance.organization?.toJson());
  writeNotNull('subscription', instance.subscription?.toJson());
  writeNotNull('teams', instance.teams?.map((e) => e.toJson()).toList());
  return val;
}

AppProfile _$AppProfileFromJson(Map<String, dynamic> json) => AppProfile(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      errorCode: json['errorCode'] as String? ?? '',
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      orgTeams: (json['orgTeams'] as List<dynamic>?)
              ?.map((e) => OrgTeam.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AppProfileToJson(AppProfile instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('profile', instance.profile?.toJson());
  writeNotNull('orgTeams', instance.orgTeams?.map((e) => e.toJson()).toList());
  return val;
}

BaseSettings _$BaseSettingsFromJson(Map<String, dynamic> json) => BaseSettings(
      font: json['font'] as String? ?? '',
      fontSize: json['fontSize'] as int,
      fontColor: json['fontColor'] as int,
    );

Map<String, dynamic> _$BaseSettingsToJson(BaseSettings instance) =>
    <String, dynamic>{
      'font': instance.font,
      'fontSize': instance.fontSize,
      'fontColor': instance.fontColor,
    };

ProfileSettings _$ProfileSettingsFromJson(Map<String, dynamic> json) =>
    ProfileSettings(
      stripeCustomerId: json['stripeCustomerId'] as String? ?? '',
      stripeNoCodeSubscriptionId:
          json['stripeNoCodeSubscriptionId'] as String? ?? '',
      font: json['font'] as String? ?? '',
      fontSize: json['fontSize'] as int,
      fontColor: json['fontColor'] as int,
    );

Map<String, dynamic> _$ProfileSettingsToJson(ProfileSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stripeCustomerId', instance.stripeCustomerId);
  writeNotNull(
      'stripeNoCodeSubscriptionId', instance.stripeNoCodeSubscriptionId);
  val['font'] = instance.font;
  val['fontSize'] = instance.fontSize;
  val['fontColor'] = instance.fontColor;
  return val;
}

OrganizationSettings _$OrganizationSettingsFromJson(
        Map<String, dynamic> json) =>
    OrganizationSettings(
      applicationTitle: json['applicationTitle'] as String? ?? '',
      applicationTheme: json['applicationTheme'] as String? ?? '',
      selfRegistrationDomain: json['selfRegistrationDomain'] as String? ?? '',
      enableSelfRegistration: json['enableSelfRegistration'] as bool? ?? false,
      autoApproveSelfRegistration:
          json['autoApproveSelfRegistration'] as bool? ?? true,
      twinDomainKey: json['twinDomainKey'] as String? ?? '',
      twinApiKey: json['twinApiKey'] as String? ?? '',
      twinAccountId: json['twinAccountId'] as String? ?? '',
      twinPlanId: json['twinPlanId'] as String? ?? '',
      stripeCustomerId: json['stripeCustomerId'] as String? ?? '',
      stripeNoCodeDeveloperSubscriptionId:
          json['stripeNoCodeDeveloperSubscriptionId'] as String? ?? '',
      stripeNoCodeMemberSubscriptionIds:
          (json['stripeNoCodeMemberSubscriptionIds'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      stripeNoCodeAppInvoiceIds:
          (json['stripeNoCodeAppInvoiceIds'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      stripeNoCodePageInvoiceIds:
          (json['stripeNoCodePageInvoiceIds'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      stripeTwinUserSubscriptionIds:
          (json['stripeTwinUserSubscriptionIds'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      stripeTwinDeviceSubscriptionIds:
          (json['stripeTwinDeviceSubscriptionIds'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      font: json['font'] as String? ?? '',
      fontSize: json['fontSize'] as int,
      fontColor: json['fontColor'] as int,
    );

Map<String, dynamic> _$OrganizationSettingsToJson(
    OrganizationSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationTitle', instance.applicationTitle);
  writeNotNull('applicationTheme', instance.applicationTheme);
  writeNotNull('selfRegistrationDomain', instance.selfRegistrationDomain);
  writeNotNull('enableSelfRegistration', instance.enableSelfRegistration);
  writeNotNull(
      'autoApproveSelfRegistration', instance.autoApproveSelfRegistration);
  writeNotNull('twinDomainKey', instance.twinDomainKey);
  writeNotNull('twinApiKey', instance.twinApiKey);
  writeNotNull('twinAccountId', instance.twinAccountId);
  writeNotNull('twinPlanId', instance.twinPlanId);
  writeNotNull('stripeCustomerId', instance.stripeCustomerId);
  writeNotNull('stripeNoCodeDeveloperSubscriptionId',
      instance.stripeNoCodeDeveloperSubscriptionId);
  writeNotNull('stripeNoCodeMemberSubscriptionIds',
      instance.stripeNoCodeMemberSubscriptionIds);
  writeNotNull('stripeNoCodeAppInvoiceIds', instance.stripeNoCodeAppInvoiceIds);
  writeNotNull(
      'stripeNoCodePageInvoiceIds', instance.stripeNoCodePageInvoiceIds);
  writeNotNull(
      'stripeTwinUserSubscriptionIds', instance.stripeTwinUserSubscriptionIds);
  writeNotNull('stripeTwinDeviceSubscriptionIds',
      instance.stripeTwinDeviceSubscriptionIds);
  val['font'] = instance.font;
  val['fontSize'] = instance.fontSize;
  val['fontColor'] = instance.fontColor;
  return val;
}

TeamSettings _$TeamSettingsFromJson(Map<String, dynamic> json) => TeamSettings(
      font: json['font'] as String? ?? '',
      fontSize: json['fontSize'] as int,
      fontColor: json['fontColor'] as int,
    );

Map<String, dynamic> _$TeamSettingsToJson(TeamSettings instance) =>
    <String, dynamic>{
      'font': instance.font,
      'fontSize': instance.fontSize,
      'fontColor': instance.fontColor,
    };

ApplicationSettings _$ApplicationSettingsFromJson(Map<String, dynamic> json) =>
    ApplicationSettings(
      stripeInvoiceId: json['stripeInvoiceId'] as String? ?? '',
      font: json['font'] as String? ?? '',
      fontSize: json['fontSize'] as int,
      fontColor: json['fontColor'] as int,
    );

Map<String, dynamic> _$ApplicationSettingsToJson(ApplicationSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stripeInvoiceId', instance.stripeInvoiceId);
  val['font'] = instance.font;
  val['fontSize'] = instance.fontSize;
  val['fontColor'] = instance.fontColor;
  return val;
}

PageSettings _$PageSettingsFromJson(Map<String, dynamic> json) => PageSettings(
      stripeInvoiceId: json['stripeInvoiceId'] as String? ?? '',
      font: json['font'] as String? ?? '',
      fontSize: json['fontSize'] as int,
      fontColor: json['fontColor'] as int,
    );

Map<String, dynamic> _$PageSettingsToJson(PageSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stripeInvoiceId', instance.stripeInvoiceId);
  val['font'] = instance.font;
  val['fontSize'] = instance.fontSize;
  val['fontColor'] = instance.fontColor;
  return val;
}
