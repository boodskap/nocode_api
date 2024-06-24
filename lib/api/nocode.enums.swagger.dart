import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum OrganizationOrganizationState {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('DISABLED')
  disabled('DISABLED');

  final String? value;

  const OrganizationOrganizationState(this.value);
}

enum SubscriptionSubscriptionState {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('DISABLED')
  disabled('DISABLED');

  final String? value;

  const SubscriptionSubscriptionState(this.value);
}

enum SubscriptionSubscriptionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('FREE')
  free('FREE'),
  @JsonValue('PAID')
  paid('PAID');

  final String? value;

  const SubscriptionSubscriptionType(this.value);
}

enum ApplicationTarget {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NOCODEAPP')
  nocodeapp('NOCODEAPP'),
  @JsonValue('IOTAPP')
  iotapp('IOTAPP');

  final String? value;

  const ApplicationTarget(this.value);
}

enum ApplicationApplicationState {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('DISABLED')
  disabled('DISABLED');

  final String? value;

  const ApplicationApplicationState(this.value);
}

enum PagePageState {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('DISABLED')
  disabled('DISABLED'),
  @JsonValue('ARCHIVED')
  archived('ARCHIVED'),
  @JsonValue('HIDDEN')
  hidden('HIDDEN');

  final String? value;

  const PagePageState(this.value);
}

enum ImageFileInfoImageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BANNER')
  banner('BANNER'),
  @JsonValue('IMAGE')
  image('IMAGE'),
  @JsonValue('ICON')
  icon('ICON');

  final String? value;

  const ImageFileInfoImageType(this.value);
}

enum ImageFileInfoImageTarget {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ORG')
  org('ORG'),
  @JsonValue('TEAM')
  team('TEAM'),
  @JsonValue('APP')
  app('APP'),
  @JsonValue('PAGE')
  page('PAGE'),
  @JsonValue('ASSET')
  asset('ASSET');

  final String? value;

  const ImageFileInfoImageTarget(this.value);
}

enum ImageFileImageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BANNER')
  banner('BANNER'),
  @JsonValue('IMAGE')
  image('IMAGE'),
  @JsonValue('ICON')
  icon('ICON');

  final String? value;

  const ImageFileImageType(this.value);
}

enum ImageFileImageTarget {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ORG')
  org('ORG'),
  @JsonValue('TEAM')
  team('TEAM'),
  @JsonValue('APP')
  app('APP'),
  @JsonValue('PAGE')
  page('PAGE'),
  @JsonValue('ASSET')
  asset('ASSET');

  final String? value;

  const ImageFileImageTarget(this.value);
}

enum PlanInfoPlanType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BASIC')
  basic('BASIC'),
  @JsonValue('STANDARD')
  standard('STANDARD'),
  @JsonValue('PROFESSIONAL')
  professional('PROFESSIONAL'),
  @JsonValue('ENTERPRISE')
  enterprise('ENTERPRISE'),
  @JsonValue('CUSTOM')
  custom('CUSTOM');

  final String? value;

  const PlanInfoPlanType(this.value);
}

enum PlanPlanType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BASIC')
  basic('BASIC'),
  @JsonValue('STANDARD')
  standard('STANDARD'),
  @JsonValue('PROFESSIONAL')
  professional('PROFESSIONAL'),
  @JsonValue('ENTERPRISE')
  enterprise('ENTERPRISE'),
  @JsonValue('CUSTOM')
  custom('CUSTOM');

  final String? value;

  const PlanPlanType(this.value);
}

enum ApplicationCreateTargetOrgIdTeamIdPostTarget {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NOCODEAPP')
  nocodeapp('NOCODEAPP'),
  @JsonValue('IOTAPP')
  iotapp('IOTAPP');

  final String? value;

  const ApplicationCreateTargetOrgIdTeamIdPostTarget(this.value);
}

enum ApplicationSearchTargetOrgIdTeamIdPostTarget {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NOCODEAPP')
  nocodeapp('NOCODEAPP'),
  @JsonValue('IOTAPP')
  iotapp('IOTAPP');

  final String? value;

  const ApplicationSearchTargetOrgIdTeamIdPostTarget(this.value);
}

enum ApplicationListTargetOrgIdTeamIdPostTarget {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NOCODEAPP')
  nocodeapp('NOCODEAPP'),
  @JsonValue('IOTAPP')
  iotapp('IOTAPP');

  final String? value;

  const ApplicationListTargetOrgIdTeamIdPostTarget(this.value);
}

enum ImageUploadImageTypePostImageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ORGIMAGE')
  orgimage('ORGIMAGE'),
  @JsonValue('ORGBANNER')
  orgbanner('ORGBANNER'),
  @JsonValue('ORGICON')
  orgicon('ORGICON'),
  @JsonValue('TEAMIMAGE')
  teamimage('TEAMIMAGE'),
  @JsonValue('TEAMBANNER')
  teambanner('TEAMBANNER'),
  @JsonValue('TEAMICON')
  teamicon('TEAMICON'),
  @JsonValue('APPIMAGE')
  appimage('APPIMAGE'),
  @JsonValue('APPBANNER')
  appbanner('APPBANNER'),
  @JsonValue('APPICON')
  appicon('APPICON'),
  @JsonValue('PAGEBANNER')
  pagebanner('PAGEBANNER'),
  @JsonValue('PAGEIMAGE')
  pageimage('PAGEIMAGE'),
  @JsonValue('PAGEICON')
  pageicon('PAGEICON'),
  @JsonValue('ASSETIMAGE')
  assetimage('ASSETIMAGE');

  final String? value;

  const ImageUploadImageTypePostImageType(this.value);
}

enum ImageSearchImageTypePostImageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ORGIMAGE')
  orgimage('ORGIMAGE'),
  @JsonValue('ORGBANNER')
  orgbanner('ORGBANNER'),
  @JsonValue('ORGICON')
  orgicon('ORGICON'),
  @JsonValue('TEAMIMAGE')
  teamimage('TEAMIMAGE'),
  @JsonValue('TEAMBANNER')
  teambanner('TEAMBANNER'),
  @JsonValue('TEAMICON')
  teamicon('TEAMICON'),
  @JsonValue('APPIMAGE')
  appimage('APPIMAGE'),
  @JsonValue('APPBANNER')
  appbanner('APPBANNER'),
  @JsonValue('APPICON')
  appicon('APPICON'),
  @JsonValue('PAGEBANNER')
  pagebanner('PAGEBANNER'),
  @JsonValue('PAGEIMAGE')
  pageimage('PAGEIMAGE'),
  @JsonValue('PAGEICON')
  pageicon('PAGEICON'),
  @JsonValue('ASSETIMAGE')
  assetimage('ASSETIMAGE');

  final String? value;

  const ImageSearchImageTypePostImageType(this.value);
}

enum ImageListImageTypePostImageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ORGIMAGE')
  orgimage('ORGIMAGE'),
  @JsonValue('ORGBANNER')
  orgbanner('ORGBANNER'),
  @JsonValue('ORGICON')
  orgicon('ORGICON'),
  @JsonValue('TEAMIMAGE')
  teamimage('TEAMIMAGE'),
  @JsonValue('TEAMBANNER')
  teambanner('TEAMBANNER'),
  @JsonValue('TEAMICON')
  teamicon('TEAMICON'),
  @JsonValue('APPIMAGE')
  appimage('APPIMAGE'),
  @JsonValue('APPBANNER')
  appbanner('APPBANNER'),
  @JsonValue('APPICON')
  appicon('APPICON'),
  @JsonValue('PAGEBANNER')
  pagebanner('PAGEBANNER'),
  @JsonValue('PAGEIMAGE')
  pageimage('PAGEIMAGE'),
  @JsonValue('PAGEICON')
  pageicon('PAGEICON'),
  @JsonValue('ASSETIMAGE')
  assetimage('ASSETIMAGE');

  final String? value;

  const ImageListImageTypePostImageType(this.value);
}
