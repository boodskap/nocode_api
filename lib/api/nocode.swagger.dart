// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'nocode.enums.swagger.dart' as enums;
export 'nocode.enums.swagger.dart';

part 'nocode.swagger.chopper.dart';
part 'nocode.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Nocode extends ChopperService {
  static Nocode create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Nocode(client);
    }

    final newClient = ChopperClient(
        services: [_$Nocode()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://lbdev.boodskap.io/rest/nocode'));
    return _$Nocode(newClient);
  }

  ///Cleanup entire data
  Future<chopper.Response<BaseRes>> cleanup({dynamic token}) {
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _cleanup(token: token?.toString());
  }

  ///Cleanup entire data
  @Delete(path: '/NoCode/del/cleanup')
  Future<chopper.Response<BaseRes>> _cleanup({@Header('TOKEN') String? token});

  ///Create NoCode component dart  code
  ///@param body
  Future<chopper.Response<String>> createTemplate({
    required NoCodeTemplate? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        NoCodeTemplate, () => NoCodeTemplate.fromJsonFactory);

    return _createTemplate(body: body, token: token?.toString());
  }

  ///Create NoCode component dart  code
  ///@param body
  @Post(path: '/NoCode/post/create_template')
  Future<chopper.Response<String>> _createTemplate({
    @Body() required NoCodeTemplate? body,
    @Header('TOKEN') String? token,
  });

  ///Create NoCode property dartcode
  ///@param body
  Future<chopper.Response<String>> createProperty({
    required NoCodeTemplate? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        NoCodeTemplate, () => NoCodeTemplate.fromJsonFactory);

    return _createProperty(body: body, token: token?.toString());
  }

  ///Create NoCode property dartcode
  ///@param body
  @Post(path: '/NoCode/post/create_property')
  Future<chopper.Response<String>> _createProperty({
    @Body() required NoCodeTemplate? body,
    @Header('TOKEN') String? token,
  });

  ///Get profile info
  Future<chopper.Response<AppProfile>> getAppProfile({dynamic token}) {
    generatedMapping.putIfAbsent(AppProfile, () => AppProfile.fromJsonFactory);

    return _getAppProfile(token: token?.toString());
  }

  ///Get profile info
  @Get(path: '/Profile/get')
  Future<chopper.Response<AppProfile>> _getAppProfile(
      {@Header('TOKEN') String? token});

  ///Update user profile
  ///@param id
  ///@param body
  Future<chopper.Response<ProfileEntityRes>> updateMyProfile({
    required String? id,
    required ProfileInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        ProfileInfo, () => ProfileInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ProfileEntityRes, () => ProfileEntityRes.fromJsonFactory);

    return _updateMyProfile(id: id, body: body, token: token?.toString());
  }

  ///Update user profile
  ///@param id
  ///@param body
  @Post(path: '/Profile/update/{id}')
  Future<chopper.Response<ProfileEntityRes>> _updateMyProfile({
    @Path('id') required String? id,
    @Body() required ProfileInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Create new organization
  ///@param body
  Future<chopper.Response<OrganizationEntityRes>> createNewOrganization({
    required OrganizationInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrganizationInfo, () => OrganizationInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrganizationEntityRes, () => OrganizationEntityRes.fromJsonFactory);

    return _createNewOrganization(body: body, token: token?.toString());
  }

  ///Create new organization
  ///@param body
  @Post(path: '/Organization/create')
  Future<chopper.Response<OrganizationEntityRes>> _createNewOrganization({
    @Body() required OrganizationInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Update organization
  ///@param orgId Origanization ID
  ///@param body
  Future<chopper.Response<OrganizationEntityRes>> updateOrganization({
    required String? orgId,
    required OrganizationInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrganizationInfo, () => OrganizationInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrganizationEntityRes, () => OrganizationEntityRes.fromJsonFactory);

    return _updateOrganization(
        orgId: orgId, body: body, token: token?.toString());
  }

  ///Update organization
  ///@param orgId Origanization ID
  ///@param body
  @Post(path: '/Organization/update/{orgId}')
  Future<chopper.Response<OrganizationEntityRes>> _updateOrganization({
    @Path('orgId') required String? orgId,
    @Body() required OrganizationInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Get organization
  ///@param orgId Origanization ID
  Future<chopper.Response<OrganizationEntityRes>> getOrganization({
    required String? orgId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrganizationEntityRes, () => OrganizationEntityRes.fromJsonFactory);

    return _getOrganization(orgId: orgId, token: token?.toString());
  }

  ///Get organization
  ///@param orgId Origanization ID
  @Get(path: '/Organization/get/{orgId}')
  Future<chopper.Response<OrganizationEntityRes>> _getOrganization({
    @Path('orgId') required String? orgId,
    @Header('TOKEN') String? token,
  });

  ///Delete organization
  ///@param orgId Origanization ID
  Future<chopper.Response<OrganizationEntityRes>> deleteOrganization({
    required String? orgId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrganizationEntityRes, () => OrganizationEntityRes.fromJsonFactory);

    return _deleteOrganization(orgId: orgId, token: token?.toString());
  }

  ///Delete organization
  ///@param orgId Origanization ID
  @Delete(path: '/Organization/remove/{orgId}')
  Future<chopper.Response<OrganizationEntityRes>> _deleteOrganization({
    @Path('orgId') required String? orgId,
    @Header('TOKEN') String? token,
  });

  ///Search organizations
  ///@param body
  Future<chopper.Response<OrganizationArrayRes>> searchOrganizations({
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrganizationArrayRes, () => OrganizationArrayRes.fromJsonFactory);

    return _searchOrganizations(body: body, token: token?.toString());
  }

  ///Search organizations
  ///@param body
  @Post(path: '/Organization/search')
  Future<chopper.Response<OrganizationArrayRes>> _searchOrganizations({
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///List organizations
  ///@param body
  Future<chopper.Response<OrganizationArrayRes>> listOrganizations({
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrganizationArrayRes, () => OrganizationArrayRes.fromJsonFactory);

    return _listOrganizations(body: body, token: token?.toString());
  }

  ///List organizations
  ///@param body
  @Post(path: '/Organization/list')
  Future<chopper.Response<OrganizationArrayRes>> _listOrganizations({
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Create new subscription
  ///@param orgId Origanization ID
  ///@param profileId Org User Profile ID
  Future<chopper.Response<SubscriptionEntityRes>> createNewSubscription({
    required String? orgId,
    required String? profileId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        SubscriptionEntityRes, () => SubscriptionEntityRes.fromJsonFactory);

    return _createNewSubscription(
        orgId: orgId, profileId: profileId, token: token?.toString());
  }

  ///Create new subscription
  ///@param orgId Origanization ID
  ///@param profileId Org User Profile ID
  @Post(
    path: '/Subscription/subscribe/{orgId}/{profileId}',
    optionalBody: true,
  )
  Future<chopper.Response<SubscriptionEntityRes>> _createNewSubscription({
    @Path('orgId') required String? orgId,
    @Path('profileId') required String? profileId,
    @Header('TOKEN') String? token,
  });

  ///Delete subscription
  ///@param orgId Origanization ID
  ///@param profileId Org User Profile ID
  Future<chopper.Response<SubscriptionEntityRes>> deleteSubscription({
    required String? orgId,
    required String? profileId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        SubscriptionEntityRes, () => SubscriptionEntityRes.fromJsonFactory);

    return _deleteSubscription(
        orgId: orgId, profileId: profileId, token: token?.toString());
  }

  ///Delete subscription
  ///@param orgId Origanization ID
  ///@param profileId Org User Profile ID
  @Delete(path: '/Subscription/unsubscribe/{orgId}/{profileId}')
  Future<chopper.Response<SubscriptionEntityRes>> _deleteSubscription({
    @Path('orgId') required String? orgId,
    @Path('profileId') required String? profileId,
    @Header('TOKEN') String? token,
  });

  ///Add user to organization
  ///@param orgId Origanization ID
  ///@param userId User ID
  Future<chopper.Response<OrgProfileEntityRes>> addOrganizationuser({
    required String? orgId,
    required String? userId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrgProfileEntityRes, () => OrgProfileEntityRes.fromJsonFactory);

    return _addOrganizationuser(
        orgId: orgId, userId: userId, token: token?.toString());
  }

  ///Add user to organization
  ///@param orgId Origanization ID
  ///@param userId User ID
  @Post(
    path: '/Organization/user/add/{orgId}/{userId}',
    optionalBody: true,
  )
  Future<chopper.Response<OrgProfileEntityRes>> _addOrganizationuser({
    @Path('orgId') required String? orgId,
    @Path('userId') required String? userId,
    @Header('TOKEN') String? token,
  });

  ///Delete user from organization
  ///@param orgId Origanization ID
  ///@param userId User ID
  Future<chopper.Response<OrgProfileEntityRes>> deleteOrganizationuser({
    required String? orgId,
    required String? userId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrgProfileEntityRes, () => OrgProfileEntityRes.fromJsonFactory);

    return _deleteOrganizationuser(
        orgId: orgId, userId: userId, token: token?.toString());
  }

  ///Delete user from organization
  ///@param orgId Origanization ID
  ///@param userId User ID
  @Delete(path: '/Organization/user/remove/{orgId}/{userId}')
  Future<chopper.Response<OrgProfileEntityRes>> _deleteOrganizationuser({
    @Path('orgId') required String? orgId,
    @Path('userId') required String? userId,
    @Header('TOKEN') String? token,
  });

  ///List organization users
  ///@param orgId Origanization ID
  ///@param body
  Future<chopper.Response<OrgProfileArrayRes>> listOrganizationUsers({
    required String? orgId,
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrgProfileArrayRes, () => OrgProfileArrayRes.fromJsonFactory);

    return _listOrganizationUsers(
        orgId: orgId, body: body, token: token?.toString());
  }

  ///List organization users
  ///@param orgId Origanization ID
  ///@param body
  @Post(path: '/Organization/user/list/{orgId}')
  Future<chopper.Response<OrgProfileArrayRes>> _listOrganizationUsers({
    @Path('orgId') required String? orgId,
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Search organization users
  ///@param orgId Origanization ID
  ///@param body
  Future<chopper.Response<OrgProfileArrayRes>> searchOrganizationUsers({
    required String? orgId,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrgProfileArrayRes, () => OrgProfileArrayRes.fromJsonFactory);

    return _searchOrganizationUsers(
        orgId: orgId, body: body, token: token?.toString());
  }

  ///Search organization users
  ///@param orgId Origanization ID
  ///@param body
  @Post(path: '/Organization/user/search/{orgId}')
  Future<chopper.Response<OrgProfileArrayRes>> _searchOrganizationUsers({
    @Path('orgId') required String? orgId,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///Create new team
  ///@param orgId organization id
  ///@param body
  Future<chopper.Response<TeamEntityRes>> createNewTeam({
    required String? orgId,
    required TeamInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(TeamInfo, () => TeamInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TeamEntityRes, () => TeamEntityRes.fromJsonFactory);

    return _createNewTeam(orgId: orgId, body: body, token: token?.toString());
  }

  ///Create new team
  ///@param orgId organization id
  ///@param body
  @Post(path: '/Team/create/{orgId}')
  Future<chopper.Response<TeamEntityRes>> _createNewTeam({
    @Path('orgId') required String? orgId,
    @Body() required TeamInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Update team
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param body
  Future<chopper.Response<TeamEntityRes>> updateTeam({
    required String? orgId,
    required String? teamId,
    required TeamInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(TeamInfo, () => TeamInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TeamEntityRes, () => TeamEntityRes.fromJsonFactory);

    return _updateTeam(
        orgId: orgId, teamId: teamId, body: body, token: token?.toString());
  }

  ///Update team
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param body
  @Post(path: '/Team/update/{orgId}/{teamId}')
  Future<chopper.Response<TeamEntityRes>> _updateTeam({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Body() required TeamInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Delete team
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  Future<chopper.Response<TeamEntityRes>> deleteTeam({
    required String? orgId,
    required String? teamId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        TeamEntityRes, () => TeamEntityRes.fromJsonFactory);

    return _deleteTeam(orgId: orgId, teamId: teamId, token: token?.toString());
  }

  ///Delete team
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  @Delete(path: '/Team/remove/{orgId}/{teamId}')
  Future<chopper.Response<TeamEntityRes>> _deleteTeam({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Header('TOKEN') String? token,
  });

  ///Search teams
  ///@param orgId Origanization ID
  ///@param body
  Future<chopper.Response<TeamArrayRes>> searchTeams({
    required String? orgId,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TeamArrayRes, () => TeamArrayRes.fromJsonFactory);

    return _searchTeams(orgId: orgId, body: body, token: token?.toString());
  }

  ///Search teams
  ///@param orgId Origanization ID
  ///@param body
  @Post(path: '/Team/search/{orgId}')
  Future<chopper.Response<TeamArrayRes>> _searchTeams({
    @Path('orgId') required String? orgId,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///List teams
  ///@param orgId Origanization ID
  ///@param body
  Future<chopper.Response<TeamArrayRes>> listTeams({
    required String? orgId,
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TeamArrayRes, () => TeamArrayRes.fromJsonFactory);

    return _listTeams(orgId: orgId, body: body, token: token?.toString());
  }

  ///List teams
  ///@param orgId Origanization ID
  ///@param body
  @Post(path: '/Team/list/{orgId}')
  Future<chopper.Response<TeamArrayRes>> _listTeams({
    @Path('orgId') required String? orgId,
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Add user to team
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param userId User ID
  Future<chopper.Response<TeamProfileEntityRes>> addTeamUser({
    required String? orgId,
    required String? teamId,
    required String? userId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        TeamProfileEntityRes, () => TeamProfileEntityRes.fromJsonFactory);

    return _addTeamUser(
        orgId: orgId, teamId: teamId, userId: userId, token: token?.toString());
  }

  ///Add user to team
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param userId User ID
  @Post(
    path: '/Team/user/add/{orgId}/{teamId}/{userId}',
    optionalBody: true,
  )
  Future<chopper.Response<TeamProfileEntityRes>> _addTeamUser({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('userId') required String? userId,
    @Header('TOKEN') String? token,
  });

  ///Delete user from team
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param userId User ID
  Future<chopper.Response<TeamProfileEntityRes>> deleteTeamUser({
    required String? orgId,
    required String? teamId,
    required String? userId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        TeamProfileEntityRes, () => TeamProfileEntityRes.fromJsonFactory);

    return _deleteTeamUser(
        orgId: orgId, teamId: teamId, userId: userId, token: token?.toString());
  }

  ///Delete user from team
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param userId User ID
  @Delete(path: '/Team/user/remove/{orgId}/{teamId}/{userId}')
  Future<chopper.Response<TeamProfileEntityRes>> _deleteTeamUser({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('userId') required String? userId,
    @Header('TOKEN') String? token,
  });

  ///List team users
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param body
  Future<chopper.Response<TeamProfileArrayRes>> listTeamUsers({
    required String? orgId,
    required String? teamId,
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TeamProfileArrayRes, () => TeamProfileArrayRes.fromJsonFactory);

    return _listTeamUsers(
        orgId: orgId, teamId: teamId, body: body, token: token?.toString());
  }

  ///List team users
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param body
  @Post(path: '/Team/user/list/{orgId}/{teamId}')
  Future<chopper.Response<TeamProfileArrayRes>> _listTeamUsers({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Search team users
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param body
  Future<chopper.Response<TeamProfileArrayRes>> searchTeamUsers({
    required String? orgId,
    required String? teamId,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TeamProfileArrayRes, () => TeamProfileArrayRes.fromJsonFactory);

    return _searchTeamUsers(
        orgId: orgId, teamId: teamId, body: body, token: token?.toString());
  }

  ///Search team users
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param body
  @Post(path: '/Team/user/search/{orgId}/{teamId}')
  Future<chopper.Response<TeamProfileArrayRes>> _searchTeamUsers({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///Create new application
  ///@param target application target type
  ///@param orgId organization id
  ///@param teamId team id
  ///@param body
  Future<chopper.Response<ApplicationEntityRes>> createNewApplication({
    required enums.ApplicationCreateTargetOrgIdTeamIdPostTarget? target,
    required String? orgId,
    required String? teamId,
    required ApplicationInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        ApplicationInfo, () => ApplicationInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ApplicationEntityRes, () => ApplicationEntityRes.fromJsonFactory);

    return _createNewApplication(
        target: target?.value?.toString(),
        orgId: orgId,
        teamId: teamId,
        body: body,
        token: token?.toString());
  }

  ///Create new application
  ///@param target application target type
  ///@param orgId organization id
  ///@param teamId team id
  ///@param body
  @Post(path: '/Application/create/{target}/{orgId}/{teamId}')
  Future<chopper.Response<ApplicationEntityRes>> _createNewApplication({
    @Path('target') required String? target,
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Body() required ApplicationInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Update application
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param appId Team ID
  ///@param body
  Future<chopper.Response<ApplicationEntityRes>> updateApplication({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required ApplicationInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        ApplicationInfo, () => ApplicationInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ApplicationEntityRes, () => ApplicationEntityRes.fromJsonFactory);

    return _updateApplication(
        orgId: orgId,
        teamId: teamId,
        appId: appId,
        body: body,
        token: token?.toString());
  }

  ///Update application
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param appId Team ID
  ///@param body
  @Post(path: '/Application/update/{orgId}/{teamId}/{appId}')
  Future<chopper.Response<ApplicationEntityRes>> _updateApplication({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Body() required ApplicationInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Delete application
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  Future<chopper.Response<ApplicationEntityRes>> deleteApplication({
    required String? orgId,
    required String? teamId,
    required String? appId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        ApplicationEntityRes, () => ApplicationEntityRes.fromJsonFactory);

    return _deleteApplication(
        orgId: orgId, teamId: teamId, appId: appId, token: token?.toString());
  }

  ///Delete application
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  @Delete(path: '/Application/remove/{orgId}/{teamId}/{appId}')
  Future<chopper.Response<ApplicationEntityRes>> _deleteApplication({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Header('TOKEN') String? token,
  });

  ///Search applications
  ///@param target Target ID
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param body
  Future<chopper.Response<ApplicationArrayRes>> searchApplications({
    required enums.ApplicationSearchTargetOrgIdTeamIdPostTarget? target,
    required String? orgId,
    required String? teamId,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ApplicationArrayRes, () => ApplicationArrayRes.fromJsonFactory);

    return _searchApplications(
        target: target?.value?.toString(),
        orgId: orgId,
        teamId: teamId,
        body: body,
        token: token?.toString());
  }

  ///Search applications
  ///@param target Target ID
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param body
  @Post(path: '/Application/search/{target}/{orgId}/{teamId}')
  Future<chopper.Response<ApplicationArrayRes>> _searchApplications({
    @Path('target') required String? target,
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///List applications
  ///@param target Target ID
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param body
  Future<chopper.Response<ApplicationArrayRes>> listApplications({
    required enums.ApplicationListTargetOrgIdTeamIdPostTarget? target,
    required String? orgId,
    required String? teamId,
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ApplicationArrayRes, () => ApplicationArrayRes.fromJsonFactory);

    return _listApplications(
        target: target?.value?.toString(),
        orgId: orgId,
        teamId: teamId,
        body: body,
        token: token?.toString());
  }

  ///List applications
  ///@param target Target ID
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param body
  @Post(path: '/Application/list/{target}/{orgId}/{teamId}')
  Future<chopper.Response<ApplicationArrayRes>> _listApplications({
    @Path('target') required String? target,
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Save application
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param body
  Future<chopper.Response<BaseRes>> saveApplication({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required ApplicationModel? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        ApplicationModel, () => ApplicationModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _saveApplication(
        orgId: orgId,
        teamId: teamId,
        appId: appId,
        body: body,
        token: token?.toString());
  }

  ///Save application
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param body
  @Post(path: '/Application/save/{orgId}/{teamId}/{appId}')
  Future<chopper.Response<BaseRes>> _saveApplication({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Body() required ApplicationModel? body,
    @Header('TOKEN') String? token,
  });

  ///Create new page
  ///@param orgId organization id
  ///@param teamId team id
  ///@param appId application id
  ///@param body
  Future<chopper.Response<PageEntityRes>> createNewPage({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required PageInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(PageInfo, () => PageInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PageEntityRes, () => PageEntityRes.fromJsonFactory);

    return _createNewPage(
        orgId: orgId,
        teamId: teamId,
        appId: appId,
        body: body,
        token: token?.toString());
  }

  ///Create new page
  ///@param orgId organization id
  ///@param teamId team id
  ///@param appId application id
  ///@param body
  @Post(path: '/Page/create/{orgId}/{teamId}/{appId}')
  Future<chopper.Response<PageEntityRes>> _createNewPage({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Body() required PageInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Update page
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param pageId Page ID
  ///@param body
  Future<chopper.Response<PageEntityRes>> updatePage({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required String? pageId,
    required PageInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(PageInfo, () => PageInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PageEntityRes, () => PageEntityRes.fromJsonFactory);

    return _updatePage(
        orgId: orgId,
        teamId: teamId,
        appId: appId,
        pageId: pageId,
        body: body,
        token: token?.toString());
  }

  ///Update page
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param pageId Page ID
  ///@param body
  @Post(path: '/Page/update/{orgId}/{teamId}/{appId}/{pageId}')
  Future<chopper.Response<PageEntityRes>> _updatePage({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Path('pageId') required String? pageId,
    @Body() required PageInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Delete page
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param pageId Page ID
  Future<chopper.Response<PageEntityRes>> deletePage({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required String? pageId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        PageEntityRes, () => PageEntityRes.fromJsonFactory);

    return _deletePage(
        orgId: orgId,
        teamId: teamId,
        appId: appId,
        pageId: pageId,
        token: token?.toString());
  }

  ///Delete page
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param pageId Page ID
  @Delete(path: '/Page/remove/{orgId}/{teamId}/{appId}/{pageId}')
  Future<chopper.Response<PageEntityRes>> _deletePage({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Path('pageId') required String? pageId,
    @Header('TOKEN') String? token,
  });

  ///Search pages
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param body
  Future<chopper.Response<PageArrayRes>> searchPages({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PageArrayRes, () => PageArrayRes.fromJsonFactory);

    return _searchPages(
        orgId: orgId,
        teamId: teamId,
        appId: appId,
        body: body,
        token: token?.toString());
  }

  ///Search pages
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param body
  @Post(path: '/Page/search/{orgId}/{teamId}/{appId}')
  Future<chopper.Response<PageArrayRes>> _searchPages({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///List pages
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param body
  Future<chopper.Response<PageArrayRes>> listPages({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PageArrayRes, () => PageArrayRes.fromJsonFactory);

    return _listPages(
        orgId: orgId,
        teamId: teamId,
        appId: appId,
        body: body,
        token: token?.toString());
  }

  ///List pages
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param body
  @Post(path: '/Page/list/{orgId}/{teamId}/{appId}')
  Future<chopper.Response<PageArrayRes>> _listPages({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Save page
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param appId App ID
  ///@param pageId Page ID
  ///@param body
  Future<chopper.Response<BaseRes>> savePage({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required String? pageId,
    required PageModel? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(PageModel, () => PageModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _savePage(
        orgId: orgId,
        teamId: teamId,
        appId: appId,
        pageId: pageId,
        body: body,
        token: token?.toString());
  }

  ///Save page
  ///@param orgId Organization ID
  ///@param teamId Team ID
  ///@param appId App ID
  ///@param pageId Page ID
  ///@param body
  @Post(path: '/Page/save/{orgId}/{teamId}/{appId}/{pageId}')
  Future<chopper.Response<BaseRes>> _savePage({
    @Path('orgId') required String? orgId,
    @Path('teamId') required String? teamId,
    @Path('appId') required String? appId,
    @Path('pageId') required String? pageId,
    @Body() required PageModel? body,
    @Header('TOKEN') String? token,
  });

  ///Upload image
  ///@param imageType
  ///@param orgId Organization ID
  ///@param teamId Team ID. required for **team, app, page or asset** images
  ///@param appId Application ID. required for **team, app, page or asset** images
  ///@param pageId Application ID. required for **page** images
  ///@param file
  Future<chopper.Response<ImageFileEntityRes>> uploadImage({
    required enums.ImageUploadImageTypePostImageType? imageType,
    String? orgId,
    String? teamId,
    String? appId,
    String? pageId,
    required List<int>? file,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        ImageFileEntityRes, () => ImageFileEntityRes.fromJsonFactory);

    return _uploadImage(
        imageType: imageType?.value?.toString(),
        orgId: orgId?.toString(),
        teamId: teamId?.toString(),
        appId: appId?.toString(),
        pageId: pageId?.toString(),
        file: file,
        token: token?.toString());
  }

  ///Upload image
  ///@param imageType
  ///@param orgId Organization ID
  ///@param teamId Team ID. required for **team, app, page or asset** images
  ///@param appId Application ID. required for **team, app, page or asset** images
  ///@param pageId Application ID. required for **page** images
  ///@param file
  @Post(
    path: '/Image/upload/{imageType}',
    optionalBody: true,
  )
  Future<chopper.Response<ImageFileEntityRes>> _uploadImage({
    @Path('imageType') required String? imageType,
    @Header('orgId') String? orgId,
    @Header('teamId') String? teamId,
    @Header('appId') String? appId,
    @Header('pageId') String? pageId,
    @Field('file') required List<int>? file,
    @Header('TOKEN') String? token,
  });

  ///Delete image
  ///@param id Image ID
  Future<chopper.Response<ImageFileEntityRes>> deleteImage({
    required String? id,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        ImageFileEntityRes, () => ImageFileEntityRes.fromJsonFactory);

    return _deleteImage(id: id, token: token?.toString());
  }

  ///Delete image
  ///@param id Image ID
  @Delete(path: '/Image/remove/{id}')
  Future<chopper.Response<ImageFileEntityRes>> _deleteImage({
    @Path('id') required String? id,
    @Header('TOKEN') String? token,
  });

  ///Get image
  ///@param domainKey Image ID
  ///@param id Image ID
  Future<chopper.Response<List<int>>> domanloadImage({
    required String? domainKey,
    required String? id,
  }) {
    return _domanloadImage(domainKey: domainKey, id: id);
  }

  ///Get image
  ///@param domainKey Image ID
  ///@param id Image ID
  @Get(path: '/Image/download/{domainKey}/{id}')
  Future<chopper.Response<List<int>>> _domanloadImage({
    @Path('domainKey') required String? domainKey,
    @Path('id') required String? id,
  });

  ///Search images
  ///@param imageType
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param pageId Page ID
  ///@param body
  Future<chopper.Response<ImageFileArrayRes>> searchImages({
    required enums.ImageSearchImageTypePostImageType? imageType,
    String? orgId,
    String? teamId,
    String? appId,
    String? pageId,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ImageFileArrayRes, () => ImageFileArrayRes.fromJsonFactory);

    return _searchImages(
        imageType: imageType?.value?.toString(),
        orgId: orgId?.toString(),
        teamId: teamId?.toString(),
        appId: appId?.toString(),
        pageId: pageId?.toString(),
        body: body,
        token: token?.toString());
  }

  ///Search images
  ///@param imageType
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param pageId Page ID
  ///@param body
  @Post(path: '/Image/search/{imageType}')
  Future<chopper.Response<ImageFileArrayRes>> _searchImages({
    @Path('imageType') required String? imageType,
    @Header('orgId') String? orgId,
    @Header('teamId') String? teamId,
    @Header('appId') String? appId,
    @Header('pageId') String? pageId,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///List images
  ///@param imageType
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param pageId Page ID
  ///@param body
  Future<chopper.Response<ImageFileArrayRes>> listImages({
    required enums.ImageListImageTypePostImageType? imageType,
    String? orgId,
    String? teamId,
    String? appId,
    String? pageId,
    required ListReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(ListReq, () => ListReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ImageFileArrayRes, () => ImageFileArrayRes.fromJsonFactory);

    return _listImages(
        imageType: imageType?.value?.toString(),
        orgId: orgId?.toString(),
        teamId: teamId?.toString(),
        appId: appId?.toString(),
        pageId: pageId?.toString(),
        body: body,
        token: token?.toString());
  }

  ///List images
  ///@param imageType
  ///@param orgId Origanization ID
  ///@param teamId Team ID
  ///@param appId Application ID
  ///@param pageId Page ID
  ///@param body
  @Post(path: '/Image/list/{imageType}')
  Future<chopper.Response<ImageFileArrayRes>> _listImages({
    @Path('imageType') required String? imageType,
    @Header('orgId') String? orgId,
    @Header('teamId') String? teamId,
    @Header('appId') String? appId,
    @Header('pageId') String? pageId,
    @Body() required ListReq? body,
    @Header('TOKEN') String? token,
  });

  ///Create new plan
  ///@param body
  Future<chopper.Response<PlanEntityRes>> createNewPlan({
    required PlanInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(PlanInfo, () => PlanInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PlanEntityRes, () => PlanEntityRes.fromJsonFactory);

    return _createNewPlan(body: body, token: token?.toString());
  }

  ///Create new plan
  ///@param body
  @Post(path: '/Plan/create')
  Future<chopper.Response<PlanEntityRes>> _createNewPlan({
    @Body() required PlanInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Update plan
  ///@param planId Plan ID
  ///@param body
  Future<chopper.Response<PlanEntityRes>> updatePlan({
    required String? planId,
    required PlanInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(PlanInfo, () => PlanInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PlanEntityRes, () => PlanEntityRes.fromJsonFactory);

    return _updatePlan(planId: planId, body: body, token: token?.toString());
  }

  ///Update plan
  ///@param planId Plan ID
  ///@param body
  @Post(path: '/Plan/update/{planId}')
  Future<chopper.Response<PlanEntityRes>> _updatePlan({
    @Path('planId') required String? planId,
    @Body() required PlanInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Search plans
  ///@param includeCustomPlans Include Custom Plans (required admin access)
  ///@param body
  Future<chopper.Response<PlanArrayRes>> searchPlans({
    bool? includeCustomPlans,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PlanArrayRes, () => PlanArrayRes.fromJsonFactory);

    return _searchPlans(
        includeCustomPlans: includeCustomPlans?.toString(),
        body: body,
        token: token?.toString());
  }

  ///Search plans
  ///@param includeCustomPlans Include Custom Plans (required admin access)
  ///@param body
  @Post(path: '/Plan/search')
  Future<chopper.Response<PlanArrayRes>> _searchPlans({
    @Header('includeCustomPlans') String? includeCustomPlans,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///Get plan
  ///@param planId Plan ID
  ///@param planFrequency Plan Frequency (MONTH | YEAR)
  ///@param currency ISO 3 letter currency code
  Future<chopper.Response<PlanEntityRes>> getPlan({
    required String? planId,
    required String? planFrequency,
    required String? currency,
  }) {
    generatedMapping.putIfAbsent(
        PlanEntityRes, () => PlanEntityRes.fromJsonFactory);

    return _getPlan(
        planId: planId, planFrequency: planFrequency, currency: currency);
  }

  ///Get plan
  ///@param planId Plan ID
  ///@param planFrequency Plan Frequency (MONTH | YEAR)
  ///@param currency ISO 3 letter currency code
  @Get(path: '/Plan/get/{planId}/{planFrequency}/{currency}')
  Future<chopper.Response<PlanEntityRes>> _getPlan({
    @Path('planId') required String? planId,
    @Path('planFrequency') required String? planFrequency,
    @Path('currency') required String? currency,
  });

  ///List currencies
  Future<chopper.Response<PlanCurrencyListRes>> listCurrencies() {
    generatedMapping.putIfAbsent(
        PlanCurrencyListRes, () => PlanCurrencyListRes.fromJsonFactory);

    return _listCurrencies();
  }

  ///List currencies
  @Get(path: '/Plan/list/currencies')
  Future<chopper.Response<PlanCurrencyListRes>> _listCurrencies();

  ///Clear all plans
  Future<chopper.Response<BaseRes>> clearAllPlans({dynamic token}) {
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _clearAllPlans(token: token?.toString());
  }

  ///Clear all plans
  @Delete(path: '/Plan/clear')
  Future<chopper.Response<BaseRes>> _clearAllPlans(
      {@Header('TOKEN') String? token});

  ///Create or update org plan
  ///@param body
  Future<chopper.Response<OrgPlanEntityRes>> createOrUpdateOrgPlan({
    required PlanChangeRequest? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        PlanChangeRequest, () => PlanChangeRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrgPlanEntityRes, () => OrgPlanEntityRes.fromJsonFactory);

    return _createOrUpdateOrgPlan(body: body, token: token?.toString());
  }

  ///Create or update org plan
  ///@param body
  @Post(path: '/OrgPlan/upsert')
  Future<chopper.Response<OrgPlanEntityRes>> _createOrUpdateOrgPlan({
    @Body() required PlanChangeRequest? body,
    @Header('TOKEN') String? token,
  });

  ///Add components to a plan
  ///@param body
  Future<chopper.Response<OrgPlanEntityRes>> addComponentsToPlan({
    required AddComponentRequest? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        AddComponentRequest, () => AddComponentRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrgPlanEntityRes, () => OrgPlanEntityRes.fromJsonFactory);

    return _addComponentsToPlan(body: body, token: token?.toString());
  }

  ///Add components to a plan
  ///@param body
  @Post(path: '/OrgPlan/component/add')
  Future<chopper.Response<OrgPlanEntityRes>> _addComponentsToPlan({
    @Body() required AddComponentRequest? body,
    @Header('TOKEN') String? token,
  });

  ///Get organization plan
  ///@param orgId Organization ID
  Future<chopper.Response<OrgPlanEntityRes>> getOrgPlan({
    required String? orgId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrgPlanEntityRes, () => OrgPlanEntityRes.fromJsonFactory);

    return _getOrgPlan(orgId: orgId, token: token?.toString());
  }

  ///Get organization plan
  ///@param orgId Organization ID
  @Get(path: '/OrgPlan/get/{orgId}')
  Future<chopper.Response<OrgPlanEntityRes>> _getOrgPlan({
    @Path('orgId') required String? orgId,
    @Header('TOKEN') String? token,
  });

  ///Remove all organization plans
  Future<chopper.Response<BaseRes>> clearOrgPlans({dynamic token}) {
    generatedMapping.putIfAbsent(BaseRes, () => BaseRes.fromJsonFactory);

    return _clearOrgPlans(token: token?.toString());
  }

  ///Remove all organization plans
  @Delete(path: '/OrgPlan/clean')
  Future<chopper.Response<BaseRes>> _clearOrgPlans(
      {@Header('TOKEN') String? token});

  ///Search invoices
  ///@param orgId Organization ID (empty id requires admin access)
  ///@param paymentStatus PaymentStatus enum name
  ///@param body
  Future<chopper.Response<InvoiceArrayRes>> searchInvoices({
    String? orgId,
    String? paymentStatus,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        InvoiceArrayRes, () => InvoiceArrayRes.fromJsonFactory);

    return _searchInvoices(
        orgId: orgId?.toString(),
        paymentStatus: paymentStatus?.toString(),
        body: body,
        token: token?.toString());
  }

  ///Search invoices
  ///@param orgId Organization ID (empty id requires admin access)
  ///@param paymentStatus PaymentStatus enum name
  ///@param body
  @Post(path: '/Invoice/search')
  Future<chopper.Response<InvoiceArrayRes>> _searchInvoices({
    @Header('orgId') String? orgId,
    @Header('paymentStatus') String? paymentStatus,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///Get invoice
  ///@param invoiceId Invoice ID
  Future<chopper.Response<InvoiceEntityRes>> getInvoice({
    required String? invoiceId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        InvoiceEntityRes, () => InvoiceEntityRes.fromJsonFactory);

    return _getInvoice(invoiceId: invoiceId, token: token?.toString());
  }

  ///Get invoice
  ///@param invoiceId Invoice ID
  @Get(path: '/Invoice/get/{invoiceId}')
  Future<chopper.Response<InvoiceEntityRes>> _getInvoice({
    @Path('invoiceId') required String? invoiceId,
    @Header('TOKEN') String? token,
  });

  ///Set invoice payment status
  ///@param paymentStatus PaymentStatus enum name
  ///@param body
  Future<chopper.Response<InvoiceEntityRes>> setPaymentStatus({
    required String? paymentStatus,
    required PaidInvoiceRequest? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        PaidInvoiceRequest, () => PaidInvoiceRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        InvoiceEntityRes, () => InvoiceEntityRes.fromJsonFactory);

    return _setPaymentStatus(
        paymentStatus: paymentStatus, body: body, token: token?.toString());
  }

  ///Set invoice payment status
  ///@param paymentStatus PaymentStatus enum name
  ///@param body
  @Post(path: '/Invoice/set/status/{paymentStatus}')
  Future<chopper.Response<InvoiceEntityRes>> _setPaymentStatus({
    @Path('paymentStatus') required String? paymentStatus,
    @Body() required PaidInvoiceRequest? body,
    @Header('TOKEN') String? token,
  });

  ///Invoice paid
  ///@param body
  Future<chopper.Response<InvoiceEntityRes>> invoicePaid({
    required PaidInvoiceRequest? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        PaidInvoiceRequest, () => PaidInvoiceRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        InvoiceEntityRes, () => InvoiceEntityRes.fromJsonFactory);

    return _invoicePaid(body: body, token: token?.toString());
  }

  ///Invoice paid
  ///@param body
  @Post(path: '/Invoice/paid')
  Future<chopper.Response<InvoiceEntityRes>> _invoicePaid({
    @Body() required PaidInvoiceRequest? body,
    @Header('TOKEN') String? token,
  });

  ///Delete invoice
  ///@param invoiceId Invoice ID
  Future<chopper.Response<InvoiceEntityRes>> deleteInvoice({
    required String? invoiceId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        InvoiceEntityRes, () => InvoiceEntityRes.fromJsonFactory);

    return _deleteInvoice(invoiceId: invoiceId, token: token?.toString());
  }

  ///Delete invoice
  ///@param invoiceId Invoice ID
  @Delete(path: '/Invoice/remove/{invoiceId}')
  Future<chopper.Response<InvoiceEntityRes>> _deleteInvoice({
    @Path('invoiceId') required String? invoiceId,
    @Header('TOKEN') String? token,
  });

  ///Create new order
  ///@param body
  Future<chopper.Response<OrderEntityRes>> createNewOrder({
    required OrderInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(OrderInfo, () => OrderInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrderEntityRes, () => OrderEntityRes.fromJsonFactory);

    return _createNewOrder(body: body, token: token?.toString());
  }

  ///Create new order
  ///@param body
  @Post(path: '/Orders/create')
  Future<chopper.Response<OrderEntityRes>> _createNewOrder({
    @Body() required OrderInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Update order
  ///@param orderId Order ID
  ///@param body
  Future<chopper.Response<OrderEntityRes>> updateOrder({
    required String? orderId,
    required OrderInfo? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(OrderInfo, () => OrderInfo.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrderEntityRes, () => OrderEntityRes.fromJsonFactory);

    return _updateOrder(orderId: orderId, body: body, token: token?.toString());
  }

  ///Update order
  ///@param orderId Order ID
  ///@param body
  @Post(path: '/Orders/update/{orderId}')
  Future<chopper.Response<OrderEntityRes>> _updateOrder({
    @Path('orderId') required String? orderId,
    @Body() required OrderInfo? body,
    @Header('TOKEN') String? token,
  });

  ///Search orders
  ///@param orgId Organization ID (empty id requires admin access)
  ///@param orderStatus OrderStatus enum name
  ///@param body
  Future<chopper.Response<OrderArrayRes>> searchOrders({
    String? orgId,
    String? orderStatus,
    required SearchReq? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(SearchReq, () => SearchReq.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrderArrayRes, () => OrderArrayRes.fromJsonFactory);

    return _searchOrders(
        orgId: orgId?.toString(),
        orderStatus: orderStatus?.toString(),
        body: body,
        token: token?.toString());
  }

  ///Search orders
  ///@param orgId Organization ID (empty id requires admin access)
  ///@param orderStatus OrderStatus enum name
  ///@param body
  @Post(path: '/Orders/search')
  Future<chopper.Response<OrderArrayRes>> _searchOrders({
    @Header('orgId') String? orgId,
    @Header('orderStatus') String? orderStatus,
    @Body() required SearchReq? body,
    @Header('TOKEN') String? token,
  });

  ///Get order
  ///@param orderId Order ID
  Future<chopper.Response<OrderEntityRes>> getOrder({
    required String? orderId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrderEntityRes, () => OrderEntityRes.fromJsonFactory);

    return _getOrder(orderId: orderId, token: token?.toString());
  }

  ///Get order
  ///@param orderId Order ID
  @Get(path: '/Orders/get/{orderId}')
  Future<chopper.Response<OrderEntityRes>> _getOrder({
    @Path('orderId') required String? orderId,
    @Header('TOKEN') String? token,
  });

  ///Cancel order
  ///@param orderId Order ID
  Future<chopper.Response<OrderEntityRes>> cancelOrder({
    required String? orderId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrderEntityRes, () => OrderEntityRes.fromJsonFactory);

    return _cancelOrder(orderId: orderId, token: token?.toString());
  }

  ///Cancel order
  ///@param orderId Order ID
  @Get(path: '/Orders/cancel/{orderId}')
  Future<chopper.Response<OrderEntityRes>> _cancelOrder({
    @Path('orderId') required String? orderId,
    @Header('TOKEN') String? token,
  });

  ///Order paid
  ///@param body
  Future<chopper.Response<OrderEntityRes>> orderPaid({
    required PaidOrderRequest? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        PaidOrderRequest, () => PaidOrderRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrderEntityRes, () => OrderEntityRes.fromJsonFactory);

    return _orderPaid(body: body, token: token?.toString());
  }

  ///Order paid
  ///@param body
  @Post(path: '/Orders/paid')
  Future<chopper.Response<OrderEntityRes>> _orderPaid({
    @Body() required PaidOrderRequest? body,
    @Header('TOKEN') String? token,
  });

  ///Delete order
  ///@param orderId Order ID
  Future<chopper.Response<OrderEntityRes>> deleteOrder({
    required String? orderId,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        OrderEntityRes, () => OrderEntityRes.fromJsonFactory);

    return _deleteOrder(orderId: orderId, token: token?.toString());
  }

  ///Delete order
  ///@param orderId Order ID
  @Delete(path: '/Orders/remove/{orderId}')
  Future<chopper.Response<OrderEntityRes>> _deleteOrder({
    @Path('orderId') required String? orderId,
    @Header('TOKEN') String? token,
  });

  ///Create payment secret
  ///@param body
  Future<chopper.Response<OrderEntityRes>> createStripePaymentSecret({
    required StripePaymentSecretArgs? body,
    dynamic token,
  }) {
    generatedMapping.putIfAbsent(
        StripePaymentSecretArgs, () => StripePaymentSecretArgs.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OrderEntityRes, () => OrderEntityRes.fromJsonFactory);

    return _createStripePaymentSecret(body: body, token: token?.toString());
  }

  ///Create payment secret
  ///@param body
  @Post(path: '/Orders/stripe/payment/secrete')
  Future<chopper.Response<OrderEntityRes>> _createStripePaymentSecret({
    @Body() required StripePaymentSecretArgs? body,
    @Header('TOKEN') String? token,
  });
}

@JsonSerializable(explicitToJson: true)
class NoCodeTemplate {
  const NoCodeTemplate({
    required this.className,
  });

  factory NoCodeTemplate.fromJson(Map<String, dynamic> json) =>
      _$NoCodeTemplateFromJson(json);

  static const toJsonFactory = _$NoCodeTemplateToJson;
  Map<String, dynamic> toJson() => _$NoCodeTemplateToJson(this);

  @JsonKey(name: 'className', includeIfNull: false, defaultValue: '')
  final String className;
  static const fromJsonFactory = _$NoCodeTemplateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NoCodeTemplate &&
            (identical(other.className, className) ||
                const DeepCollectionEquality()
                    .equals(other.className, className)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(className) ^ runtimeType.hashCode;
}

extension $NoCodeTemplateExtension on NoCodeTemplate {
  NoCodeTemplate copyWith({String? className}) {
    return NoCodeTemplate(className: className ?? this.className);
  }

  NoCodeTemplate copyWithWrapped({Wrapped<String>? className}) {
    return NoCodeTemplate(
        className: (className != null ? className.value : this.className));
  }
}

@JsonSerializable(explicitToJson: true)
class BaseEntity {
  const BaseEntity({
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseEntityFromJson(json);

  static const toJsonFactory = _$BaseEntityToJson;
  Map<String, dynamic> toJson() => _$BaseEntityToJson(this);

  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$BaseEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BaseEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $BaseEntityExtension on BaseEntity {
  BaseEntity copyWith(
      {String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return BaseEntity(
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  BaseEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return BaseEntity(
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class BaseRes {
  const BaseRes({
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory BaseRes.fromJson(Map<String, dynamic> json) =>
      _$BaseResFromJson(json);

  static const toJsonFactory = _$BaseResToJson;
  Map<String, dynamic> toJson() => _$BaseResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$BaseResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BaseRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $BaseResExtension on BaseRes {
  BaseRes copyWith({bool? ok, String? msg, String? trace, String? errorCode}) {
    return BaseRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  BaseRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return BaseRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class BaseListRes {
  const BaseListRes({
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory BaseListRes.fromJson(Map<String, dynamic> json) =>
      _$BaseListResFromJson(json);

  static const toJsonFactory = _$BaseListResToJson;
  Map<String, dynamic> toJson() => _$BaseListResToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$BaseListResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BaseListRes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $BaseListResExtension on BaseListRes {
  BaseListRes copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return BaseListRes(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  BaseListRes copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return BaseListRes(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class ListReq {
  const ListReq({
    required this.page,
    required this.size,
  });

  factory ListReq.fromJson(Map<String, dynamic> json) =>
      _$ListReqFromJson(json);

  static const toJsonFactory = _$ListReqToJson;
  Map<String, dynamic> toJson() => _$ListReqToJson(this);

  @JsonKey(name: 'page', includeIfNull: false)
  final int page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int size;
  static const fromJsonFactory = _$ListReqFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ListReq &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $ListReqExtension on ListReq {
  ListReq copyWith({int? page, int? size}) {
    return ListReq(page: page ?? this.page, size: size ?? this.size);
  }

  ListReq copyWithWrapped({Wrapped<int>? page, Wrapped<int>? size}) {
    return ListReq(
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class SearchReq {
  const SearchReq({
    required this.search,
    required this.page,
    required this.size,
  });

  factory SearchReq.fromJson(Map<String, dynamic> json) =>
      _$SearchReqFromJson(json);

  static const toJsonFactory = _$SearchReqToJson;
  Map<String, dynamic> toJson() => _$SearchReqToJson(this);

  @JsonKey(name: 'search', includeIfNull: false, defaultValue: '')
  final String search;
  @JsonKey(name: 'page', includeIfNull: false)
  final int page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int size;
  static const fromJsonFactory = _$SearchReqFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SearchReq &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $SearchReqExtension on SearchReq {
  SearchReq copyWith({String? search, int? page, int? size}) {
    return SearchReq(
        search: search ?? this.search,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  SearchReq copyWithWrapped(
      {Wrapped<String>? search, Wrapped<int>? page, Wrapped<int>? size}) {
    return SearchReq(
        search: (search != null ? search.value : this.search),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileInfo {
  const ProfileInfo({
    this.address,
    required this.email,
    required this.name,
    this.phone,
    this.website,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
  });

  factory ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoFromJson(json);

  static const toJsonFactory = _$ProfileInfoToJson;
  Map<String, dynamic> toJson() => _$ProfileInfoToJson(this);

  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final ProfileSettings? settings;
  static const fromJsonFactory = _$ProfileInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProfileInfo &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      runtimeType.hashCode;
}

extension $ProfileInfoExtension on ProfileInfo {
  ProfileInfo copyWith(
      {String? address,
      String? email,
      String? name,
      String? phone,
      String? website,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      ProfileSettings? settings}) {
    return ProfileInfo(
        address: address ?? this.address,
        email: email ?? this.email,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings);
  }

  ProfileInfo copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String>? email,
      Wrapped<String>? name,
      Wrapped<String?>? phone,
      Wrapped<String?>? website,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<ProfileSettings?>? settings}) {
    return ProfileInfo(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name),
        phone: (phone != null ? phone.value : this.phone),
        website: (website != null ? website.value : this.website),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings));
  }
}

@JsonSerializable(explicitToJson: true)
class Profile {
  const Profile({
    this.address,
    required this.email,
    required this.name,
    this.phone,
    this.website,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  static const toJsonFactory = _$ProfileToJson;
  Map<String, dynamic> toJson() => _$ProfileToJson(this);

  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final ProfileSettings? settings;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$ProfileFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Profile &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $ProfileExtension on Profile {
  Profile copyWith(
      {String? address,
      String? email,
      String? name,
      String? phone,
      String? website,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      ProfileSettings? settings,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return Profile(
        address: address ?? this.address,
        email: email ?? this.email,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  Profile copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String>? email,
      Wrapped<String>? name,
      Wrapped<String?>? phone,
      Wrapped<String?>? website,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<ProfileSettings?>? settings,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return Profile(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name),
        phone: (phone != null ? phone.value : this.phone),
        website: (website != null ? website.value : this.website),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileEntity {
  const ProfileEntity({
    this.entity,
  });

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);

  static const toJsonFactory = _$ProfileEntityToJson;
  Map<String, dynamic> toJson() => _$ProfileEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Profile? entity;
  static const fromJsonFactory = _$ProfileEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProfileEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $ProfileEntityExtension on ProfileEntity {
  ProfileEntity copyWith({Profile? entity}) {
    return ProfileEntity(entity: entity ?? this.entity);
  }

  ProfileEntity copyWithWrapped({Wrapped<Profile?>? entity}) {
    return ProfileEntity(entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileEntityRes {
  const ProfileEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory ProfileEntityRes.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityResFromJson(json);

  static const toJsonFactory = _$ProfileEntityResToJson;
  Map<String, dynamic> toJson() => _$ProfileEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Profile? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$ProfileEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProfileEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $ProfileEntityResExtension on ProfileEntityRes {
  ProfileEntityRes copyWith(
      {Profile? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return ProfileEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  ProfileEntityRes copyWithWrapped(
      {Wrapped<Profile?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return ProfileEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgProfileBase {
  const OrgProfileBase({
    required this.subscribed,
    required this.orgId,
    required this.profileId,
  });

  factory OrgProfileBase.fromJson(Map<String, dynamic> json) =>
      _$OrgProfileBaseFromJson(json);

  static const toJsonFactory = _$OrgProfileBaseToJson;
  Map<String, dynamic> toJson() => _$OrgProfileBaseToJson(this);

  @JsonKey(name: 'subscribed', includeIfNull: false, defaultValue: false)
  final bool subscribed;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'profileId', includeIfNull: false, defaultValue: '')
  final String profileId;
  static const fromJsonFactory = _$OrgProfileBaseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgProfileBase &&
            (identical(other.subscribed, subscribed) ||
                const DeepCollectionEquality()
                    .equals(other.subscribed, subscribed)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subscribed) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(profileId) ^
      runtimeType.hashCode;
}

extension $OrgProfileBaseExtension on OrgProfileBase {
  OrgProfileBase copyWith(
      {bool? subscribed, String? orgId, String? profileId}) {
    return OrgProfileBase(
        subscribed: subscribed ?? this.subscribed,
        orgId: orgId ?? this.orgId,
        profileId: profileId ?? this.profileId);
  }

  OrgProfileBase copyWithWrapped(
      {Wrapped<bool>? subscribed,
      Wrapped<String>? orgId,
      Wrapped<String>? profileId}) {
    return OrgProfileBase(
        subscribed: (subscribed != null ? subscribed.value : this.subscribed),
        orgId: (orgId != null ? orgId.value : this.orgId),
        profileId: (profileId != null ? profileId.value : this.profileId));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgProfile {
  const OrgProfile({
    required this.subscribed,
    required this.orgId,
    required this.profileId,
    this.address,
    required this.email,
    required this.name,
    this.phone,
    this.website,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory OrgProfile.fromJson(Map<String, dynamic> json) =>
      _$OrgProfileFromJson(json);

  static const toJsonFactory = _$OrgProfileToJson;
  Map<String, dynamic> toJson() => _$OrgProfileToJson(this);

  @JsonKey(name: 'subscribed', includeIfNull: false, defaultValue: false)
  final bool subscribed;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'profileId', includeIfNull: false, defaultValue: '')
  final String profileId;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final ProfileSettings? settings;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$OrgProfileFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgProfile &&
            (identical(other.subscribed, subscribed) ||
                const DeepCollectionEquality()
                    .equals(other.subscribed, subscribed)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subscribed) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(profileId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $OrgProfileExtension on OrgProfile {
  OrgProfile copyWith(
      {bool? subscribed,
      String? orgId,
      String? profileId,
      String? address,
      String? email,
      String? name,
      String? phone,
      String? website,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      ProfileSettings? settings,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return OrgProfile(
        subscribed: subscribed ?? this.subscribed,
        orgId: orgId ?? this.orgId,
        profileId: profileId ?? this.profileId,
        address: address ?? this.address,
        email: email ?? this.email,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  OrgProfile copyWithWrapped(
      {Wrapped<bool>? subscribed,
      Wrapped<String>? orgId,
      Wrapped<String>? profileId,
      Wrapped<String?>? address,
      Wrapped<String>? email,
      Wrapped<String>? name,
      Wrapped<String?>? phone,
      Wrapped<String?>? website,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<ProfileSettings?>? settings,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return OrgProfile(
        subscribed: (subscribed != null ? subscribed.value : this.subscribed),
        orgId: (orgId != null ? orgId.value : this.orgId),
        profileId: (profileId != null ? profileId.value : this.profileId),
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name),
        phone: (phone != null ? phone.value : this.phone),
        website: (website != null ? website.value : this.website),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgProfileEntity {
  const OrgProfileEntity({
    this.entity,
  });

  factory OrgProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$OrgProfileEntityFromJson(json);

  static const toJsonFactory = _$OrgProfileEntityToJson;
  Map<String, dynamic> toJson() => _$OrgProfileEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final OrgProfile? entity;
  static const fromJsonFactory = _$OrgProfileEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgProfileEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $OrgProfileEntityExtension on OrgProfileEntity {
  OrgProfileEntity copyWith({OrgProfile? entity}) {
    return OrgProfileEntity(entity: entity ?? this.entity);
  }

  OrgProfileEntity copyWithWrapped({Wrapped<OrgProfile?>? entity}) {
    return OrgProfileEntity(
        entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgProfileEntityRes {
  const OrgProfileEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory OrgProfileEntityRes.fromJson(Map<String, dynamic> json) =>
      _$OrgProfileEntityResFromJson(json);

  static const toJsonFactory = _$OrgProfileEntityResToJson;
  Map<String, dynamic> toJson() => _$OrgProfileEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final OrgProfile? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$OrgProfileEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgProfileEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $OrgProfileEntityResExtension on OrgProfileEntityRes {
  OrgProfileEntityRes copyWith(
      {OrgProfile? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return OrgProfileEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  OrgProfileEntityRes copyWithWrapped(
      {Wrapped<OrgProfile?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return OrgProfileEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgProfileArray {
  const OrgProfileArray({
    this.values,
  });

  factory OrgProfileArray.fromJson(Map<String, dynamic> json) =>
      _$OrgProfileArrayFromJson(json);

  static const toJsonFactory = _$OrgProfileArrayToJson;
  Map<String, dynamic> toJson() => _$OrgProfileArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <OrgProfile>[])
  final List<OrgProfile>? values;
  static const fromJsonFactory = _$OrgProfileArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgProfileArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $OrgProfileArrayExtension on OrgProfileArray {
  OrgProfileArray copyWith({List<OrgProfile>? values}) {
    return OrgProfileArray(values: values ?? this.values);
  }

  OrgProfileArray copyWithWrapped({Wrapped<List<OrgProfile>?>? values}) {
    return OrgProfileArray(
        values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgProfileArrayRes {
  const OrgProfileArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory OrgProfileArrayRes.fromJson(Map<String, dynamic> json) =>
      _$OrgProfileArrayResFromJson(json);

  static const toJsonFactory = _$OrgProfileArrayResToJson;
  Map<String, dynamic> toJson() => _$OrgProfileArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <OrgProfile>[])
  final List<OrgProfile>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$OrgProfileArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgProfileArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $OrgProfileArrayResExtension on OrgProfileArrayRes {
  OrgProfileArrayRes copyWith(
      {List<OrgProfile>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return OrgProfileArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  OrgProfileArrayRes copyWithWrapped(
      {Wrapped<List<OrgProfile>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return OrgProfileArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamProfileBase {
  const TeamProfileBase({
    required this.teamId,
  });

  factory TeamProfileBase.fromJson(Map<String, dynamic> json) =>
      _$TeamProfileBaseFromJson(json);

  static const toJsonFactory = _$TeamProfileBaseToJson;
  Map<String, dynamic> toJson() => _$TeamProfileBaseToJson(this);

  @JsonKey(name: 'teamId', includeIfNull: false, defaultValue: '')
  final String teamId;
  static const fromJsonFactory = _$TeamProfileBaseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamProfileBase &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(teamId) ^ runtimeType.hashCode;
}

extension $TeamProfileBaseExtension on TeamProfileBase {
  TeamProfileBase copyWith({String? teamId}) {
    return TeamProfileBase(teamId: teamId ?? this.teamId);
  }

  TeamProfileBase copyWithWrapped({Wrapped<String>? teamId}) {
    return TeamProfileBase(
        teamId: (teamId != null ? teamId.value : this.teamId));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamProfile {
  const TeamProfile({
    this.address,
    required this.email,
    required this.name,
    this.phone,
    this.website,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
    required this.subscribed,
    required this.orgId,
    required this.profileId,
    required this.teamId,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory TeamProfile.fromJson(Map<String, dynamic> json) =>
      _$TeamProfileFromJson(json);

  static const toJsonFactory = _$TeamProfileToJson;
  Map<String, dynamic> toJson() => _$TeamProfileToJson(this);

  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final ProfileSettings? settings;
  @JsonKey(name: 'subscribed', includeIfNull: false, defaultValue: false)
  final bool subscribed;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'profileId', includeIfNull: false, defaultValue: '')
  final String profileId;
  @JsonKey(name: 'teamId', includeIfNull: false, defaultValue: '')
  final String teamId;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$TeamProfileFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamProfile &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.subscribed, subscribed) ||
                const DeepCollectionEquality()
                    .equals(other.subscribed, subscribed)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(subscribed) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(profileId) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $TeamProfileExtension on TeamProfile {
  TeamProfile copyWith(
      {String? address,
      String? email,
      String? name,
      String? phone,
      String? website,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      ProfileSettings? settings,
      bool? subscribed,
      String? orgId,
      String? profileId,
      String? teamId,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return TeamProfile(
        address: address ?? this.address,
        email: email ?? this.email,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings,
        subscribed: subscribed ?? this.subscribed,
        orgId: orgId ?? this.orgId,
        profileId: profileId ?? this.profileId,
        teamId: teamId ?? this.teamId,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  TeamProfile copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String>? email,
      Wrapped<String>? name,
      Wrapped<String?>? phone,
      Wrapped<String?>? website,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<ProfileSettings?>? settings,
      Wrapped<bool>? subscribed,
      Wrapped<String>? orgId,
      Wrapped<String>? profileId,
      Wrapped<String>? teamId,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return TeamProfile(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name),
        phone: (phone != null ? phone.value : this.phone),
        website: (website != null ? website.value : this.website),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings),
        subscribed: (subscribed != null ? subscribed.value : this.subscribed),
        orgId: (orgId != null ? orgId.value : this.orgId),
        profileId: (profileId != null ? profileId.value : this.profileId),
        teamId: (teamId != null ? teamId.value : this.teamId),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamProfileEntity {
  const TeamProfileEntity({
    this.entity,
  });

  factory TeamProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$TeamProfileEntityFromJson(json);

  static const toJsonFactory = _$TeamProfileEntityToJson;
  Map<String, dynamic> toJson() => _$TeamProfileEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final TeamProfile? entity;
  static const fromJsonFactory = _$TeamProfileEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamProfileEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $TeamProfileEntityExtension on TeamProfileEntity {
  TeamProfileEntity copyWith({TeamProfile? entity}) {
    return TeamProfileEntity(entity: entity ?? this.entity);
  }

  TeamProfileEntity copyWithWrapped({Wrapped<TeamProfile?>? entity}) {
    return TeamProfileEntity(
        entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamProfileEntityRes {
  const TeamProfileEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory TeamProfileEntityRes.fromJson(Map<String, dynamic> json) =>
      _$TeamProfileEntityResFromJson(json);

  static const toJsonFactory = _$TeamProfileEntityResToJson;
  Map<String, dynamic> toJson() => _$TeamProfileEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final TeamProfile? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$TeamProfileEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamProfileEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $TeamProfileEntityResExtension on TeamProfileEntityRes {
  TeamProfileEntityRes copyWith(
      {TeamProfile? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return TeamProfileEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  TeamProfileEntityRes copyWithWrapped(
      {Wrapped<TeamProfile?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return TeamProfileEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamProfileArray {
  const TeamProfileArray({
    this.values,
  });

  factory TeamProfileArray.fromJson(Map<String, dynamic> json) =>
      _$TeamProfileArrayFromJson(json);

  static const toJsonFactory = _$TeamProfileArrayToJson;
  Map<String, dynamic> toJson() => _$TeamProfileArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <TeamProfile>[])
  final List<TeamProfile>? values;
  static const fromJsonFactory = _$TeamProfileArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamProfileArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $TeamProfileArrayExtension on TeamProfileArray {
  TeamProfileArray copyWith({List<TeamProfile>? values}) {
    return TeamProfileArray(values: values ?? this.values);
  }

  TeamProfileArray copyWithWrapped({Wrapped<List<TeamProfile>?>? values}) {
    return TeamProfileArray(
        values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamProfileArrayRes {
  const TeamProfileArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory TeamProfileArrayRes.fromJson(Map<String, dynamic> json) =>
      _$TeamProfileArrayResFromJson(json);

  static const toJsonFactory = _$TeamProfileArrayResToJson;
  Map<String, dynamic> toJson() => _$TeamProfileArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <TeamProfile>[])
  final List<TeamProfile>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$TeamProfileArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamProfileArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $TeamProfileArrayResExtension on TeamProfileArrayRes {
  TeamProfileArrayRes copyWith(
      {List<TeamProfile>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return TeamProfileArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  TeamProfileArrayRes copyWithWrapped(
      {Wrapped<List<TeamProfile>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return TeamProfileArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationInfo {
  const OrganizationInfo({
    required this.name,
    this.address,
    this.email,
    this.phone,
    this.website,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
  });

  factory OrganizationInfo.fromJson(Map<String, dynamic> json) =>
      _$OrganizationInfoFromJson(json);

  static const toJsonFactory = _$OrganizationInfoToJson;
  Map<String, dynamic> toJson() => _$OrganizationInfoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final OrganizationSettings? settings;
  static const fromJsonFactory = _$OrganizationInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrganizationInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      runtimeType.hashCode;
}

extension $OrganizationInfoExtension on OrganizationInfo {
  OrganizationInfo copyWith(
      {String? name,
      String? address,
      String? email,
      String? phone,
      String? website,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      OrganizationSettings? settings}) {
    return OrganizationInfo(
        name: name ?? this.name,
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings);
  }

  OrganizationInfo copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? website,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<OrganizationSettings?>? settings}) {
    return OrganizationInfo(
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        website: (website != null ? website.value : this.website),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings));
  }
}

@JsonSerializable(explicitToJson: true)
class Organization {
  const Organization({
    required this.profileId,
    this.planId,
    required this.organizationState,
    required this.name,
    this.address,
    this.email,
    this.phone,
    this.website,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  static const toJsonFactory = _$OrganizationToJson;
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);

  @JsonKey(name: 'profileId', includeIfNull: false, defaultValue: '')
  final String profileId;
  @JsonKey(name: 'planId', includeIfNull: false, defaultValue: '')
  final String? planId;
  @JsonKey(
    name: 'organizationState',
    includeIfNull: false,
    toJson: organizationOrganizationStateToJson,
    fromJson: organizationOrganizationStateFromJson,
  )
  final enums.OrganizationOrganizationState organizationState;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final OrganizationSettings? settings;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$OrganizationFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Organization &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.organizationState, organizationState) ||
                const DeepCollectionEquality()
                    .equals(other.organizationState, organizationState)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(profileId) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(organizationState) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $OrganizationExtension on Organization {
  Organization copyWith(
      {String? profileId,
      String? planId,
      enums.OrganizationOrganizationState? organizationState,
      String? name,
      String? address,
      String? email,
      String? phone,
      String? website,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      OrganizationSettings? settings,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return Organization(
        profileId: profileId ?? this.profileId,
        planId: planId ?? this.planId,
        organizationState: organizationState ?? this.organizationState,
        name: name ?? this.name,
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  Organization copyWithWrapped(
      {Wrapped<String>? profileId,
      Wrapped<String?>? planId,
      Wrapped<enums.OrganizationOrganizationState>? organizationState,
      Wrapped<String>? name,
      Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? website,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<OrganizationSettings?>? settings,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return Organization(
        profileId: (profileId != null ? profileId.value : this.profileId),
        planId: (planId != null ? planId.value : this.planId),
        organizationState: (organizationState != null
            ? organizationState.value
            : this.organizationState),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        website: (website != null ? website.value : this.website),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationEntity {
  const OrganizationEntity({
    this.entity,
  });

  factory OrganizationEntity.fromJson(Map<String, dynamic> json) =>
      _$OrganizationEntityFromJson(json);

  static const toJsonFactory = _$OrganizationEntityToJson;
  Map<String, dynamic> toJson() => _$OrganizationEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Organization? entity;
  static const fromJsonFactory = _$OrganizationEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrganizationEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $OrganizationEntityExtension on OrganizationEntity {
  OrganizationEntity copyWith({Organization? entity}) {
    return OrganizationEntity(entity: entity ?? this.entity);
  }

  OrganizationEntity copyWithWrapped({Wrapped<Organization?>? entity}) {
    return OrganizationEntity(
        entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationEntityRes {
  const OrganizationEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory OrganizationEntityRes.fromJson(Map<String, dynamic> json) =>
      _$OrganizationEntityResFromJson(json);

  static const toJsonFactory = _$OrganizationEntityResToJson;
  Map<String, dynamic> toJson() => _$OrganizationEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Organization? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$OrganizationEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrganizationEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $OrganizationEntityResExtension on OrganizationEntityRes {
  OrganizationEntityRes copyWith(
      {Organization? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return OrganizationEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  OrganizationEntityRes copyWithWrapped(
      {Wrapped<Organization?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return OrganizationEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationArray {
  const OrganizationArray({
    this.values,
  });

  factory OrganizationArray.fromJson(Map<String, dynamic> json) =>
      _$OrganizationArrayFromJson(json);

  static const toJsonFactory = _$OrganizationArrayToJson;
  Map<String, dynamic> toJson() => _$OrganizationArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Organization>[])
  final List<Organization>? values;
  static const fromJsonFactory = _$OrganizationArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrganizationArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $OrganizationArrayExtension on OrganizationArray {
  OrganizationArray copyWith({List<Organization>? values}) {
    return OrganizationArray(values: values ?? this.values);
  }

  OrganizationArray copyWithWrapped({Wrapped<List<Organization>?>? values}) {
    return OrganizationArray(
        values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationArrayRes {
  const OrganizationArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory OrganizationArrayRes.fromJson(Map<String, dynamic> json) =>
      _$OrganizationArrayResFromJson(json);

  static const toJsonFactory = _$OrganizationArrayResToJson;
  Map<String, dynamic> toJson() => _$OrganizationArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Organization>[])
  final List<Organization>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$OrganizationArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrganizationArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $OrganizationArrayResExtension on OrganizationArrayRes {
  OrganizationArrayRes copyWith(
      {List<Organization>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return OrganizationArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  OrganizationArrayRes copyWithWrapped(
      {Wrapped<List<Organization>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return OrganizationArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class Subscription {
  const Subscription({
    required this.orgId,
    required this.profileId,
    required this.subscriptionState,
    required this.subscriptionType,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  static const toJsonFactory = _$SubscriptionToJson;
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'profileId', includeIfNull: false, defaultValue: '')
  final String profileId;
  @JsonKey(
    name: 'subscriptionState',
    includeIfNull: false,
    toJson: subscriptionSubscriptionStateToJson,
    fromJson: subscriptionSubscriptionStateFromJson,
  )
  final enums.SubscriptionSubscriptionState subscriptionState;
  @JsonKey(
    name: 'subscriptionType',
    includeIfNull: false,
    toJson: subscriptionSubscriptionTypeToJson,
    fromJson: subscriptionSubscriptionTypeFromJson,
  )
  final enums.SubscriptionSubscriptionType subscriptionType;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$SubscriptionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Subscription &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)) &&
            (identical(other.subscriptionState, subscriptionState) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionState, subscriptionState)) &&
            (identical(other.subscriptionType, subscriptionType) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionType, subscriptionType)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(profileId) ^
      const DeepCollectionEquality().hash(subscriptionState) ^
      const DeepCollectionEquality().hash(subscriptionType) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $SubscriptionExtension on Subscription {
  Subscription copyWith(
      {String? orgId,
      String? profileId,
      enums.SubscriptionSubscriptionState? subscriptionState,
      enums.SubscriptionSubscriptionType? subscriptionType,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return Subscription(
        orgId: orgId ?? this.orgId,
        profileId: profileId ?? this.profileId,
        subscriptionState: subscriptionState ?? this.subscriptionState,
        subscriptionType: subscriptionType ?? this.subscriptionType,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  Subscription copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? profileId,
      Wrapped<enums.SubscriptionSubscriptionState>? subscriptionState,
      Wrapped<enums.SubscriptionSubscriptionType>? subscriptionType,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return Subscription(
        orgId: (orgId != null ? orgId.value : this.orgId),
        profileId: (profileId != null ? profileId.value : this.profileId),
        subscriptionState: (subscriptionState != null
            ? subscriptionState.value
            : this.subscriptionState),
        subscriptionType: (subscriptionType != null
            ? subscriptionType.value
            : this.subscriptionType),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class SubscriptionEntity {
  const SubscriptionEntity({
    this.entity,
  });

  factory SubscriptionEntity.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEntityFromJson(json);

  static const toJsonFactory = _$SubscriptionEntityToJson;
  Map<String, dynamic> toJson() => _$SubscriptionEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Subscription? entity;
  static const fromJsonFactory = _$SubscriptionEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubscriptionEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $SubscriptionEntityExtension on SubscriptionEntity {
  SubscriptionEntity copyWith({Subscription? entity}) {
    return SubscriptionEntity(entity: entity ?? this.entity);
  }

  SubscriptionEntity copyWithWrapped({Wrapped<Subscription?>? entity}) {
    return SubscriptionEntity(
        entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class SubscriptionEntityRes {
  const SubscriptionEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory SubscriptionEntityRes.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEntityResFromJson(json);

  static const toJsonFactory = _$SubscriptionEntityResToJson;
  Map<String, dynamic> toJson() => _$SubscriptionEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Subscription? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$SubscriptionEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubscriptionEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $SubscriptionEntityResExtension on SubscriptionEntityRes {
  SubscriptionEntityRes copyWith(
      {Subscription? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return SubscriptionEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  SubscriptionEntityRes copyWithWrapped(
      {Wrapped<Subscription?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return SubscriptionEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamInfo {
  const TeamInfo({
    required this.name,
    this.address,
    this.email,
    this.phone,
    this.website,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
  });

  factory TeamInfo.fromJson(Map<String, dynamic> json) =>
      _$TeamInfoFromJson(json);

  static const toJsonFactory = _$TeamInfoToJson;
  Map<String, dynamic> toJson() => _$TeamInfoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final TeamSettings? settings;
  static const fromJsonFactory = _$TeamInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      runtimeType.hashCode;
}

extension $TeamInfoExtension on TeamInfo {
  TeamInfo copyWith(
      {String? name,
      String? address,
      String? email,
      String? phone,
      String? website,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      TeamSettings? settings}) {
    return TeamInfo(
        name: name ?? this.name,
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings);
  }

  TeamInfo copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? website,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<TeamSettings?>? settings}) {
    return TeamInfo(
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        website: (website != null ? website.value : this.website),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings));
  }
}

@JsonSerializable(explicitToJson: true)
class Team {
  const Team({
    required this.orgId,
    required this.profileId,
    required this.name,
    this.address,
    this.email,
    this.phone,
    this.website,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  static const toJsonFactory = _$TeamToJson;
  Map<String, dynamic> toJson() => _$TeamToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'profileId', includeIfNull: false, defaultValue: '')
  final String profileId;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final TeamSettings? settings;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$TeamFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Team &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(profileId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $TeamExtension on Team {
  Team copyWith(
      {String? orgId,
      String? profileId,
      String? name,
      String? address,
      String? email,
      String? phone,
      String? website,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      TeamSettings? settings,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return Team(
        orgId: orgId ?? this.orgId,
        profileId: profileId ?? this.profileId,
        name: name ?? this.name,
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  Team copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? profileId,
      Wrapped<String>? name,
      Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? website,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<TeamSettings?>? settings,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return Team(
        orgId: (orgId != null ? orgId.value : this.orgId),
        profileId: (profileId != null ? profileId.value : this.profileId),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        website: (website != null ? website.value : this.website),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamEntity {
  const TeamEntity({
    this.entity,
  });

  factory TeamEntity.fromJson(Map<String, dynamic> json) =>
      _$TeamEntityFromJson(json);

  static const toJsonFactory = _$TeamEntityToJson;
  Map<String, dynamic> toJson() => _$TeamEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Team? entity;
  static const fromJsonFactory = _$TeamEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $TeamEntityExtension on TeamEntity {
  TeamEntity copyWith({Team? entity}) {
    return TeamEntity(entity: entity ?? this.entity);
  }

  TeamEntity copyWithWrapped({Wrapped<Team?>? entity}) {
    return TeamEntity(entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamEntityRes {
  const TeamEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory TeamEntityRes.fromJson(Map<String, dynamic> json) =>
      _$TeamEntityResFromJson(json);

  static const toJsonFactory = _$TeamEntityResToJson;
  Map<String, dynamic> toJson() => _$TeamEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Team? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$TeamEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $TeamEntityResExtension on TeamEntityRes {
  TeamEntityRes copyWith(
      {Team? entity, bool? ok, String? msg, String? trace, String? errorCode}) {
    return TeamEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  TeamEntityRes copyWithWrapped(
      {Wrapped<Team?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return TeamEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamArray {
  const TeamArray({
    this.values,
  });

  factory TeamArray.fromJson(Map<String, dynamic> json) =>
      _$TeamArrayFromJson(json);

  static const toJsonFactory = _$TeamArrayToJson;
  Map<String, dynamic> toJson() => _$TeamArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Team>[])
  final List<Team>? values;
  static const fromJsonFactory = _$TeamArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $TeamArrayExtension on TeamArray {
  TeamArray copyWith({List<Team>? values}) {
    return TeamArray(values: values ?? this.values);
  }

  TeamArray copyWithWrapped({Wrapped<List<Team>?>? values}) {
    return TeamArray(values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamArrayRes {
  const TeamArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory TeamArrayRes.fromJson(Map<String, dynamic> json) =>
      _$TeamArrayResFromJson(json);

  static const toJsonFactory = _$TeamArrayResToJson;
  Map<String, dynamic> toJson() => _$TeamArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Team>[])
  final List<Team>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$TeamArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $TeamArrayResExtension on TeamArrayRes {
  TeamArrayRes copyWith(
      {List<Team>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return TeamArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  TeamArrayRes copyWithWrapped(
      {Wrapped<List<Team>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return TeamArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationInfo {
  const ApplicationInfo({
    required this.name,
    this.description,
    this.website,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
  });

  factory ApplicationInfo.fromJson(Map<String, dynamic> json) =>
      _$ApplicationInfoFromJson(json);

  static const toJsonFactory = _$ApplicationInfoToJson;
  Map<String, dynamic> toJson() => _$ApplicationInfoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final ApplicationSettings? settings;
  static const fromJsonFactory = _$ApplicationInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApplicationInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      runtimeType.hashCode;
}

extension $ApplicationInfoExtension on ApplicationInfo {
  ApplicationInfo copyWith(
      {String? name,
      String? description,
      String? website,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      ApplicationSettings? settings}) {
    return ApplicationInfo(
        name: name ?? this.name,
        description: description ?? this.description,
        website: website ?? this.website,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings);
  }

  ApplicationInfo copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<String?>? website,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<ApplicationSettings?>? settings}) {
    return ApplicationInfo(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        website: (website != null ? website.value : this.website),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationModel {
  const ApplicationModel({
    required this.modelJson,
  });

  factory ApplicationModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicationModelFromJson(json);

  static const toJsonFactory = _$ApplicationModelToJson;
  Map<String, dynamic> toJson() => _$ApplicationModelToJson(this);

  @JsonKey(name: 'modelJson', includeIfNull: false, defaultValue: '')
  final String modelJson;
  static const fromJsonFactory = _$ApplicationModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApplicationModel &&
            (identical(other.modelJson, modelJson) ||
                const DeepCollectionEquality()
                    .equals(other.modelJson, modelJson)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(modelJson) ^ runtimeType.hashCode;
}

extension $ApplicationModelExtension on ApplicationModel {
  ApplicationModel copyWith({String? modelJson}) {
    return ApplicationModel(modelJson: modelJson ?? this.modelJson);
  }

  ApplicationModel copyWithWrapped({Wrapped<String>? modelJson}) {
    return ApplicationModel(
        modelJson: (modelJson != null ? modelJson.value : this.modelJson));
  }
}

@JsonSerializable(explicitToJson: true)
class Application {
  const Application({
    required this.orgId,
    required this.teamId,
    required this.target,
    required this.applicationState,
    required this.freePages,
    required this.paidPages,
    this.canBuildAndroid,
    this.canBuildIoS,
    this.canBuildLinux,
    this.canBuildMacos,
    this.canBuildWindows,
    this.canBuildWeb,
    this.canExport,
    this.canDeploy,
    required this.modelJson,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
    required this.name,
    this.description,
    this.website,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.settings,
  });

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  static const toJsonFactory = _$ApplicationToJson;
  Map<String, dynamic> toJson() => _$ApplicationToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'teamId', includeIfNull: false, defaultValue: '')
  final String teamId;
  @JsonKey(
    name: 'target',
    includeIfNull: false,
    toJson: applicationTargetToJson,
    fromJson: applicationTargetFromJson,
  )
  final enums.ApplicationTarget target;
  @JsonKey(
    name: 'applicationState',
    includeIfNull: false,
    toJson: applicationApplicationStateToJson,
    fromJson: applicationApplicationStateFromJson,
  )
  final enums.ApplicationApplicationState applicationState;
  @JsonKey(name: 'freePages', includeIfNull: false)
  final int freePages;
  @JsonKey(name: 'paidPages', includeIfNull: false)
  final int paidPages;
  @JsonKey(name: 'canBuildAndroid', includeIfNull: false, defaultValue: false)
  final bool? canBuildAndroid;
  @JsonKey(name: 'canBuildIoS', includeIfNull: false, defaultValue: false)
  final bool? canBuildIoS;
  @JsonKey(name: 'canBuildLinux', includeIfNull: false, defaultValue: false)
  final bool? canBuildLinux;
  @JsonKey(name: 'canBuildMacos', includeIfNull: false, defaultValue: false)
  final bool? canBuildMacos;
  @JsonKey(name: 'canBuildWindows', includeIfNull: false, defaultValue: false)
  final bool? canBuildWindows;
  @JsonKey(name: 'canBuildWeb', includeIfNull: false, defaultValue: true)
  final bool? canBuildWeb;
  @JsonKey(name: 'canExport', includeIfNull: false, defaultValue: true)
  final bool? canExport;
  @JsonKey(name: 'canDeploy', includeIfNull: false, defaultValue: true)
  final bool? canDeploy;
  @JsonKey(name: 'modelJson', includeIfNull: false, defaultValue: '')
  final String modelJson;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'website', includeIfNull: false, defaultValue: '')
  final String? website;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'settings', includeIfNull: false)
  final ApplicationSettings? settings;
  static const fromJsonFactory = _$ApplicationFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Application &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.applicationState, applicationState) ||
                const DeepCollectionEquality()
                    .equals(other.applicationState, applicationState)) &&
            (identical(other.freePages, freePages) ||
                const DeepCollectionEquality()
                    .equals(other.freePages, freePages)) &&
            (identical(other.paidPages, paidPages) ||
                const DeepCollectionEquality()
                    .equals(other.paidPages, paidPages)) &&
            (identical(other.canBuildAndroid, canBuildAndroid) ||
                const DeepCollectionEquality()
                    .equals(other.canBuildAndroid, canBuildAndroid)) &&
            (identical(other.canBuildIoS, canBuildIoS) ||
                const DeepCollectionEquality()
                    .equals(other.canBuildIoS, canBuildIoS)) &&
            (identical(other.canBuildLinux, canBuildLinux) ||
                const DeepCollectionEquality()
                    .equals(other.canBuildLinux, canBuildLinux)) &&
            (identical(other.canBuildMacos, canBuildMacos) ||
                const DeepCollectionEquality()
                    .equals(other.canBuildMacos, canBuildMacos)) &&
            (identical(other.canBuildWindows, canBuildWindows) ||
                const DeepCollectionEquality()
                    .equals(other.canBuildWindows, canBuildWindows)) &&
            (identical(other.canBuildWeb, canBuildWeb) ||
                const DeepCollectionEquality()
                    .equals(other.canBuildWeb, canBuildWeb)) &&
            (identical(other.canExport, canExport) ||
                const DeepCollectionEquality()
                    .equals(other.canExport, canExport)) &&
            (identical(other.canDeploy, canDeploy) ||
                const DeepCollectionEquality()
                    .equals(other.canDeploy, canDeploy)) &&
            (identical(other.modelJson, modelJson) ||
                const DeepCollectionEquality()
                    .equals(other.modelJson, modelJson)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality().equals(other.website, website)) &&
            (identical(other.icon, icon) || const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) || const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) || const DeepCollectionEquality().equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) || const DeepCollectionEquality().equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.settings, settings) || const DeepCollectionEquality().equals(other.settings, settings)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(applicationState) ^
      const DeepCollectionEquality().hash(freePages) ^
      const DeepCollectionEquality().hash(paidPages) ^
      const DeepCollectionEquality().hash(canBuildAndroid) ^
      const DeepCollectionEquality().hash(canBuildIoS) ^
      const DeepCollectionEquality().hash(canBuildLinux) ^
      const DeepCollectionEquality().hash(canBuildMacos) ^
      const DeepCollectionEquality().hash(canBuildWindows) ^
      const DeepCollectionEquality().hash(canBuildWeb) ^
      const DeepCollectionEquality().hash(canExport) ^
      const DeepCollectionEquality().hash(canDeploy) ^
      const DeepCollectionEquality().hash(modelJson) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(settings) ^
      runtimeType.hashCode;
}

extension $ApplicationExtension on Application {
  Application copyWith(
      {String? orgId,
      String? teamId,
      enums.ApplicationTarget? target,
      enums.ApplicationApplicationState? applicationState,
      int? freePages,
      int? paidPages,
      bool? canBuildAndroid,
      bool? canBuildIoS,
      bool? canBuildLinux,
      bool? canBuildMacos,
      bool? canBuildWindows,
      bool? canBuildWeb,
      bool? canExport,
      bool? canDeploy,
      String? modelJson,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey,
      String? name,
      String? description,
      String? website,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      ApplicationSettings? settings}) {
    return Application(
        orgId: orgId ?? this.orgId,
        teamId: teamId ?? this.teamId,
        target: target ?? this.target,
        applicationState: applicationState ?? this.applicationState,
        freePages: freePages ?? this.freePages,
        paidPages: paidPages ?? this.paidPages,
        canBuildAndroid: canBuildAndroid ?? this.canBuildAndroid,
        canBuildIoS: canBuildIoS ?? this.canBuildIoS,
        canBuildLinux: canBuildLinux ?? this.canBuildLinux,
        canBuildMacos: canBuildMacos ?? this.canBuildMacos,
        canBuildWindows: canBuildWindows ?? this.canBuildWindows,
        canBuildWeb: canBuildWeb ?? this.canBuildWeb,
        canExport: canExport ?? this.canExport,
        canDeploy: canDeploy ?? this.canDeploy,
        modelJson: modelJson ?? this.modelJson,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey,
        name: name ?? this.name,
        description: description ?? this.description,
        website: website ?? this.website,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        settings: settings ?? this.settings);
  }

  Application copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? teamId,
      Wrapped<enums.ApplicationTarget>? target,
      Wrapped<enums.ApplicationApplicationState>? applicationState,
      Wrapped<int>? freePages,
      Wrapped<int>? paidPages,
      Wrapped<bool?>? canBuildAndroid,
      Wrapped<bool?>? canBuildIoS,
      Wrapped<bool?>? canBuildLinux,
      Wrapped<bool?>? canBuildMacos,
      Wrapped<bool?>? canBuildWindows,
      Wrapped<bool?>? canBuildWeb,
      Wrapped<bool?>? canExport,
      Wrapped<bool?>? canDeploy,
      Wrapped<String>? modelJson,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey,
      Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<String?>? website,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<ApplicationSettings?>? settings}) {
    return Application(
        orgId: (orgId != null ? orgId.value : this.orgId),
        teamId: (teamId != null ? teamId.value : this.teamId),
        target: (target != null ? target.value : this.target),
        applicationState: (applicationState != null
            ? applicationState.value
            : this.applicationState),
        freePages: (freePages != null ? freePages.value : this.freePages),
        paidPages: (paidPages != null ? paidPages.value : this.paidPages),
        canBuildAndroid: (canBuildAndroid != null
            ? canBuildAndroid.value
            : this.canBuildAndroid),
        canBuildIoS:
            (canBuildIoS != null ? canBuildIoS.value : this.canBuildIoS),
        canBuildLinux:
            (canBuildLinux != null ? canBuildLinux.value : this.canBuildLinux),
        canBuildMacos:
            (canBuildMacos != null ? canBuildMacos.value : this.canBuildMacos),
        canBuildWindows: (canBuildWindows != null
            ? canBuildWindows.value
            : this.canBuildWindows),
        canBuildWeb:
            (canBuildWeb != null ? canBuildWeb.value : this.canBuildWeb),
        canExport: (canExport != null ? canExport.value : this.canExport),
        canDeploy: (canDeploy != null ? canDeploy.value : this.canDeploy),
        modelJson: (modelJson != null ? modelJson.value : this.modelJson),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        website: (website != null ? website.value : this.website),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        settings: (settings != null ? settings.value : this.settings));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationEntity {
  const ApplicationEntity({
    this.entity,
  });

  factory ApplicationEntity.fromJson(Map<String, dynamic> json) =>
      _$ApplicationEntityFromJson(json);

  static const toJsonFactory = _$ApplicationEntityToJson;
  Map<String, dynamic> toJson() => _$ApplicationEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Application? entity;
  static const fromJsonFactory = _$ApplicationEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApplicationEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $ApplicationEntityExtension on ApplicationEntity {
  ApplicationEntity copyWith({Application? entity}) {
    return ApplicationEntity(entity: entity ?? this.entity);
  }

  ApplicationEntity copyWithWrapped({Wrapped<Application?>? entity}) {
    return ApplicationEntity(
        entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationEntityRes {
  const ApplicationEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory ApplicationEntityRes.fromJson(Map<String, dynamic> json) =>
      _$ApplicationEntityResFromJson(json);

  static const toJsonFactory = _$ApplicationEntityResToJson;
  Map<String, dynamic> toJson() => _$ApplicationEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Application? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$ApplicationEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApplicationEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $ApplicationEntityResExtension on ApplicationEntityRes {
  ApplicationEntityRes copyWith(
      {Application? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return ApplicationEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  ApplicationEntityRes copyWithWrapped(
      {Wrapped<Application?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return ApplicationEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationArray {
  const ApplicationArray({
    this.values,
  });

  factory ApplicationArray.fromJson(Map<String, dynamic> json) =>
      _$ApplicationArrayFromJson(json);

  static const toJsonFactory = _$ApplicationArrayToJson;
  Map<String, dynamic> toJson() => _$ApplicationArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Application>[])
  final List<Application>? values;
  static const fromJsonFactory = _$ApplicationArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApplicationArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $ApplicationArrayExtension on ApplicationArray {
  ApplicationArray copyWith({List<Application>? values}) {
    return ApplicationArray(values: values ?? this.values);
  }

  ApplicationArray copyWithWrapped({Wrapped<List<Application>?>? values}) {
    return ApplicationArray(
        values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationArrayRes {
  const ApplicationArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory ApplicationArrayRes.fromJson(Map<String, dynamic> json) =>
      _$ApplicationArrayResFromJson(json);

  static const toJsonFactory = _$ApplicationArrayResToJson;
  Map<String, dynamic> toJson() => _$ApplicationArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Application>[])
  final List<Application>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$ApplicationArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApplicationArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $ApplicationArrayResExtension on ApplicationArrayRes {
  ApplicationArrayRes copyWith(
      {List<Application>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return ApplicationArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  ApplicationArrayRes copyWithWrapped(
      {Wrapped<List<Application>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return ApplicationArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class PageInfo {
  const PageInfo({
    required this.name,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.desktopBgImage,
    this.tabBgImage,
    this.mobileBgImage,
    this.bgColor,
    this.settings,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);

  static const toJsonFactory = _$PageInfoToJson;
  Map<String, dynamic> toJson() => _$PageInfoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'desktopBgImage', includeIfNull: false, defaultValue: '')
  final String? desktopBgImage;
  @JsonKey(name: 'tabBgImage', includeIfNull: false, defaultValue: '')
  final String? tabBgImage;
  @JsonKey(name: 'mobileBgImage', includeIfNull: false, defaultValue: '')
  final String? mobileBgImage;
  @JsonKey(name: 'bgColor', includeIfNull: false)
  final int? bgColor;
  @JsonKey(name: 'settings', includeIfNull: false)
  final PageSettings? settings;
  static const fromJsonFactory = _$PageInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.desktopBgImage, desktopBgImage) ||
                const DeepCollectionEquality()
                    .equals(other.desktopBgImage, desktopBgImage)) &&
            (identical(other.tabBgImage, tabBgImage) ||
                const DeepCollectionEquality()
                    .equals(other.tabBgImage, tabBgImage)) &&
            (identical(other.mobileBgImage, mobileBgImage) ||
                const DeepCollectionEquality()
                    .equals(other.mobileBgImage, mobileBgImage)) &&
            (identical(other.bgColor, bgColor) ||
                const DeepCollectionEquality()
                    .equals(other.bgColor, bgColor)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(desktopBgImage) ^
      const DeepCollectionEquality().hash(tabBgImage) ^
      const DeepCollectionEquality().hash(mobileBgImage) ^
      const DeepCollectionEquality().hash(bgColor) ^
      const DeepCollectionEquality().hash(settings) ^
      runtimeType.hashCode;
}

extension $PageInfoExtension on PageInfo {
  PageInfo copyWith(
      {String? name,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      String? desktopBgImage,
      String? tabBgImage,
      String? mobileBgImage,
      int? bgColor,
      PageSettings? settings}) {
    return PageInfo(
        name: name ?? this.name,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        desktopBgImage: desktopBgImage ?? this.desktopBgImage,
        tabBgImage: tabBgImage ?? this.tabBgImage,
        mobileBgImage: mobileBgImage ?? this.mobileBgImage,
        bgColor: bgColor ?? this.bgColor,
        settings: settings ?? this.settings);
  }

  PageInfo copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<String?>? desktopBgImage,
      Wrapped<String?>? tabBgImage,
      Wrapped<String?>? mobileBgImage,
      Wrapped<int?>? bgColor,
      Wrapped<PageSettings?>? settings}) {
    return PageInfo(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        desktopBgImage: (desktopBgImage != null
            ? desktopBgImage.value
            : this.desktopBgImage),
        tabBgImage: (tabBgImage != null ? tabBgImage.value : this.tabBgImage),
        mobileBgImage:
            (mobileBgImage != null ? mobileBgImage.value : this.mobileBgImage),
        bgColor: (bgColor != null ? bgColor.value : this.bgColor),
        settings: (settings != null ? settings.value : this.settings));
  }
}

@JsonSerializable(explicitToJson: true)
class PageModel {
  const PageModel({
    required this.modelJson,
  });

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);

  static const toJsonFactory = _$PageModelToJson;
  Map<String, dynamic> toJson() => _$PageModelToJson(this);

  @JsonKey(name: 'modelJson', includeIfNull: false, defaultValue: '')
  final String modelJson;
  static const fromJsonFactory = _$PageModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageModel &&
            (identical(other.modelJson, modelJson) ||
                const DeepCollectionEquality()
                    .equals(other.modelJson, modelJson)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(modelJson) ^ runtimeType.hashCode;
}

extension $PageModelExtension on PageModel {
  PageModel copyWith({String? modelJson}) {
    return PageModel(modelJson: modelJson ?? this.modelJson);
  }

  PageModel copyWithWrapped({Wrapped<String>? modelJson}) {
    return PageModel(
        modelJson: (modelJson != null ? modelJson.value : this.modelJson));
  }
}

@JsonSerializable(explicitToJson: true)
class Page {
  const Page({
    required this.orgId,
    required this.teamId,
    required this.appId,
    required this.pageState,
    required this.lockedBy,
    required this.name,
    this.description,
    this.icon,
    this.logo,
    this.landscapeBanner,
    this.portraitBanner,
    this.desktopBgImage,
    this.tabBgImage,
    this.mobileBgImage,
    this.bgColor,
    this.settings,
    required this.modelJson,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  static const toJsonFactory = _$PageToJson;
  Map<String, dynamic> toJson() => _$PageToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'teamId', includeIfNull: false, defaultValue: '')
  final String teamId;
  @JsonKey(name: 'appId', includeIfNull: false, defaultValue: '')
  final String appId;
  @JsonKey(
    name: 'pageState',
    includeIfNull: false,
    toJson: pagePageStateToJson,
    fromJson: pagePageStateFromJson,
  )
  final enums.PagePageState pageState;
  @JsonKey(name: 'lockedBy', includeIfNull: false, defaultValue: '')
  final String lockedBy;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'icon', includeIfNull: false, defaultValue: '')
  final String? icon;
  @JsonKey(name: 'logo', includeIfNull: false, defaultValue: '')
  final String? logo;
  @JsonKey(name: 'landscapeBanner', includeIfNull: false, defaultValue: '')
  final String? landscapeBanner;
  @JsonKey(name: 'portraitBanner', includeIfNull: false, defaultValue: '')
  final String? portraitBanner;
  @JsonKey(name: 'desktopBgImage', includeIfNull: false, defaultValue: '')
  final String? desktopBgImage;
  @JsonKey(name: 'tabBgImage', includeIfNull: false, defaultValue: '')
  final String? tabBgImage;
  @JsonKey(name: 'mobileBgImage', includeIfNull: false, defaultValue: '')
  final String? mobileBgImage;
  @JsonKey(name: 'bgColor', includeIfNull: false)
  final int? bgColor;
  @JsonKey(name: 'settings', includeIfNull: false)
  final PageSettings? settings;
  @JsonKey(name: 'modelJson', includeIfNull: false, defaultValue: '')
  final String modelJson;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$PageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Page &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.pageState, pageState) ||
                const DeepCollectionEquality()
                    .equals(other.pageState, pageState)) &&
            (identical(other.lockedBy, lockedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lockedBy, lockedBy)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.landscapeBanner, landscapeBanner) ||
                const DeepCollectionEquality()
                    .equals(other.landscapeBanner, landscapeBanner)) &&
            (identical(other.portraitBanner, portraitBanner) ||
                const DeepCollectionEquality()
                    .equals(other.portraitBanner, portraitBanner)) &&
            (identical(other.desktopBgImage, desktopBgImage) ||
                const DeepCollectionEquality()
                    .equals(other.desktopBgImage, desktopBgImage)) &&
            (identical(other.tabBgImage, tabBgImage) ||
                const DeepCollectionEquality()
                    .equals(other.tabBgImage, tabBgImage)) &&
            (identical(other.mobileBgImage, mobileBgImage) ||
                const DeepCollectionEquality()
                    .equals(other.mobileBgImage, mobileBgImage)) &&
            (identical(other.bgColor, bgColor) ||
                const DeepCollectionEquality()
                    .equals(other.bgColor, bgColor)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.modelJson, modelJson) ||
                const DeepCollectionEquality()
                    .equals(other.modelJson, modelJson)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(pageState) ^
      const DeepCollectionEquality().hash(lockedBy) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(landscapeBanner) ^
      const DeepCollectionEquality().hash(portraitBanner) ^
      const DeepCollectionEquality().hash(desktopBgImage) ^
      const DeepCollectionEquality().hash(tabBgImage) ^
      const DeepCollectionEquality().hash(mobileBgImage) ^
      const DeepCollectionEquality().hash(bgColor) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(modelJson) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $PageExtension on Page {
  Page copyWith(
      {String? orgId,
      String? teamId,
      String? appId,
      enums.PagePageState? pageState,
      String? lockedBy,
      String? name,
      String? description,
      String? icon,
      String? logo,
      String? landscapeBanner,
      String? portraitBanner,
      String? desktopBgImage,
      String? tabBgImage,
      String? mobileBgImage,
      int? bgColor,
      PageSettings? settings,
      String? modelJson,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return Page(
        orgId: orgId ?? this.orgId,
        teamId: teamId ?? this.teamId,
        appId: appId ?? this.appId,
        pageState: pageState ?? this.pageState,
        lockedBy: lockedBy ?? this.lockedBy,
        name: name ?? this.name,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        logo: logo ?? this.logo,
        landscapeBanner: landscapeBanner ?? this.landscapeBanner,
        portraitBanner: portraitBanner ?? this.portraitBanner,
        desktopBgImage: desktopBgImage ?? this.desktopBgImage,
        tabBgImage: tabBgImage ?? this.tabBgImage,
        mobileBgImage: mobileBgImage ?? this.mobileBgImage,
        bgColor: bgColor ?? this.bgColor,
        settings: settings ?? this.settings,
        modelJson: modelJson ?? this.modelJson,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  Page copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? teamId,
      Wrapped<String>? appId,
      Wrapped<enums.PagePageState>? pageState,
      Wrapped<String>? lockedBy,
      Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<String?>? icon,
      Wrapped<String?>? logo,
      Wrapped<String?>? landscapeBanner,
      Wrapped<String?>? portraitBanner,
      Wrapped<String?>? desktopBgImage,
      Wrapped<String?>? tabBgImage,
      Wrapped<String?>? mobileBgImage,
      Wrapped<int?>? bgColor,
      Wrapped<PageSettings?>? settings,
      Wrapped<String>? modelJson,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return Page(
        orgId: (orgId != null ? orgId.value : this.orgId),
        teamId: (teamId != null ? teamId.value : this.teamId),
        appId: (appId != null ? appId.value : this.appId),
        pageState: (pageState != null ? pageState.value : this.pageState),
        lockedBy: (lockedBy != null ? lockedBy.value : this.lockedBy),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        icon: (icon != null ? icon.value : this.icon),
        logo: (logo != null ? logo.value : this.logo),
        landscapeBanner: (landscapeBanner != null
            ? landscapeBanner.value
            : this.landscapeBanner),
        portraitBanner: (portraitBanner != null
            ? portraitBanner.value
            : this.portraitBanner),
        desktopBgImage: (desktopBgImage != null
            ? desktopBgImage.value
            : this.desktopBgImage),
        tabBgImage: (tabBgImage != null ? tabBgImage.value : this.tabBgImage),
        mobileBgImage:
            (mobileBgImage != null ? mobileBgImage.value : this.mobileBgImage),
        bgColor: (bgColor != null ? bgColor.value : this.bgColor),
        settings: (settings != null ? settings.value : this.settings),
        modelJson: (modelJson != null ? modelJson.value : this.modelJson),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class PageEntity {
  const PageEntity({
    this.entity,
  });

  factory PageEntity.fromJson(Map<String, dynamic> json) =>
      _$PageEntityFromJson(json);

  static const toJsonFactory = _$PageEntityToJson;
  Map<String, dynamic> toJson() => _$PageEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Page? entity;
  static const fromJsonFactory = _$PageEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $PageEntityExtension on PageEntity {
  PageEntity copyWith({Page? entity}) {
    return PageEntity(entity: entity ?? this.entity);
  }

  PageEntity copyWithWrapped({Wrapped<Page?>? entity}) {
    return PageEntity(entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class PageEntityRes {
  const PageEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory PageEntityRes.fromJson(Map<String, dynamic> json) =>
      _$PageEntityResFromJson(json);

  static const toJsonFactory = _$PageEntityResToJson;
  Map<String, dynamic> toJson() => _$PageEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Page? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$PageEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $PageEntityResExtension on PageEntityRes {
  PageEntityRes copyWith(
      {Page? entity, bool? ok, String? msg, String? trace, String? errorCode}) {
    return PageEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  PageEntityRes copyWithWrapped(
      {Wrapped<Page?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return PageEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class PageArray {
  const PageArray({
    this.values,
  });

  factory PageArray.fromJson(Map<String, dynamic> json) =>
      _$PageArrayFromJson(json);

  static const toJsonFactory = _$PageArrayToJson;
  Map<String, dynamic> toJson() => _$PageArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Page>[])
  final List<Page>? values;
  static const fromJsonFactory = _$PageArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $PageArrayExtension on PageArray {
  PageArray copyWith({List<Page>? values}) {
    return PageArray(values: values ?? this.values);
  }

  PageArray copyWithWrapped({Wrapped<List<Page>?>? values}) {
    return PageArray(values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class PageArrayRes {
  const PageArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory PageArrayRes.fromJson(Map<String, dynamic> json) =>
      _$PageArrayResFromJson(json);

  static const toJsonFactory = _$PageArrayResToJson;
  Map<String, dynamic> toJson() => _$PageArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Page>[])
  final List<Page>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$PageArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $PageArrayResExtension on PageArrayRes {
  PageArrayRes copyWith(
      {List<Page>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return PageArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  PageArrayRes copyWithWrapped(
      {Wrapped<List<Page>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return PageArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class ImageFileInfo {
  const ImageFileInfo({
    required this.imageType,
    required this.imageTarget,
    required this.name,
    required this.orgId,
    this.teamId,
    this.appId,
    this.pageId,
  });

  factory ImageFileInfo.fromJson(Map<String, dynamic> json) =>
      _$ImageFileInfoFromJson(json);

  static const toJsonFactory = _$ImageFileInfoToJson;
  Map<String, dynamic> toJson() => _$ImageFileInfoToJson(this);

  @JsonKey(
    name: 'imageType',
    includeIfNull: false,
    toJson: imageFileInfoImageTypeToJson,
    fromJson: imageFileInfoImageTypeFromJson,
  )
  final enums.ImageFileInfoImageType imageType;
  @JsonKey(
    name: 'imageTarget',
    includeIfNull: false,
    toJson: imageFileInfoImageTargetToJson,
    fromJson: imageFileInfoImageTargetFromJson,
  )
  final enums.ImageFileInfoImageTarget imageTarget;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'teamId', includeIfNull: false, defaultValue: '')
  final String? teamId;
  @JsonKey(name: 'appId', includeIfNull: false, defaultValue: '')
  final String? appId;
  @JsonKey(name: 'pageId', includeIfNull: false, defaultValue: '')
  final String? pageId;
  static const fromJsonFactory = _$ImageFileInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImageFileInfo &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality()
                    .equals(other.imageType, imageType)) &&
            (identical(other.imageTarget, imageTarget) ||
                const DeepCollectionEquality()
                    .equals(other.imageTarget, imageTarget)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.pageId, pageId) ||
                const DeepCollectionEquality().equals(other.pageId, pageId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageType) ^
      const DeepCollectionEquality().hash(imageTarget) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(pageId) ^
      runtimeType.hashCode;
}

extension $ImageFileInfoExtension on ImageFileInfo {
  ImageFileInfo copyWith(
      {enums.ImageFileInfoImageType? imageType,
      enums.ImageFileInfoImageTarget? imageTarget,
      String? name,
      String? orgId,
      String? teamId,
      String? appId,
      String? pageId}) {
    return ImageFileInfo(
        imageType: imageType ?? this.imageType,
        imageTarget: imageTarget ?? this.imageTarget,
        name: name ?? this.name,
        orgId: orgId ?? this.orgId,
        teamId: teamId ?? this.teamId,
        appId: appId ?? this.appId,
        pageId: pageId ?? this.pageId);
  }

  ImageFileInfo copyWithWrapped(
      {Wrapped<enums.ImageFileInfoImageType>? imageType,
      Wrapped<enums.ImageFileInfoImageTarget>? imageTarget,
      Wrapped<String>? name,
      Wrapped<String>? orgId,
      Wrapped<String?>? teamId,
      Wrapped<String?>? appId,
      Wrapped<String?>? pageId}) {
    return ImageFileInfo(
        imageType: (imageType != null ? imageType.value : this.imageType),
        imageTarget:
            (imageTarget != null ? imageTarget.value : this.imageTarget),
        name: (name != null ? name.value : this.name),
        orgId: (orgId != null ? orgId.value : this.orgId),
        teamId: (teamId != null ? teamId.value : this.teamId),
        appId: (appId != null ? appId.value : this.appId),
        pageId: (pageId != null ? pageId.value : this.pageId));
  }
}

@JsonSerializable(explicitToJson: true)
class ImageFile {
  const ImageFile({
    required this.contentType,
    required this.imageType,
    required this.imageTarget,
    required this.name,
    required this.orgId,
    this.teamId,
    this.appId,
    this.pageId,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory ImageFile.fromJson(Map<String, dynamic> json) =>
      _$ImageFileFromJson(json);

  static const toJsonFactory = _$ImageFileToJson;
  Map<String, dynamic> toJson() => _$ImageFileToJson(this);

  @JsonKey(name: 'contentType', includeIfNull: false, defaultValue: '')
  final String contentType;
  @JsonKey(
    name: 'imageType',
    includeIfNull: false,
    toJson: imageFileImageTypeToJson,
    fromJson: imageFileImageTypeFromJson,
  )
  final enums.ImageFileImageType imageType;
  @JsonKey(
    name: 'imageTarget',
    includeIfNull: false,
    toJson: imageFileImageTargetToJson,
    fromJson: imageFileImageTargetFromJson,
  )
  final enums.ImageFileImageTarget imageTarget;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'teamId', includeIfNull: false, defaultValue: '')
  final String? teamId;
  @JsonKey(name: 'appId', includeIfNull: false, defaultValue: '')
  final String? appId;
  @JsonKey(name: 'pageId', includeIfNull: false, defaultValue: '')
  final String? pageId;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$ImageFileFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImageFile &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)) &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality()
                    .equals(other.imageType, imageType)) &&
            (identical(other.imageTarget, imageTarget) ||
                const DeepCollectionEquality()
                    .equals(other.imageTarget, imageTarget)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.pageId, pageId) ||
                const DeepCollectionEquality().equals(other.pageId, pageId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) ||
                const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) ||
                const DeepCollectionEquality()
                    .equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) ||
                const DeepCollectionEquality()
                    .equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) ||
                const DeepCollectionEquality()
                    .equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentType) ^
      const DeepCollectionEquality().hash(imageType) ^
      const DeepCollectionEquality().hash(imageTarget) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(pageId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $ImageFileExtension on ImageFile {
  ImageFile copyWith(
      {String? contentType,
      enums.ImageFileImageType? imageType,
      enums.ImageFileImageTarget? imageTarget,
      String? name,
      String? orgId,
      String? teamId,
      String? appId,
      String? pageId,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return ImageFile(
        contentType: contentType ?? this.contentType,
        imageType: imageType ?? this.imageType,
        imageTarget: imageTarget ?? this.imageTarget,
        name: name ?? this.name,
        orgId: orgId ?? this.orgId,
        teamId: teamId ?? this.teamId,
        appId: appId ?? this.appId,
        pageId: pageId ?? this.pageId,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  ImageFile copyWithWrapped(
      {Wrapped<String>? contentType,
      Wrapped<enums.ImageFileImageType>? imageType,
      Wrapped<enums.ImageFileImageTarget>? imageTarget,
      Wrapped<String>? name,
      Wrapped<String>? orgId,
      Wrapped<String?>? teamId,
      Wrapped<String?>? appId,
      Wrapped<String?>? pageId,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return ImageFile(
        contentType:
            (contentType != null ? contentType.value : this.contentType),
        imageType: (imageType != null ? imageType.value : this.imageType),
        imageTarget:
            (imageTarget != null ? imageTarget.value : this.imageTarget),
        name: (name != null ? name.value : this.name),
        orgId: (orgId != null ? orgId.value : this.orgId),
        teamId: (teamId != null ? teamId.value : this.teamId),
        appId: (appId != null ? appId.value : this.appId),
        pageId: (pageId != null ? pageId.value : this.pageId),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class ImageFileEntity {
  const ImageFileEntity({
    this.entity,
  });

  factory ImageFileEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageFileEntityFromJson(json);

  static const toJsonFactory = _$ImageFileEntityToJson;
  Map<String, dynamic> toJson() => _$ImageFileEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final ImageFile? entity;
  static const fromJsonFactory = _$ImageFileEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImageFileEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $ImageFileEntityExtension on ImageFileEntity {
  ImageFileEntity copyWith({ImageFile? entity}) {
    return ImageFileEntity(entity: entity ?? this.entity);
  }

  ImageFileEntity copyWithWrapped({Wrapped<ImageFile?>? entity}) {
    return ImageFileEntity(
        entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class ImageFileEntityRes {
  const ImageFileEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory ImageFileEntityRes.fromJson(Map<String, dynamic> json) =>
      _$ImageFileEntityResFromJson(json);

  static const toJsonFactory = _$ImageFileEntityResToJson;
  Map<String, dynamic> toJson() => _$ImageFileEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final ImageFile? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$ImageFileEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImageFileEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $ImageFileEntityResExtension on ImageFileEntityRes {
  ImageFileEntityRes copyWith(
      {ImageFile? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return ImageFileEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  ImageFileEntityRes copyWithWrapped(
      {Wrapped<ImageFile?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return ImageFileEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class ImageFileArray {
  const ImageFileArray({
    this.values,
  });

  factory ImageFileArray.fromJson(Map<String, dynamic> json) =>
      _$ImageFileArrayFromJson(json);

  static const toJsonFactory = _$ImageFileArrayToJson;
  Map<String, dynamic> toJson() => _$ImageFileArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <ImageFile>[])
  final List<ImageFile>? values;
  static const fromJsonFactory = _$ImageFileArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImageFileArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $ImageFileArrayExtension on ImageFileArray {
  ImageFileArray copyWith({List<ImageFile>? values}) {
    return ImageFileArray(values: values ?? this.values);
  }

  ImageFileArray copyWithWrapped({Wrapped<List<ImageFile>?>? values}) {
    return ImageFileArray(
        values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class ImageFileArrayRes {
  const ImageFileArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory ImageFileArrayRes.fromJson(Map<String, dynamic> json) =>
      _$ImageFileArrayResFromJson(json);

  static const toJsonFactory = _$ImageFileArrayResToJson;
  Map<String, dynamic> toJson() => _$ImageFileArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <ImageFile>[])
  final List<ImageFile>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$ImageFileArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImageFileArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $ImageFileArrayResExtension on ImageFileArrayRes {
  ImageFileArrayRes copyWith(
      {List<ImageFile>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return ImageFileArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  ImageFileArrayRes copyWithWrapped(
      {Wrapped<List<ImageFile>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return ImageFileArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgTeam {
  const OrgTeam({
    this.organization,
    this.subscription,
    this.teams,
  });

  factory OrgTeam.fromJson(Map<String, dynamic> json) =>
      _$OrgTeamFromJson(json);

  static const toJsonFactory = _$OrgTeamToJson;
  Map<String, dynamic> toJson() => _$OrgTeamToJson(this);

  @JsonKey(name: 'organization', includeIfNull: false)
  final Organization? organization;
  @JsonKey(name: 'subscription', includeIfNull: false)
  final Subscription? subscription;
  @JsonKey(name: 'teams', includeIfNull: false, defaultValue: <Team>[])
  final List<Team>? teams;
  static const fromJsonFactory = _$OrgTeamFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgTeam &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.subscription, subscription) ||
                const DeepCollectionEquality()
                    .equals(other.subscription, subscription)) &&
            (identical(other.teams, teams) ||
                const DeepCollectionEquality().equals(other.teams, teams)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(subscription) ^
      const DeepCollectionEquality().hash(teams) ^
      runtimeType.hashCode;
}

extension $OrgTeamExtension on OrgTeam {
  OrgTeam copyWith(
      {Organization? organization,
      Subscription? subscription,
      List<Team>? teams}) {
    return OrgTeam(
        organization: organization ?? this.organization,
        subscription: subscription ?? this.subscription,
        teams: teams ?? this.teams);
  }

  OrgTeam copyWithWrapped(
      {Wrapped<Organization?>? organization,
      Wrapped<Subscription?>? subscription,
      Wrapped<List<Team>?>? teams}) {
    return OrgTeam(
        organization:
            (organization != null ? organization.value : this.organization),
        subscription:
            (subscription != null ? subscription.value : this.subscription),
        teams: (teams != null ? teams.value : this.teams));
  }
}

@JsonSerializable(explicitToJson: true)
class AppProfile {
  const AppProfile({
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.profile,
    this.orgTeams,
  });

  factory AppProfile.fromJson(Map<String, dynamic> json) =>
      _$AppProfileFromJson(json);

  static const toJsonFactory = _$AppProfileToJson;
  Map<String, dynamic> toJson() => _$AppProfileToJson(this);

  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'profile', includeIfNull: false)
  final Profile? profile;
  @JsonKey(name: 'orgTeams', includeIfNull: false, defaultValue: <OrgTeam>[])
  final List<OrgTeam>? orgTeams;
  static const fromJsonFactory = _$AppProfileFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AppProfile &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.orgTeams, orgTeams) ||
                const DeepCollectionEquality()
                    .equals(other.orgTeams, orgTeams)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(orgTeams) ^
      runtimeType.hashCode;
}

extension $AppProfileExtension on AppProfile {
  AppProfile copyWith(
      {bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      Profile? profile,
      List<OrgTeam>? orgTeams}) {
    return AppProfile(
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        profile: profile ?? this.profile,
        orgTeams: orgTeams ?? this.orgTeams);
  }

  AppProfile copyWithWrapped(
      {Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<Profile?>? profile,
      Wrapped<List<OrgTeam>?>? orgTeams}) {
    return AppProfile(
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        profile: (profile != null ? profile.value : this.profile),
        orgTeams: (orgTeams != null ? orgTeams.value : this.orgTeams));
  }
}

@JsonSerializable(explicitToJson: true)
class BaseSettings {
  const BaseSettings({
    required this.font,
    required this.fontSize,
    required this.fontColor,
  });

  factory BaseSettings.fromJson(Map<String, dynamic> json) =>
      _$BaseSettingsFromJson(json);

  static const toJsonFactory = _$BaseSettingsToJson;
  Map<String, dynamic> toJson() => _$BaseSettingsToJson(this);

  @JsonKey(name: 'font', includeIfNull: false, defaultValue: '')
  final String font;
  @JsonKey(name: 'fontSize', includeIfNull: false)
  final int fontSize;
  @JsonKey(name: 'fontColor', includeIfNull: false)
  final int fontColor;
  static const fromJsonFactory = _$BaseSettingsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BaseSettings &&
            (identical(other.font, font) ||
                const DeepCollectionEquality().equals(other.font, font)) &&
            (identical(other.fontSize, fontSize) ||
                const DeepCollectionEquality()
                    .equals(other.fontSize, fontSize)) &&
            (identical(other.fontColor, fontColor) ||
                const DeepCollectionEquality()
                    .equals(other.fontColor, fontColor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(font) ^
      const DeepCollectionEquality().hash(fontSize) ^
      const DeepCollectionEquality().hash(fontColor) ^
      runtimeType.hashCode;
}

extension $BaseSettingsExtension on BaseSettings {
  BaseSettings copyWith({String? font, int? fontSize, int? fontColor}) {
    return BaseSettings(
        font: font ?? this.font,
        fontSize: fontSize ?? this.fontSize,
        fontColor: fontColor ?? this.fontColor);
  }

  BaseSettings copyWithWrapped(
      {Wrapped<String>? font,
      Wrapped<int>? fontSize,
      Wrapped<int>? fontColor}) {
    return BaseSettings(
        font: (font != null ? font.value : this.font),
        fontSize: (fontSize != null ? fontSize.value : this.fontSize),
        fontColor: (fontColor != null ? fontColor.value : this.fontColor));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileSettings {
  const ProfileSettings({
    this.stripeCustomerId,
    this.stripeNoCodeSubscriptionId,
    required this.font,
    required this.fontSize,
    required this.fontColor,
  });

  factory ProfileSettings.fromJson(Map<String, dynamic> json) =>
      _$ProfileSettingsFromJson(json);

  static const toJsonFactory = _$ProfileSettingsToJson;
  Map<String, dynamic> toJson() => _$ProfileSettingsToJson(this);

  @JsonKey(name: 'stripeCustomerId', includeIfNull: false, defaultValue: '')
  final String? stripeCustomerId;
  @JsonKey(
      name: 'stripeNoCodeSubscriptionId',
      includeIfNull: false,
      defaultValue: '')
  final String? stripeNoCodeSubscriptionId;
  @JsonKey(name: 'font', includeIfNull: false, defaultValue: '')
  final String font;
  @JsonKey(name: 'fontSize', includeIfNull: false)
  final int fontSize;
  @JsonKey(name: 'fontColor', includeIfNull: false)
  final int fontColor;
  static const fromJsonFactory = _$ProfileSettingsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProfileSettings &&
            (identical(other.stripeCustomerId, stripeCustomerId) ||
                const DeepCollectionEquality()
                    .equals(other.stripeCustomerId, stripeCustomerId)) &&
            (identical(other.stripeNoCodeSubscriptionId,
                    stripeNoCodeSubscriptionId) ||
                const DeepCollectionEquality().equals(
                    other.stripeNoCodeSubscriptionId,
                    stripeNoCodeSubscriptionId)) &&
            (identical(other.font, font) ||
                const DeepCollectionEquality().equals(other.font, font)) &&
            (identical(other.fontSize, fontSize) ||
                const DeepCollectionEquality()
                    .equals(other.fontSize, fontSize)) &&
            (identical(other.fontColor, fontColor) ||
                const DeepCollectionEquality()
                    .equals(other.fontColor, fontColor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(stripeCustomerId) ^
      const DeepCollectionEquality().hash(stripeNoCodeSubscriptionId) ^
      const DeepCollectionEquality().hash(font) ^
      const DeepCollectionEquality().hash(fontSize) ^
      const DeepCollectionEquality().hash(fontColor) ^
      runtimeType.hashCode;
}

extension $ProfileSettingsExtension on ProfileSettings {
  ProfileSettings copyWith(
      {String? stripeCustomerId,
      String? stripeNoCodeSubscriptionId,
      String? font,
      int? fontSize,
      int? fontColor}) {
    return ProfileSettings(
        stripeCustomerId: stripeCustomerId ?? this.stripeCustomerId,
        stripeNoCodeSubscriptionId:
            stripeNoCodeSubscriptionId ?? this.stripeNoCodeSubscriptionId,
        font: font ?? this.font,
        fontSize: fontSize ?? this.fontSize,
        fontColor: fontColor ?? this.fontColor);
  }

  ProfileSettings copyWithWrapped(
      {Wrapped<String?>? stripeCustomerId,
      Wrapped<String?>? stripeNoCodeSubscriptionId,
      Wrapped<String>? font,
      Wrapped<int>? fontSize,
      Wrapped<int>? fontColor}) {
    return ProfileSettings(
        stripeCustomerId: (stripeCustomerId != null
            ? stripeCustomerId.value
            : this.stripeCustomerId),
        stripeNoCodeSubscriptionId: (stripeNoCodeSubscriptionId != null
            ? stripeNoCodeSubscriptionId.value
            : this.stripeNoCodeSubscriptionId),
        font: (font != null ? font.value : this.font),
        fontSize: (fontSize != null ? fontSize.value : this.fontSize),
        fontColor: (fontColor != null ? fontColor.value : this.fontColor));
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationSettings {
  const OrganizationSettings({
    this.applicationTitle,
    this.applicationTheme,
    this.selfRegistrationDomain,
    this.enableSelfRegistration,
    this.autoApproveSelfRegistration,
    this.twinDomainKey,
    this.twinApiKey,
    this.twinAccountId,
    this.twinPlanId,
    this.stripeCustomerId,
    this.stripeNoCodeDeveloperSubscriptionId,
    this.stripeNoCodeMemberSubscriptionIds,
    this.stripeNoCodeAppInvoiceIds,
    this.stripeNoCodePageInvoiceIds,
    this.stripeTwinUserSubscriptionIds,
    this.stripeTwinDeviceSubscriptionIds,
    required this.font,
    required this.fontSize,
    required this.fontColor,
  });

  factory OrganizationSettings.fromJson(Map<String, dynamic> json) =>
      _$OrganizationSettingsFromJson(json);

  static const toJsonFactory = _$OrganizationSettingsToJson;
  Map<String, dynamic> toJson() => _$OrganizationSettingsToJson(this);

  @JsonKey(name: 'applicationTitle', includeIfNull: false, defaultValue: '')
  final String? applicationTitle;
  @JsonKey(name: 'applicationTheme', includeIfNull: false, defaultValue: '')
  final String? applicationTheme;
  @JsonKey(
      name: 'selfRegistrationDomain', includeIfNull: false, defaultValue: '')
  final String? selfRegistrationDomain;
  @JsonKey(
      name: 'enableSelfRegistration', includeIfNull: false, defaultValue: false)
  final bool? enableSelfRegistration;
  @JsonKey(
      name: 'autoApproveSelfRegistration',
      includeIfNull: false,
      defaultValue: true)
  final bool? autoApproveSelfRegistration;
  @JsonKey(name: 'twinDomainKey', includeIfNull: false, defaultValue: '')
  final String? twinDomainKey;
  @JsonKey(name: 'twinApiKey', includeIfNull: false, defaultValue: '')
  final String? twinApiKey;
  @JsonKey(name: 'twinAccountId', includeIfNull: false, defaultValue: '')
  final String? twinAccountId;
  @JsonKey(name: 'twinPlanId', includeIfNull: false, defaultValue: '')
  final String? twinPlanId;
  @JsonKey(name: 'stripeCustomerId', includeIfNull: false, defaultValue: '')
  final String? stripeCustomerId;
  @JsonKey(
      name: 'stripeNoCodeDeveloperSubscriptionId',
      includeIfNull: false,
      defaultValue: '')
  final String? stripeNoCodeDeveloperSubscriptionId;
  @JsonKey(
      name: 'stripeNoCodeMemberSubscriptionIds',
      includeIfNull: false,
      defaultValue: <String>[])
  final List<String>? stripeNoCodeMemberSubscriptionIds;
  @JsonKey(
      name: 'stripeNoCodeAppInvoiceIds',
      includeIfNull: false,
      defaultValue: <String>[])
  final List<String>? stripeNoCodeAppInvoiceIds;
  @JsonKey(
      name: 'stripeNoCodePageInvoiceIds',
      includeIfNull: false,
      defaultValue: <String>[])
  final List<String>? stripeNoCodePageInvoiceIds;
  @JsonKey(
      name: 'stripeTwinUserSubscriptionIds',
      includeIfNull: false,
      defaultValue: <String>[])
  final List<String>? stripeTwinUserSubscriptionIds;
  @JsonKey(
      name: 'stripeTwinDeviceSubscriptionIds',
      includeIfNull: false,
      defaultValue: <String>[])
  final List<String>? stripeTwinDeviceSubscriptionIds;
  @JsonKey(name: 'font', includeIfNull: false, defaultValue: '')
  final String font;
  @JsonKey(name: 'fontSize', includeIfNull: false)
  final int fontSize;
  @JsonKey(name: 'fontColor', includeIfNull: false)
  final int fontColor;
  static const fromJsonFactory = _$OrganizationSettingsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrganizationSettings &&
            (identical(other.applicationTitle, applicationTitle) ||
                const DeepCollectionEquality()
                    .equals(other.applicationTitle, applicationTitle)) &&
            (identical(other.applicationTheme, applicationTheme) ||
                const DeepCollectionEquality()
                    .equals(other.applicationTheme, applicationTheme)) &&
            (identical(other.selfRegistrationDomain, selfRegistrationDomain) ||
                const DeepCollectionEquality().equals(
                    other.selfRegistrationDomain, selfRegistrationDomain)) &&
            (identical(other.enableSelfRegistration, enableSelfRegistration) ||
                const DeepCollectionEquality().equals(
                    other.enableSelfRegistration, enableSelfRegistration)) &&
            (identical(other.autoApproveSelfRegistration, autoApproveSelfRegistration) ||
                const DeepCollectionEquality().equals(
                    other.autoApproveSelfRegistration,
                    autoApproveSelfRegistration)) &&
            (identical(other.twinDomainKey, twinDomainKey) ||
                const DeepCollectionEquality()
                    .equals(other.twinDomainKey, twinDomainKey)) &&
            (identical(other.twinApiKey, twinApiKey) ||
                const DeepCollectionEquality()
                    .equals(other.twinApiKey, twinApiKey)) &&
            (identical(other.twinAccountId, twinAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.twinAccountId, twinAccountId)) &&
            (identical(other.twinPlanId, twinPlanId) ||
                const DeepCollectionEquality()
                    .equals(other.twinPlanId, twinPlanId)) &&
            (identical(other.stripeCustomerId, stripeCustomerId) ||
                const DeepCollectionEquality()
                    .equals(other.stripeCustomerId, stripeCustomerId)) &&
            (identical(other.stripeNoCodeDeveloperSubscriptionId, stripeNoCodeDeveloperSubscriptionId) ||
                const DeepCollectionEquality().equals(
                    other.stripeNoCodeDeveloperSubscriptionId,
                    stripeNoCodeDeveloperSubscriptionId)) &&
            (identical(other.stripeNoCodeMemberSubscriptionIds, stripeNoCodeMemberSubscriptionIds) ||
                const DeepCollectionEquality().equals(
                    other.stripeNoCodeMemberSubscriptionIds,
                    stripeNoCodeMemberSubscriptionIds)) &&
            (identical(other.stripeNoCodeAppInvoiceIds, stripeNoCodeAppInvoiceIds) ||
                const DeepCollectionEquality().equals(
                    other.stripeNoCodeAppInvoiceIds,
                    stripeNoCodeAppInvoiceIds)) &&
            (identical(other.stripeNoCodePageInvoiceIds, stripeNoCodePageInvoiceIds) ||
                const DeepCollectionEquality().equals(
                    other.stripeNoCodePageInvoiceIds, stripeNoCodePageInvoiceIds)) &&
            (identical(other.stripeTwinUserSubscriptionIds, stripeTwinUserSubscriptionIds) || const DeepCollectionEquality().equals(other.stripeTwinUserSubscriptionIds, stripeTwinUserSubscriptionIds)) &&
            (identical(other.stripeTwinDeviceSubscriptionIds, stripeTwinDeviceSubscriptionIds) || const DeepCollectionEquality().equals(other.stripeTwinDeviceSubscriptionIds, stripeTwinDeviceSubscriptionIds)) &&
            (identical(other.font, font) || const DeepCollectionEquality().equals(other.font, font)) &&
            (identical(other.fontSize, fontSize) || const DeepCollectionEquality().equals(other.fontSize, fontSize)) &&
            (identical(other.fontColor, fontColor) || const DeepCollectionEquality().equals(other.fontColor, fontColor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationTitle) ^
      const DeepCollectionEquality().hash(applicationTheme) ^
      const DeepCollectionEquality().hash(selfRegistrationDomain) ^
      const DeepCollectionEquality().hash(enableSelfRegistration) ^
      const DeepCollectionEquality().hash(autoApproveSelfRegistration) ^
      const DeepCollectionEquality().hash(twinDomainKey) ^
      const DeepCollectionEquality().hash(twinApiKey) ^
      const DeepCollectionEquality().hash(twinAccountId) ^
      const DeepCollectionEquality().hash(twinPlanId) ^
      const DeepCollectionEquality().hash(stripeCustomerId) ^
      const DeepCollectionEquality().hash(stripeNoCodeDeveloperSubscriptionId) ^
      const DeepCollectionEquality().hash(stripeNoCodeMemberSubscriptionIds) ^
      const DeepCollectionEquality().hash(stripeNoCodeAppInvoiceIds) ^
      const DeepCollectionEquality().hash(stripeNoCodePageInvoiceIds) ^
      const DeepCollectionEquality().hash(stripeTwinUserSubscriptionIds) ^
      const DeepCollectionEquality().hash(stripeTwinDeviceSubscriptionIds) ^
      const DeepCollectionEquality().hash(font) ^
      const DeepCollectionEquality().hash(fontSize) ^
      const DeepCollectionEquality().hash(fontColor) ^
      runtimeType.hashCode;
}

extension $OrganizationSettingsExtension on OrganizationSettings {
  OrganizationSettings copyWith(
      {String? applicationTitle,
      String? applicationTheme,
      String? selfRegistrationDomain,
      bool? enableSelfRegistration,
      bool? autoApproveSelfRegistration,
      String? twinDomainKey,
      String? twinApiKey,
      String? twinAccountId,
      String? twinPlanId,
      String? stripeCustomerId,
      String? stripeNoCodeDeveloperSubscriptionId,
      List<String>? stripeNoCodeMemberSubscriptionIds,
      List<String>? stripeNoCodeAppInvoiceIds,
      List<String>? stripeNoCodePageInvoiceIds,
      List<String>? stripeTwinUserSubscriptionIds,
      List<String>? stripeTwinDeviceSubscriptionIds,
      String? font,
      int? fontSize,
      int? fontColor}) {
    return OrganizationSettings(
        applicationTitle: applicationTitle ?? this.applicationTitle,
        applicationTheme: applicationTheme ?? this.applicationTheme,
        selfRegistrationDomain:
            selfRegistrationDomain ?? this.selfRegistrationDomain,
        enableSelfRegistration:
            enableSelfRegistration ?? this.enableSelfRegistration,
        autoApproveSelfRegistration:
            autoApproveSelfRegistration ?? this.autoApproveSelfRegistration,
        twinDomainKey: twinDomainKey ?? this.twinDomainKey,
        twinApiKey: twinApiKey ?? this.twinApiKey,
        twinAccountId: twinAccountId ?? this.twinAccountId,
        twinPlanId: twinPlanId ?? this.twinPlanId,
        stripeCustomerId: stripeCustomerId ?? this.stripeCustomerId,
        stripeNoCodeDeveloperSubscriptionId:
            stripeNoCodeDeveloperSubscriptionId ??
                this.stripeNoCodeDeveloperSubscriptionId,
        stripeNoCodeMemberSubscriptionIds: stripeNoCodeMemberSubscriptionIds ??
            this.stripeNoCodeMemberSubscriptionIds,
        stripeNoCodeAppInvoiceIds:
            stripeNoCodeAppInvoiceIds ?? this.stripeNoCodeAppInvoiceIds,
        stripeNoCodePageInvoiceIds:
            stripeNoCodePageInvoiceIds ?? this.stripeNoCodePageInvoiceIds,
        stripeTwinUserSubscriptionIds:
            stripeTwinUserSubscriptionIds ?? this.stripeTwinUserSubscriptionIds,
        stripeTwinDeviceSubscriptionIds: stripeTwinDeviceSubscriptionIds ??
            this.stripeTwinDeviceSubscriptionIds,
        font: font ?? this.font,
        fontSize: fontSize ?? this.fontSize,
        fontColor: fontColor ?? this.fontColor);
  }

  OrganizationSettings copyWithWrapped(
      {Wrapped<String?>? applicationTitle,
      Wrapped<String?>? applicationTheme,
      Wrapped<String?>? selfRegistrationDomain,
      Wrapped<bool?>? enableSelfRegistration,
      Wrapped<bool?>? autoApproveSelfRegistration,
      Wrapped<String?>? twinDomainKey,
      Wrapped<String?>? twinApiKey,
      Wrapped<String?>? twinAccountId,
      Wrapped<String?>? twinPlanId,
      Wrapped<String?>? stripeCustomerId,
      Wrapped<String?>? stripeNoCodeDeveloperSubscriptionId,
      Wrapped<List<String>?>? stripeNoCodeMemberSubscriptionIds,
      Wrapped<List<String>?>? stripeNoCodeAppInvoiceIds,
      Wrapped<List<String>?>? stripeNoCodePageInvoiceIds,
      Wrapped<List<String>?>? stripeTwinUserSubscriptionIds,
      Wrapped<List<String>?>? stripeTwinDeviceSubscriptionIds,
      Wrapped<String>? font,
      Wrapped<int>? fontSize,
      Wrapped<int>? fontColor}) {
    return OrganizationSettings(
        applicationTitle: (applicationTitle != null
            ? applicationTitle.value
            : this.applicationTitle),
        applicationTheme: (applicationTheme != null
            ? applicationTheme.value
            : this.applicationTheme),
        selfRegistrationDomain: (selfRegistrationDomain != null
            ? selfRegistrationDomain.value
            : this.selfRegistrationDomain),
        enableSelfRegistration: (enableSelfRegistration != null
            ? enableSelfRegistration.value
            : this.enableSelfRegistration),
        autoApproveSelfRegistration: (autoApproveSelfRegistration != null
            ? autoApproveSelfRegistration.value
            : this.autoApproveSelfRegistration),
        twinDomainKey:
            (twinDomainKey != null ? twinDomainKey.value : this.twinDomainKey),
        twinApiKey: (twinApiKey != null ? twinApiKey.value : this.twinApiKey),
        twinAccountId:
            (twinAccountId != null ? twinAccountId.value : this.twinAccountId),
        twinPlanId: (twinPlanId != null ? twinPlanId.value : this.twinPlanId),
        stripeCustomerId: (stripeCustomerId != null
            ? stripeCustomerId.value
            : this.stripeCustomerId),
        stripeNoCodeDeveloperSubscriptionId:
            (stripeNoCodeDeveloperSubscriptionId != null
                ? stripeNoCodeDeveloperSubscriptionId.value
                : this.stripeNoCodeDeveloperSubscriptionId),
        stripeNoCodeMemberSubscriptionIds:
            (stripeNoCodeMemberSubscriptionIds != null
                ? stripeNoCodeMemberSubscriptionIds.value
                : this.stripeNoCodeMemberSubscriptionIds),
        stripeNoCodeAppInvoiceIds: (stripeNoCodeAppInvoiceIds != null
            ? stripeNoCodeAppInvoiceIds.value
            : this.stripeNoCodeAppInvoiceIds),
        stripeNoCodePageInvoiceIds: (stripeNoCodePageInvoiceIds != null
            ? stripeNoCodePageInvoiceIds.value
            : this.stripeNoCodePageInvoiceIds),
        stripeTwinUserSubscriptionIds: (stripeTwinUserSubscriptionIds != null
            ? stripeTwinUserSubscriptionIds.value
            : this.stripeTwinUserSubscriptionIds),
        stripeTwinDeviceSubscriptionIds:
            (stripeTwinDeviceSubscriptionIds != null
                ? stripeTwinDeviceSubscriptionIds.value
                : this.stripeTwinDeviceSubscriptionIds),
        font: (font != null ? font.value : this.font),
        fontSize: (fontSize != null ? fontSize.value : this.fontSize),
        fontColor: (fontColor != null ? fontColor.value : this.fontColor));
  }
}

@JsonSerializable(explicitToJson: true)
class TeamSettings {
  const TeamSettings({
    required this.font,
    required this.fontSize,
    required this.fontColor,
  });

  factory TeamSettings.fromJson(Map<String, dynamic> json) =>
      _$TeamSettingsFromJson(json);

  static const toJsonFactory = _$TeamSettingsToJson;
  Map<String, dynamic> toJson() => _$TeamSettingsToJson(this);

  @JsonKey(name: 'font', includeIfNull: false, defaultValue: '')
  final String font;
  @JsonKey(name: 'fontSize', includeIfNull: false)
  final int fontSize;
  @JsonKey(name: 'fontColor', includeIfNull: false)
  final int fontColor;
  static const fromJsonFactory = _$TeamSettingsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeamSettings &&
            (identical(other.font, font) ||
                const DeepCollectionEquality().equals(other.font, font)) &&
            (identical(other.fontSize, fontSize) ||
                const DeepCollectionEquality()
                    .equals(other.fontSize, fontSize)) &&
            (identical(other.fontColor, fontColor) ||
                const DeepCollectionEquality()
                    .equals(other.fontColor, fontColor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(font) ^
      const DeepCollectionEquality().hash(fontSize) ^
      const DeepCollectionEquality().hash(fontColor) ^
      runtimeType.hashCode;
}

extension $TeamSettingsExtension on TeamSettings {
  TeamSettings copyWith({String? font, int? fontSize, int? fontColor}) {
    return TeamSettings(
        font: font ?? this.font,
        fontSize: fontSize ?? this.fontSize,
        fontColor: fontColor ?? this.fontColor);
  }

  TeamSettings copyWithWrapped(
      {Wrapped<String>? font,
      Wrapped<int>? fontSize,
      Wrapped<int>? fontColor}) {
    return TeamSettings(
        font: (font != null ? font.value : this.font),
        fontSize: (fontSize != null ? fontSize.value : this.fontSize),
        fontColor: (fontColor != null ? fontColor.value : this.fontColor));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationSettings {
  const ApplicationSettings({
    this.stripeInvoiceId,
    required this.font,
    required this.fontSize,
    required this.fontColor,
  });

  factory ApplicationSettings.fromJson(Map<String, dynamic> json) =>
      _$ApplicationSettingsFromJson(json);

  static const toJsonFactory = _$ApplicationSettingsToJson;
  Map<String, dynamic> toJson() => _$ApplicationSettingsToJson(this);

  @JsonKey(name: 'stripeInvoiceId', includeIfNull: false, defaultValue: '')
  final String? stripeInvoiceId;
  @JsonKey(name: 'font', includeIfNull: false, defaultValue: '')
  final String font;
  @JsonKey(name: 'fontSize', includeIfNull: false)
  final int fontSize;
  @JsonKey(name: 'fontColor', includeIfNull: false)
  final int fontColor;
  static const fromJsonFactory = _$ApplicationSettingsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApplicationSettings &&
            (identical(other.stripeInvoiceId, stripeInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.stripeInvoiceId, stripeInvoiceId)) &&
            (identical(other.font, font) ||
                const DeepCollectionEquality().equals(other.font, font)) &&
            (identical(other.fontSize, fontSize) ||
                const DeepCollectionEquality()
                    .equals(other.fontSize, fontSize)) &&
            (identical(other.fontColor, fontColor) ||
                const DeepCollectionEquality()
                    .equals(other.fontColor, fontColor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(stripeInvoiceId) ^
      const DeepCollectionEquality().hash(font) ^
      const DeepCollectionEquality().hash(fontSize) ^
      const DeepCollectionEquality().hash(fontColor) ^
      runtimeType.hashCode;
}

extension $ApplicationSettingsExtension on ApplicationSettings {
  ApplicationSettings copyWith(
      {String? stripeInvoiceId, String? font, int? fontSize, int? fontColor}) {
    return ApplicationSettings(
        stripeInvoiceId: stripeInvoiceId ?? this.stripeInvoiceId,
        font: font ?? this.font,
        fontSize: fontSize ?? this.fontSize,
        fontColor: fontColor ?? this.fontColor);
  }

  ApplicationSettings copyWithWrapped(
      {Wrapped<String?>? stripeInvoiceId,
      Wrapped<String>? font,
      Wrapped<int>? fontSize,
      Wrapped<int>? fontColor}) {
    return ApplicationSettings(
        stripeInvoiceId: (stripeInvoiceId != null
            ? stripeInvoiceId.value
            : this.stripeInvoiceId),
        font: (font != null ? font.value : this.font),
        fontSize: (fontSize != null ? fontSize.value : this.fontSize),
        fontColor: (fontColor != null ? fontColor.value : this.fontColor));
  }
}

@JsonSerializable(explicitToJson: true)
class PageSettings {
  const PageSettings({
    this.stripeInvoiceId,
    required this.font,
    required this.fontSize,
    required this.fontColor,
  });

  factory PageSettings.fromJson(Map<String, dynamic> json) =>
      _$PageSettingsFromJson(json);

  static const toJsonFactory = _$PageSettingsToJson;
  Map<String, dynamic> toJson() => _$PageSettingsToJson(this);

  @JsonKey(name: 'stripeInvoiceId', includeIfNull: false, defaultValue: '')
  final String? stripeInvoiceId;
  @JsonKey(name: 'font', includeIfNull: false, defaultValue: '')
  final String font;
  @JsonKey(name: 'fontSize', includeIfNull: false)
  final int fontSize;
  @JsonKey(name: 'fontColor', includeIfNull: false)
  final int fontColor;
  static const fromJsonFactory = _$PageSettingsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageSettings &&
            (identical(other.stripeInvoiceId, stripeInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.stripeInvoiceId, stripeInvoiceId)) &&
            (identical(other.font, font) ||
                const DeepCollectionEquality().equals(other.font, font)) &&
            (identical(other.fontSize, fontSize) ||
                const DeepCollectionEquality()
                    .equals(other.fontSize, fontSize)) &&
            (identical(other.fontColor, fontColor) ||
                const DeepCollectionEquality()
                    .equals(other.fontColor, fontColor)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(stripeInvoiceId) ^
      const DeepCollectionEquality().hash(font) ^
      const DeepCollectionEquality().hash(fontSize) ^
      const DeepCollectionEquality().hash(fontColor) ^
      runtimeType.hashCode;
}

extension $PageSettingsExtension on PageSettings {
  PageSettings copyWith(
      {String? stripeInvoiceId, String? font, int? fontSize, int? fontColor}) {
    return PageSettings(
        stripeInvoiceId: stripeInvoiceId ?? this.stripeInvoiceId,
        font: font ?? this.font,
        fontSize: fontSize ?? this.fontSize,
        fontColor: fontColor ?? this.fontColor);
  }

  PageSettings copyWithWrapped(
      {Wrapped<String?>? stripeInvoiceId,
      Wrapped<String>? font,
      Wrapped<int>? fontSize,
      Wrapped<int>? fontColor}) {
    return PageSettings(
        stripeInvoiceId: (stripeInvoiceId != null
            ? stripeInvoiceId.value
            : this.stripeInvoiceId),
        font: (font != null ? font.value : this.font),
        fontSize: (fontSize != null ? fontSize.value : this.fontSize),
        fontColor: (fontColor != null ? fontColor.value : this.fontColor));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanInfo {
  const PlanInfo({
    required this.id,
    this.description,
    required this.currency,
    required this.currencySymbol,
    required this.planFee,
    required this.defaultDeviceModelCount,
    required this.defaultDevicesCount,
    required this.defaultDataPointsCount,
    required this.defaultClientCount,
    required this.defaultUserCount,
    required this.defaultArchivalYears,
    required this.defaultDashboardCount,
    required this.defaultModelParametersCount,
    required this.extraDeviceFee,
    required this.extraDeviceModelFee,
    required this.extraDataPointsFee,
    required this.extraClientFee,
    required this.extraUserFee,
    required this.extraArchivalFee,
    required this.extraDashboardFee,
    required this.extraModelParametersFee,
    required this.planFrequency,
    required this.planType,
  });

  factory PlanInfo.fromJson(Map<String, dynamic> json) =>
      _$PlanInfoFromJson(json);

  static const toJsonFactory = _$PlanInfoToJson;
  Map<String, dynamic> toJson() => _$PlanInfoToJson(this);

  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'currencySymbol', includeIfNull: false, defaultValue: '')
  final String currencySymbol;
  @JsonKey(name: 'planFee', includeIfNull: false)
  final double planFee;
  @JsonKey(name: 'defaultDeviceModelCount', includeIfNull: false)
  final int defaultDeviceModelCount;
  @JsonKey(name: 'defaultDevicesCount', includeIfNull: false)
  final int defaultDevicesCount;
  @JsonKey(name: 'defaultDataPointsCount', includeIfNull: false)
  final int defaultDataPointsCount;
  @JsonKey(name: 'defaultClientCount', includeIfNull: false)
  final int defaultClientCount;
  @JsonKey(name: 'defaultUserCount', includeIfNull: false)
  final int defaultUserCount;
  @JsonKey(name: 'defaultArchivalYears', includeIfNull: false)
  final int defaultArchivalYears;
  @JsonKey(name: 'defaultDashboardCount', includeIfNull: false)
  final int defaultDashboardCount;
  @JsonKey(name: 'defaultModelParametersCount', includeIfNull: false)
  final int defaultModelParametersCount;
  @JsonKey(name: 'extraDeviceFee', includeIfNull: false)
  final double extraDeviceFee;
  @JsonKey(name: 'extraDeviceModelFee', includeIfNull: false)
  final double extraDeviceModelFee;
  @JsonKey(name: 'extraDataPointsFee', includeIfNull: false)
  final double extraDataPointsFee;
  @JsonKey(name: 'extraClientFee', includeIfNull: false)
  final double extraClientFee;
  @JsonKey(name: 'extraUserFee', includeIfNull: false)
  final double extraUserFee;
  @JsonKey(name: 'extraArchivalFee', includeIfNull: false)
  final double extraArchivalFee;
  @JsonKey(name: 'extraDashboardFee', includeIfNull: false)
  final double extraDashboardFee;
  @JsonKey(name: 'extraModelParametersFee', includeIfNull: false)
  final double extraModelParametersFee;
  @JsonKey(
    name: 'planFrequency',
    includeIfNull: false,
    toJson: planInfoPlanFrequencyToJson,
    fromJson: planInfoPlanFrequencyFromJson,
  )
  final enums.PlanInfoPlanFrequency planFrequency;
  @JsonKey(
    name: 'planType',
    includeIfNull: false,
    toJson: planInfoPlanTypeToJson,
    fromJson: planInfoPlanTypeFromJson,
  )
  final enums.PlanInfoPlanType planType;
  static const fromJsonFactory = _$PlanInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencySymbol, currencySymbol) ||
                const DeepCollectionEquality()
                    .equals(other.currencySymbol, currencySymbol)) &&
            (identical(other.planFee, planFee) ||
                const DeepCollectionEquality()
                    .equals(other.planFee, planFee)) &&
            (identical(other.defaultDeviceModelCount, defaultDeviceModelCount) ||
                const DeepCollectionEquality().equals(
                    other.defaultDeviceModelCount, defaultDeviceModelCount)) &&
            (identical(other.defaultDevicesCount, defaultDevicesCount) ||
                const DeepCollectionEquality()
                    .equals(other.defaultDevicesCount, defaultDevicesCount)) &&
            (identical(other.defaultDataPointsCount, defaultDataPointsCount) ||
                const DeepCollectionEquality().equals(
                    other.defaultDataPointsCount, defaultDataPointsCount)) &&
            (identical(other.defaultClientCount, defaultClientCount) ||
                const DeepCollectionEquality()
                    .equals(other.defaultClientCount, defaultClientCount)) &&
            (identical(other.defaultUserCount, defaultUserCount) ||
                const DeepCollectionEquality()
                    .equals(other.defaultUserCount, defaultUserCount)) &&
            (identical(other.defaultArchivalYears, defaultArchivalYears) ||
                const DeepCollectionEquality().equals(
                    other.defaultArchivalYears, defaultArchivalYears)) &&
            (identical(other.defaultDashboardCount, defaultDashboardCount) ||
                const DeepCollectionEquality().equals(
                    other.defaultDashboardCount, defaultDashboardCount)) &&
            (identical(other.defaultModelParametersCount, defaultModelParametersCount) ||
                const DeepCollectionEquality().equals(
                    other.defaultModelParametersCount,
                    defaultModelParametersCount)) &&
            (identical(other.extraDeviceFee, extraDeviceFee) ||
                const DeepCollectionEquality()
                    .equals(other.extraDeviceFee, extraDeviceFee)) &&
            (identical(other.extraDeviceModelFee, extraDeviceModelFee) ||
                const DeepCollectionEquality()
                    .equals(other.extraDeviceModelFee, extraDeviceModelFee)) &&
            (identical(other.extraDataPointsFee, extraDataPointsFee) ||
                const DeepCollectionEquality()
                    .equals(other.extraDataPointsFee, extraDataPointsFee)) &&
            (identical(other.extraClientFee, extraClientFee) || const DeepCollectionEquality().equals(other.extraClientFee, extraClientFee)) &&
            (identical(other.extraUserFee, extraUserFee) || const DeepCollectionEquality().equals(other.extraUserFee, extraUserFee)) &&
            (identical(other.extraArchivalFee, extraArchivalFee) || const DeepCollectionEquality().equals(other.extraArchivalFee, extraArchivalFee)) &&
            (identical(other.extraDashboardFee, extraDashboardFee) || const DeepCollectionEquality().equals(other.extraDashboardFee, extraDashboardFee)) &&
            (identical(other.extraModelParametersFee, extraModelParametersFee) || const DeepCollectionEquality().equals(other.extraModelParametersFee, extraModelParametersFee)) &&
            (identical(other.planFrequency, planFrequency) || const DeepCollectionEquality().equals(other.planFrequency, planFrequency)) &&
            (identical(other.planType, planType) || const DeepCollectionEquality().equals(other.planType, planType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencySymbol) ^
      const DeepCollectionEquality().hash(planFee) ^
      const DeepCollectionEquality().hash(defaultDeviceModelCount) ^
      const DeepCollectionEquality().hash(defaultDevicesCount) ^
      const DeepCollectionEquality().hash(defaultDataPointsCount) ^
      const DeepCollectionEquality().hash(defaultClientCount) ^
      const DeepCollectionEquality().hash(defaultUserCount) ^
      const DeepCollectionEquality().hash(defaultArchivalYears) ^
      const DeepCollectionEquality().hash(defaultDashboardCount) ^
      const DeepCollectionEquality().hash(defaultModelParametersCount) ^
      const DeepCollectionEquality().hash(extraDeviceFee) ^
      const DeepCollectionEquality().hash(extraDeviceModelFee) ^
      const DeepCollectionEquality().hash(extraDataPointsFee) ^
      const DeepCollectionEquality().hash(extraClientFee) ^
      const DeepCollectionEquality().hash(extraUserFee) ^
      const DeepCollectionEquality().hash(extraArchivalFee) ^
      const DeepCollectionEquality().hash(extraDashboardFee) ^
      const DeepCollectionEquality().hash(extraModelParametersFee) ^
      const DeepCollectionEquality().hash(planFrequency) ^
      const DeepCollectionEquality().hash(planType) ^
      runtimeType.hashCode;
}

extension $PlanInfoExtension on PlanInfo {
  PlanInfo copyWith(
      {String? id,
      String? description,
      String? currency,
      String? currencySymbol,
      double? planFee,
      int? defaultDeviceModelCount,
      int? defaultDevicesCount,
      int? defaultDataPointsCount,
      int? defaultClientCount,
      int? defaultUserCount,
      int? defaultArchivalYears,
      int? defaultDashboardCount,
      int? defaultModelParametersCount,
      double? extraDeviceFee,
      double? extraDeviceModelFee,
      double? extraDataPointsFee,
      double? extraClientFee,
      double? extraUserFee,
      double? extraArchivalFee,
      double? extraDashboardFee,
      double? extraModelParametersFee,
      enums.PlanInfoPlanFrequency? planFrequency,
      enums.PlanInfoPlanType? planType}) {
    return PlanInfo(
        id: id ?? this.id,
        description: description ?? this.description,
        currency: currency ?? this.currency,
        currencySymbol: currencySymbol ?? this.currencySymbol,
        planFee: planFee ?? this.planFee,
        defaultDeviceModelCount:
            defaultDeviceModelCount ?? this.defaultDeviceModelCount,
        defaultDevicesCount: defaultDevicesCount ?? this.defaultDevicesCount,
        defaultDataPointsCount:
            defaultDataPointsCount ?? this.defaultDataPointsCount,
        defaultClientCount: defaultClientCount ?? this.defaultClientCount,
        defaultUserCount: defaultUserCount ?? this.defaultUserCount,
        defaultArchivalYears: defaultArchivalYears ?? this.defaultArchivalYears,
        defaultDashboardCount:
            defaultDashboardCount ?? this.defaultDashboardCount,
        defaultModelParametersCount:
            defaultModelParametersCount ?? this.defaultModelParametersCount,
        extraDeviceFee: extraDeviceFee ?? this.extraDeviceFee,
        extraDeviceModelFee: extraDeviceModelFee ?? this.extraDeviceModelFee,
        extraDataPointsFee: extraDataPointsFee ?? this.extraDataPointsFee,
        extraClientFee: extraClientFee ?? this.extraClientFee,
        extraUserFee: extraUserFee ?? this.extraUserFee,
        extraArchivalFee: extraArchivalFee ?? this.extraArchivalFee,
        extraDashboardFee: extraDashboardFee ?? this.extraDashboardFee,
        extraModelParametersFee:
            extraModelParametersFee ?? this.extraModelParametersFee,
        planFrequency: planFrequency ?? this.planFrequency,
        planType: planType ?? this.planType);
  }

  PlanInfo copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? description,
      Wrapped<String>? currency,
      Wrapped<String>? currencySymbol,
      Wrapped<double>? planFee,
      Wrapped<int>? defaultDeviceModelCount,
      Wrapped<int>? defaultDevicesCount,
      Wrapped<int>? defaultDataPointsCount,
      Wrapped<int>? defaultClientCount,
      Wrapped<int>? defaultUserCount,
      Wrapped<int>? defaultArchivalYears,
      Wrapped<int>? defaultDashboardCount,
      Wrapped<int>? defaultModelParametersCount,
      Wrapped<double>? extraDeviceFee,
      Wrapped<double>? extraDeviceModelFee,
      Wrapped<double>? extraDataPointsFee,
      Wrapped<double>? extraClientFee,
      Wrapped<double>? extraUserFee,
      Wrapped<double>? extraArchivalFee,
      Wrapped<double>? extraDashboardFee,
      Wrapped<double>? extraModelParametersFee,
      Wrapped<enums.PlanInfoPlanFrequency>? planFrequency,
      Wrapped<enums.PlanInfoPlanType>? planType}) {
    return PlanInfo(
        id: (id != null ? id.value : this.id),
        description:
            (description != null ? description.value : this.description),
        currency: (currency != null ? currency.value : this.currency),
        currencySymbol: (currencySymbol != null
            ? currencySymbol.value
            : this.currencySymbol),
        planFee: (planFee != null ? planFee.value : this.planFee),
        defaultDeviceModelCount: (defaultDeviceModelCount != null
            ? defaultDeviceModelCount.value
            : this.defaultDeviceModelCount),
        defaultDevicesCount: (defaultDevicesCount != null
            ? defaultDevicesCount.value
            : this.defaultDevicesCount),
        defaultDataPointsCount: (defaultDataPointsCount != null
            ? defaultDataPointsCount.value
            : this.defaultDataPointsCount),
        defaultClientCount: (defaultClientCount != null
            ? defaultClientCount.value
            : this.defaultClientCount),
        defaultUserCount: (defaultUserCount != null
            ? defaultUserCount.value
            : this.defaultUserCount),
        defaultArchivalYears: (defaultArchivalYears != null
            ? defaultArchivalYears.value
            : this.defaultArchivalYears),
        defaultDashboardCount: (defaultDashboardCount != null
            ? defaultDashboardCount.value
            : this.defaultDashboardCount),
        defaultModelParametersCount: (defaultModelParametersCount != null
            ? defaultModelParametersCount.value
            : this.defaultModelParametersCount),
        extraDeviceFee: (extraDeviceFee != null
            ? extraDeviceFee.value
            : this.extraDeviceFee),
        extraDeviceModelFee: (extraDeviceModelFee != null
            ? extraDeviceModelFee.value
            : this.extraDeviceModelFee),
        extraDataPointsFee: (extraDataPointsFee != null
            ? extraDataPointsFee.value
            : this.extraDataPointsFee),
        extraClientFee: (extraClientFee != null
            ? extraClientFee.value
            : this.extraClientFee),
        extraUserFee:
            (extraUserFee != null ? extraUserFee.value : this.extraUserFee),
        extraArchivalFee: (extraArchivalFee != null
            ? extraArchivalFee.value
            : this.extraArchivalFee),
        extraDashboardFee: (extraDashboardFee != null
            ? extraDashboardFee.value
            : this.extraDashboardFee),
        extraModelParametersFee: (extraModelParametersFee != null
            ? extraModelParametersFee.value
            : this.extraModelParametersFee),
        planFrequency:
            (planFrequency != null ? planFrequency.value : this.planFrequency),
        planType: (planType != null ? planType.value : this.planType));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanBase {
  const PlanBase({
    required this.name,
    required this.customPlan,
  });

  factory PlanBase.fromJson(Map<String, dynamic> json) =>
      _$PlanBaseFromJson(json);

  static const toJsonFactory = _$PlanBaseToJson;
  Map<String, dynamic> toJson() => _$PlanBaseToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'customPlan', includeIfNull: false)
  final bool customPlan;
  static const fromJsonFactory = _$PlanBaseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanBase &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.customPlan, customPlan) ||
                const DeepCollectionEquality()
                    .equals(other.customPlan, customPlan)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(customPlan) ^
      runtimeType.hashCode;
}

extension $PlanBaseExtension on PlanBase {
  PlanBase copyWith({String? name, bool? customPlan}) {
    return PlanBase(
        name: name ?? this.name, customPlan: customPlan ?? this.customPlan);
  }

  PlanBase copyWithWrapped({Wrapped<String>? name, Wrapped<bool>? customPlan}) {
    return PlanBase(
        name: (name != null ? name.value : this.name),
        customPlan: (customPlan != null ? customPlan.value : this.customPlan));
  }
}

@JsonSerializable(explicitToJson: true)
class Plan {
  const Plan({
    required this.customPlan,
    required this.id,
    this.description,
    required this.currency,
    required this.currencySymbol,
    required this.planFee,
    required this.defaultDeviceModelCount,
    required this.defaultDevicesCount,
    required this.defaultDataPointsCount,
    required this.defaultClientCount,
    required this.defaultUserCount,
    required this.defaultArchivalYears,
    required this.defaultDashboardCount,
    required this.defaultModelParametersCount,
    required this.extraDeviceFee,
    required this.extraDeviceModelFee,
    required this.extraDataPointsFee,
    required this.extraClientFee,
    required this.extraUserFee,
    required this.extraArchivalFee,
    required this.extraDashboardFee,
    required this.extraModelParametersFee,
    required this.planFrequency,
    required this.planType,
    required this.name,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);

  static const toJsonFactory = _$PlanToJson;
  Map<String, dynamic> toJson() => _$PlanToJson(this);

  @JsonKey(name: 'customPlan', includeIfNull: false)
  final bool customPlan;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'currencySymbol', includeIfNull: false, defaultValue: '')
  final String currencySymbol;
  @JsonKey(name: 'planFee', includeIfNull: false)
  final double planFee;
  @JsonKey(name: 'defaultDeviceModelCount', includeIfNull: false)
  final int defaultDeviceModelCount;
  @JsonKey(name: 'defaultDevicesCount', includeIfNull: false)
  final int defaultDevicesCount;
  @JsonKey(name: 'defaultDataPointsCount', includeIfNull: false)
  final int defaultDataPointsCount;
  @JsonKey(name: 'defaultClientCount', includeIfNull: false)
  final int defaultClientCount;
  @JsonKey(name: 'defaultUserCount', includeIfNull: false)
  final int defaultUserCount;
  @JsonKey(name: 'defaultArchivalYears', includeIfNull: false)
  final int defaultArchivalYears;
  @JsonKey(name: 'defaultDashboardCount', includeIfNull: false)
  final int defaultDashboardCount;
  @JsonKey(name: 'defaultModelParametersCount', includeIfNull: false)
  final int defaultModelParametersCount;
  @JsonKey(name: 'extraDeviceFee', includeIfNull: false)
  final double extraDeviceFee;
  @JsonKey(name: 'extraDeviceModelFee', includeIfNull: false)
  final double extraDeviceModelFee;
  @JsonKey(name: 'extraDataPointsFee', includeIfNull: false)
  final double extraDataPointsFee;
  @JsonKey(name: 'extraClientFee', includeIfNull: false)
  final double extraClientFee;
  @JsonKey(name: 'extraUserFee', includeIfNull: false)
  final double extraUserFee;
  @JsonKey(name: 'extraArchivalFee', includeIfNull: false)
  final double extraArchivalFee;
  @JsonKey(name: 'extraDashboardFee', includeIfNull: false)
  final double extraDashboardFee;
  @JsonKey(name: 'extraModelParametersFee', includeIfNull: false)
  final double extraModelParametersFee;
  @JsonKey(
    name: 'planFrequency',
    includeIfNull: false,
    toJson: planPlanFrequencyToJson,
    fromJson: planPlanFrequencyFromJson,
  )
  final enums.PlanPlanFrequency planFrequency;
  @JsonKey(
    name: 'planType',
    includeIfNull: false,
    toJson: planPlanTypeToJson,
    fromJson: planPlanTypeFromJson,
  )
  final enums.PlanPlanType planType;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$PlanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Plan &&
            (identical(other.customPlan, customPlan) ||
                const DeepCollectionEquality()
                    .equals(other.customPlan, customPlan)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencySymbol, currencySymbol) ||
                const DeepCollectionEquality()
                    .equals(other.currencySymbol, currencySymbol)) &&
            (identical(other.planFee, planFee) ||
                const DeepCollectionEquality()
                    .equals(other.planFee, planFee)) &&
            (identical(other.defaultDeviceModelCount, defaultDeviceModelCount) ||
                const DeepCollectionEquality().equals(
                    other.defaultDeviceModelCount, defaultDeviceModelCount)) &&
            (identical(other.defaultDevicesCount, defaultDevicesCount) ||
                const DeepCollectionEquality()
                    .equals(other.defaultDevicesCount, defaultDevicesCount)) &&
            (identical(other.defaultDataPointsCount, defaultDataPointsCount) ||
                const DeepCollectionEquality().equals(
                    other.defaultDataPointsCount, defaultDataPointsCount)) &&
            (identical(other.defaultClientCount, defaultClientCount) ||
                const DeepCollectionEquality()
                    .equals(other.defaultClientCount, defaultClientCount)) &&
            (identical(other.defaultUserCount, defaultUserCount) ||
                const DeepCollectionEquality()
                    .equals(other.defaultUserCount, defaultUserCount)) &&
            (identical(other.defaultArchivalYears, defaultArchivalYears) ||
                const DeepCollectionEquality().equals(
                    other.defaultArchivalYears, defaultArchivalYears)) &&
            (identical(other.defaultDashboardCount, defaultDashboardCount) ||
                const DeepCollectionEquality().equals(
                    other.defaultDashboardCount, defaultDashboardCount)) &&
            (identical(other.defaultModelParametersCount, defaultModelParametersCount) ||
                const DeepCollectionEquality().equals(
                    other.defaultModelParametersCount,
                    defaultModelParametersCount)) &&
            (identical(other.extraDeviceFee, extraDeviceFee) ||
                const DeepCollectionEquality()
                    .equals(other.extraDeviceFee, extraDeviceFee)) &&
            (identical(other.extraDeviceModelFee, extraDeviceModelFee) ||
                const DeepCollectionEquality()
                    .equals(other.extraDeviceModelFee, extraDeviceModelFee)) &&
            (identical(other.extraDataPointsFee, extraDataPointsFee) ||
                const DeepCollectionEquality().equals(other.extraDataPointsFee, extraDataPointsFee)) &&
            (identical(other.extraClientFee, extraClientFee) || const DeepCollectionEquality().equals(other.extraClientFee, extraClientFee)) &&
            (identical(other.extraUserFee, extraUserFee) || const DeepCollectionEquality().equals(other.extraUserFee, extraUserFee)) &&
            (identical(other.extraArchivalFee, extraArchivalFee) || const DeepCollectionEquality().equals(other.extraArchivalFee, extraArchivalFee)) &&
            (identical(other.extraDashboardFee, extraDashboardFee) || const DeepCollectionEquality().equals(other.extraDashboardFee, extraDashboardFee)) &&
            (identical(other.extraModelParametersFee, extraModelParametersFee) || const DeepCollectionEquality().equals(other.extraModelParametersFee, extraModelParametersFee)) &&
            (identical(other.planFrequency, planFrequency) || const DeepCollectionEquality().equals(other.planFrequency, planFrequency)) &&
            (identical(other.planType, planType) || const DeepCollectionEquality().equals(other.planType, planType)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rtype, rtype) || const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) || const DeepCollectionEquality().equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) || const DeepCollectionEquality().equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) || const DeepCollectionEquality().equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) || const DeepCollectionEquality().equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) || const DeepCollectionEquality().equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customPlan) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencySymbol) ^
      const DeepCollectionEquality().hash(planFee) ^
      const DeepCollectionEquality().hash(defaultDeviceModelCount) ^
      const DeepCollectionEquality().hash(defaultDevicesCount) ^
      const DeepCollectionEquality().hash(defaultDataPointsCount) ^
      const DeepCollectionEquality().hash(defaultClientCount) ^
      const DeepCollectionEquality().hash(defaultUserCount) ^
      const DeepCollectionEquality().hash(defaultArchivalYears) ^
      const DeepCollectionEquality().hash(defaultDashboardCount) ^
      const DeepCollectionEquality().hash(defaultModelParametersCount) ^
      const DeepCollectionEquality().hash(extraDeviceFee) ^
      const DeepCollectionEquality().hash(extraDeviceModelFee) ^
      const DeepCollectionEquality().hash(extraDataPointsFee) ^
      const DeepCollectionEquality().hash(extraClientFee) ^
      const DeepCollectionEquality().hash(extraUserFee) ^
      const DeepCollectionEquality().hash(extraArchivalFee) ^
      const DeepCollectionEquality().hash(extraDashboardFee) ^
      const DeepCollectionEquality().hash(extraModelParametersFee) ^
      const DeepCollectionEquality().hash(planFrequency) ^
      const DeepCollectionEquality().hash(planType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $PlanExtension on Plan {
  Plan copyWith(
      {bool? customPlan,
      String? id,
      String? description,
      String? currency,
      String? currencySymbol,
      double? planFee,
      int? defaultDeviceModelCount,
      int? defaultDevicesCount,
      int? defaultDataPointsCount,
      int? defaultClientCount,
      int? defaultUserCount,
      int? defaultArchivalYears,
      int? defaultDashboardCount,
      int? defaultModelParametersCount,
      double? extraDeviceFee,
      double? extraDeviceModelFee,
      double? extraDataPointsFee,
      double? extraClientFee,
      double? extraUserFee,
      double? extraArchivalFee,
      double? extraDashboardFee,
      double? extraModelParametersFee,
      enums.PlanPlanFrequency? planFrequency,
      enums.PlanPlanType? planType,
      String? name,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return Plan(
        customPlan: customPlan ?? this.customPlan,
        id: id ?? this.id,
        description: description ?? this.description,
        currency: currency ?? this.currency,
        currencySymbol: currencySymbol ?? this.currencySymbol,
        planFee: planFee ?? this.planFee,
        defaultDeviceModelCount:
            defaultDeviceModelCount ?? this.defaultDeviceModelCount,
        defaultDevicesCount: defaultDevicesCount ?? this.defaultDevicesCount,
        defaultDataPointsCount:
            defaultDataPointsCount ?? this.defaultDataPointsCount,
        defaultClientCount: defaultClientCount ?? this.defaultClientCount,
        defaultUserCount: defaultUserCount ?? this.defaultUserCount,
        defaultArchivalYears: defaultArchivalYears ?? this.defaultArchivalYears,
        defaultDashboardCount:
            defaultDashboardCount ?? this.defaultDashboardCount,
        defaultModelParametersCount:
            defaultModelParametersCount ?? this.defaultModelParametersCount,
        extraDeviceFee: extraDeviceFee ?? this.extraDeviceFee,
        extraDeviceModelFee: extraDeviceModelFee ?? this.extraDeviceModelFee,
        extraDataPointsFee: extraDataPointsFee ?? this.extraDataPointsFee,
        extraClientFee: extraClientFee ?? this.extraClientFee,
        extraUserFee: extraUserFee ?? this.extraUserFee,
        extraArchivalFee: extraArchivalFee ?? this.extraArchivalFee,
        extraDashboardFee: extraDashboardFee ?? this.extraDashboardFee,
        extraModelParametersFee:
            extraModelParametersFee ?? this.extraModelParametersFee,
        planFrequency: planFrequency ?? this.planFrequency,
        planType: planType ?? this.planType,
        name: name ?? this.name,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  Plan copyWithWrapped(
      {Wrapped<bool>? customPlan,
      Wrapped<String>? id,
      Wrapped<String?>? description,
      Wrapped<String>? currency,
      Wrapped<String>? currencySymbol,
      Wrapped<double>? planFee,
      Wrapped<int>? defaultDeviceModelCount,
      Wrapped<int>? defaultDevicesCount,
      Wrapped<int>? defaultDataPointsCount,
      Wrapped<int>? defaultClientCount,
      Wrapped<int>? defaultUserCount,
      Wrapped<int>? defaultArchivalYears,
      Wrapped<int>? defaultDashboardCount,
      Wrapped<int>? defaultModelParametersCount,
      Wrapped<double>? extraDeviceFee,
      Wrapped<double>? extraDeviceModelFee,
      Wrapped<double>? extraDataPointsFee,
      Wrapped<double>? extraClientFee,
      Wrapped<double>? extraUserFee,
      Wrapped<double>? extraArchivalFee,
      Wrapped<double>? extraDashboardFee,
      Wrapped<double>? extraModelParametersFee,
      Wrapped<enums.PlanPlanFrequency>? planFrequency,
      Wrapped<enums.PlanPlanType>? planType,
      Wrapped<String>? name,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return Plan(
        customPlan: (customPlan != null ? customPlan.value : this.customPlan),
        id: (id != null ? id.value : this.id),
        description:
            (description != null ? description.value : this.description),
        currency: (currency != null ? currency.value : this.currency),
        currencySymbol: (currencySymbol != null
            ? currencySymbol.value
            : this.currencySymbol),
        planFee: (planFee != null ? planFee.value : this.planFee),
        defaultDeviceModelCount: (defaultDeviceModelCount != null
            ? defaultDeviceModelCount.value
            : this.defaultDeviceModelCount),
        defaultDevicesCount: (defaultDevicesCount != null
            ? defaultDevicesCount.value
            : this.defaultDevicesCount),
        defaultDataPointsCount: (defaultDataPointsCount != null
            ? defaultDataPointsCount.value
            : this.defaultDataPointsCount),
        defaultClientCount: (defaultClientCount != null
            ? defaultClientCount.value
            : this.defaultClientCount),
        defaultUserCount: (defaultUserCount != null
            ? defaultUserCount.value
            : this.defaultUserCount),
        defaultArchivalYears: (defaultArchivalYears != null
            ? defaultArchivalYears.value
            : this.defaultArchivalYears),
        defaultDashboardCount: (defaultDashboardCount != null
            ? defaultDashboardCount.value
            : this.defaultDashboardCount),
        defaultModelParametersCount: (defaultModelParametersCount != null
            ? defaultModelParametersCount.value
            : this.defaultModelParametersCount),
        extraDeviceFee: (extraDeviceFee != null
            ? extraDeviceFee.value
            : this.extraDeviceFee),
        extraDeviceModelFee: (extraDeviceModelFee != null
            ? extraDeviceModelFee.value
            : this.extraDeviceModelFee),
        extraDataPointsFee: (extraDataPointsFee != null
            ? extraDataPointsFee.value
            : this.extraDataPointsFee),
        extraClientFee: (extraClientFee != null
            ? extraClientFee.value
            : this.extraClientFee),
        extraUserFee:
            (extraUserFee != null ? extraUserFee.value : this.extraUserFee),
        extraArchivalFee: (extraArchivalFee != null
            ? extraArchivalFee.value
            : this.extraArchivalFee),
        extraDashboardFee: (extraDashboardFee != null
            ? extraDashboardFee.value
            : this.extraDashboardFee),
        extraModelParametersFee: (extraModelParametersFee != null
            ? extraModelParametersFee.value
            : this.extraModelParametersFee),
        planFrequency:
            (planFrequency != null ? planFrequency.value : this.planFrequency),
        planType: (planType != null ? planType.value : this.planType),
        name: (name != null ? name.value : this.name),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanEntity {
  const PlanEntity({
    this.entity,
  });

  factory PlanEntity.fromJson(Map<String, dynamic> json) =>
      _$PlanEntityFromJson(json);

  static const toJsonFactory = _$PlanEntityToJson;
  Map<String, dynamic> toJson() => _$PlanEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Plan? entity;
  static const fromJsonFactory = _$PlanEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $PlanEntityExtension on PlanEntity {
  PlanEntity copyWith({Plan? entity}) {
    return PlanEntity(entity: entity ?? this.entity);
  }

  PlanEntity copyWithWrapped({Wrapped<Plan?>? entity}) {
    return PlanEntity(entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanEntityRes {
  const PlanEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory PlanEntityRes.fromJson(Map<String, dynamic> json) =>
      _$PlanEntityResFromJson(json);

  static const toJsonFactory = _$PlanEntityResToJson;
  Map<String, dynamic> toJson() => _$PlanEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Plan? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$PlanEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $PlanEntityResExtension on PlanEntityRes {
  PlanEntityRes copyWith(
      {Plan? entity, bool? ok, String? msg, String? trace, String? errorCode}) {
    return PlanEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  PlanEntityRes copyWithWrapped(
      {Wrapped<Plan?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return PlanEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanArray {
  const PlanArray({
    this.values,
  });

  factory PlanArray.fromJson(Map<String, dynamic> json) =>
      _$PlanArrayFromJson(json);

  static const toJsonFactory = _$PlanArrayToJson;
  Map<String, dynamic> toJson() => _$PlanArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Plan>[])
  final List<Plan>? values;
  static const fromJsonFactory = _$PlanArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $PlanArrayExtension on PlanArray {
  PlanArray copyWith({List<Plan>? values}) {
    return PlanArray(values: values ?? this.values);
  }

  PlanArray copyWithWrapped({Wrapped<List<Plan>?>? values}) {
    return PlanArray(values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanArrayRes {
  const PlanArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory PlanArrayRes.fromJson(Map<String, dynamic> json) =>
      _$PlanArrayResFromJson(json);

  static const toJsonFactory = _$PlanArrayResToJson;
  Map<String, dynamic> toJson() => _$PlanArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Plan>[])
  final List<Plan>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$PlanArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $PlanArrayResExtension on PlanArrayRes {
  PlanArrayRes copyWith(
      {List<Plan>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return PlanArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  PlanArrayRes copyWithWrapped(
      {Wrapped<List<Plan>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return PlanArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class InvoiceInfo {
  const InvoiceInfo({
    required this.name,
    this.description,
    required this.orgId,
    required this.dueOn,
  });

  factory InvoiceInfo.fromJson(Map<String, dynamic> json) =>
      _$InvoiceInfoFromJson(json);

  static const toJsonFactory = _$InvoiceInfoToJson;
  Map<String, dynamic> toJson() => _$InvoiceInfoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'dueOn', includeIfNull: false)
  final int dueOn;
  static const fromJsonFactory = _$InvoiceInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvoiceInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.dueOn, dueOn) ||
                const DeepCollectionEquality().equals(other.dueOn, dueOn)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(dueOn) ^
      runtimeType.hashCode;
}

extension $InvoiceInfoExtension on InvoiceInfo {
  InvoiceInfo copyWith(
      {String? name, String? description, String? orgId, int? dueOn}) {
    return InvoiceInfo(
        name: name ?? this.name,
        description: description ?? this.description,
        orgId: orgId ?? this.orgId,
        dueOn: dueOn ?? this.dueOn);
  }

  InvoiceInfo copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<String>? orgId,
      Wrapped<int>? dueOn}) {
    return InvoiceInfo(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        orgId: (orgId != null ? orgId.value : this.orgId),
        dueOn: (dueOn != null ? dueOn.value : this.dueOn));
  }
}

@JsonSerializable(explicitToJson: true)
class InvoiceBase {
  const InvoiceBase({
    required this.invoiceAmount,
    this.billedAmount,
    required this.reconciled,
    required this.planId,
    this.planFee,
    this.deviceModelFee,
    this.modelParametersFee,
    this.deviceFee,
    this.clientFee,
    this.userFee,
    this.dataFee,
    this.archivalFee,
    this.dashboardFee,
    this.deviceModelCount,
    this.modelParametersCount,
    this.deviceCount,
    this.clientCount,
    this.userCount,
    this.dataCount,
    this.archivalCount,
    this.dashboardCount,
    this.paidOn,
    this.providerId,
    this.transactionId,
    this.transactionStamp,
    this.metaData,
    this.graceDays,
    this.paymentMode,
    this.paymentGateway,
    required this.paymentStatus,
    required this.currency,
    required this.currencyCode,
  });

  factory InvoiceBase.fromJson(Map<String, dynamic> json) =>
      _$InvoiceBaseFromJson(json);

  static const toJsonFactory = _$InvoiceBaseToJson;
  Map<String, dynamic> toJson() => _$InvoiceBaseToJson(this);

  @JsonKey(name: 'invoiceAmount', includeIfNull: false)
  final double invoiceAmount;
  @JsonKey(name: 'billedAmount', includeIfNull: false)
  final double? billedAmount;
  @JsonKey(name: 'reconciled', includeIfNull: false)
  final bool reconciled;
  @JsonKey(name: 'planId', includeIfNull: false, defaultValue: '')
  final String planId;
  @JsonKey(name: 'planFee', includeIfNull: false)
  final double? planFee;
  @JsonKey(name: 'deviceModelFee', includeIfNull: false)
  final double? deviceModelFee;
  @JsonKey(name: 'modelParametersFee', includeIfNull: false)
  final double? modelParametersFee;
  @JsonKey(name: 'deviceFee', includeIfNull: false)
  final double? deviceFee;
  @JsonKey(name: 'clientFee', includeIfNull: false)
  final double? clientFee;
  @JsonKey(name: 'userFee', includeIfNull: false)
  final double? userFee;
  @JsonKey(name: 'dataFee', includeIfNull: false)
  final double? dataFee;
  @JsonKey(name: 'archivalFee', includeIfNull: false)
  final double? archivalFee;
  @JsonKey(name: 'dashboardFee', includeIfNull: false)
  final double? dashboardFee;
  @JsonKey(name: 'deviceModelCount', includeIfNull: false)
  final double? deviceModelCount;
  @JsonKey(name: 'modelParametersCount', includeIfNull: false)
  final double? modelParametersCount;
  @JsonKey(name: 'deviceCount', includeIfNull: false)
  final double? deviceCount;
  @JsonKey(name: 'clientCount', includeIfNull: false)
  final double? clientCount;
  @JsonKey(name: 'userCount', includeIfNull: false)
  final double? userCount;
  @JsonKey(name: 'dataCount', includeIfNull: false)
  final double? dataCount;
  @JsonKey(name: 'archivalCount', includeIfNull: false)
  final double? archivalCount;
  @JsonKey(name: 'dashboardCount', includeIfNull: false)
  final double? dashboardCount;
  @JsonKey(name: 'paidOn', includeIfNull: false)
  final int? paidOn;
  @JsonKey(name: 'providerId', includeIfNull: false, defaultValue: '')
  final String? providerId;
  @JsonKey(name: 'transactionId', includeIfNull: false, defaultValue: '')
  final String? transactionId;
  @JsonKey(name: 'transactionStamp', includeIfNull: false)
  final int? transactionStamp;
  @JsonKey(name: 'metaData', includeIfNull: false)
  final Object? metaData;
  @JsonKey(name: 'graceDays', includeIfNull: false)
  final int? graceDays;
  @JsonKey(name: 'paymentMode', includeIfNull: false, defaultValue: '')
  final String? paymentMode;
  @JsonKey(name: 'paymentGateway', includeIfNull: false, defaultValue: '')
  final String? paymentGateway;
  @JsonKey(name: 'paymentStatus', includeIfNull: false, defaultValue: '')
  final String paymentStatus;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'currencyCode', includeIfNull: false, defaultValue: '')
  final String currencyCode;
  static const fromJsonFactory = _$InvoiceBaseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvoiceBase &&
            (identical(other.invoiceAmount, invoiceAmount) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceAmount, invoiceAmount)) &&
            (identical(other.billedAmount, billedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.billedAmount, billedAmount)) &&
            (identical(other.reconciled, reconciled) ||
                const DeepCollectionEquality()
                    .equals(other.reconciled, reconciled)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.planFee, planFee) ||
                const DeepCollectionEquality()
                    .equals(other.planFee, planFee)) &&
            (identical(other.deviceModelFee, deviceModelFee) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModelFee, deviceModelFee)) &&
            (identical(other.modelParametersFee, modelParametersFee) ||
                const DeepCollectionEquality()
                    .equals(other.modelParametersFee, modelParametersFee)) &&
            (identical(other.deviceFee, deviceFee) ||
                const DeepCollectionEquality()
                    .equals(other.deviceFee, deviceFee)) &&
            (identical(other.clientFee, clientFee) ||
                const DeepCollectionEquality()
                    .equals(other.clientFee, clientFee)) &&
            (identical(other.userFee, userFee) ||
                const DeepCollectionEquality()
                    .equals(other.userFee, userFee)) &&
            (identical(other.dataFee, dataFee) ||
                const DeepCollectionEquality()
                    .equals(other.dataFee, dataFee)) &&
            (identical(other.archivalFee, archivalFee) ||
                const DeepCollectionEquality()
                    .equals(other.archivalFee, archivalFee)) &&
            (identical(other.dashboardFee, dashboardFee) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardFee, dashboardFee)) &&
            (identical(other.deviceModelCount, deviceModelCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModelCount, deviceModelCount)) &&
            (identical(other.modelParametersCount, modelParametersCount) ||
                const DeepCollectionEquality().equals(
                    other.modelParametersCount, modelParametersCount)) &&
            (identical(other.deviceCount, deviceCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCount, deviceCount)) &&
            (identical(other.clientCount, clientCount) ||
                const DeepCollectionEquality()
                    .equals(other.clientCount, clientCount)) &&
            (identical(other.userCount, userCount) ||
                const DeepCollectionEquality()
                    .equals(other.userCount, userCount)) &&
            (identical(other.dataCount, dataCount) ||
                const DeepCollectionEquality()
                    .equals(other.dataCount, dataCount)) &&
            (identical(other.archivalCount, archivalCount) ||
                const DeepCollectionEquality()
                    .equals(other.archivalCount, archivalCount)) &&
            (identical(other.dashboardCount, dashboardCount) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardCount, dashboardCount)) &&
            (identical(other.paidOn, paidOn) ||
                const DeepCollectionEquality().equals(other.paidOn, paidOn)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality().equals(other.providerId, providerId)) &&
            (identical(other.transactionId, transactionId) || const DeepCollectionEquality().equals(other.transactionId, transactionId)) &&
            (identical(other.transactionStamp, transactionStamp) || const DeepCollectionEquality().equals(other.transactionStamp, transactionStamp)) &&
            (identical(other.metaData, metaData) || const DeepCollectionEquality().equals(other.metaData, metaData)) &&
            (identical(other.graceDays, graceDays) || const DeepCollectionEquality().equals(other.graceDays, graceDays)) &&
            (identical(other.paymentMode, paymentMode) || const DeepCollectionEquality().equals(other.paymentMode, paymentMode)) &&
            (identical(other.paymentGateway, paymentGateway) || const DeepCollectionEquality().equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.paymentStatus, paymentStatus) || const DeepCollectionEquality().equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.currency, currency) || const DeepCollectionEquality().equals(other.currency, currency)) &&
            (identical(other.currencyCode, currencyCode) || const DeepCollectionEquality().equals(other.currencyCode, currencyCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(invoiceAmount) ^
      const DeepCollectionEquality().hash(billedAmount) ^
      const DeepCollectionEquality().hash(reconciled) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(planFee) ^
      const DeepCollectionEquality().hash(deviceModelFee) ^
      const DeepCollectionEquality().hash(modelParametersFee) ^
      const DeepCollectionEquality().hash(deviceFee) ^
      const DeepCollectionEquality().hash(clientFee) ^
      const DeepCollectionEquality().hash(userFee) ^
      const DeepCollectionEquality().hash(dataFee) ^
      const DeepCollectionEquality().hash(archivalFee) ^
      const DeepCollectionEquality().hash(dashboardFee) ^
      const DeepCollectionEquality().hash(deviceModelCount) ^
      const DeepCollectionEquality().hash(modelParametersCount) ^
      const DeepCollectionEquality().hash(deviceCount) ^
      const DeepCollectionEquality().hash(clientCount) ^
      const DeepCollectionEquality().hash(userCount) ^
      const DeepCollectionEquality().hash(dataCount) ^
      const DeepCollectionEquality().hash(archivalCount) ^
      const DeepCollectionEquality().hash(dashboardCount) ^
      const DeepCollectionEquality().hash(paidOn) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(transactionStamp) ^
      const DeepCollectionEquality().hash(metaData) ^
      const DeepCollectionEquality().hash(graceDays) ^
      const DeepCollectionEquality().hash(paymentMode) ^
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      runtimeType.hashCode;
}

extension $InvoiceBaseExtension on InvoiceBase {
  InvoiceBase copyWith(
      {double? invoiceAmount,
      double? billedAmount,
      bool? reconciled,
      String? planId,
      double? planFee,
      double? deviceModelFee,
      double? modelParametersFee,
      double? deviceFee,
      double? clientFee,
      double? userFee,
      double? dataFee,
      double? archivalFee,
      double? dashboardFee,
      double? deviceModelCount,
      double? modelParametersCount,
      double? deviceCount,
      double? clientCount,
      double? userCount,
      double? dataCount,
      double? archivalCount,
      double? dashboardCount,
      int? paidOn,
      String? providerId,
      String? transactionId,
      int? transactionStamp,
      Object? metaData,
      int? graceDays,
      String? paymentMode,
      String? paymentGateway,
      String? paymentStatus,
      String? currency,
      String? currencyCode}) {
    return InvoiceBase(
        invoiceAmount: invoiceAmount ?? this.invoiceAmount,
        billedAmount: billedAmount ?? this.billedAmount,
        reconciled: reconciled ?? this.reconciled,
        planId: planId ?? this.planId,
        planFee: planFee ?? this.planFee,
        deviceModelFee: deviceModelFee ?? this.deviceModelFee,
        modelParametersFee: modelParametersFee ?? this.modelParametersFee,
        deviceFee: deviceFee ?? this.deviceFee,
        clientFee: clientFee ?? this.clientFee,
        userFee: userFee ?? this.userFee,
        dataFee: dataFee ?? this.dataFee,
        archivalFee: archivalFee ?? this.archivalFee,
        dashboardFee: dashboardFee ?? this.dashboardFee,
        deviceModelCount: deviceModelCount ?? this.deviceModelCount,
        modelParametersCount: modelParametersCount ?? this.modelParametersCount,
        deviceCount: deviceCount ?? this.deviceCount,
        clientCount: clientCount ?? this.clientCount,
        userCount: userCount ?? this.userCount,
        dataCount: dataCount ?? this.dataCount,
        archivalCount: archivalCount ?? this.archivalCount,
        dashboardCount: dashboardCount ?? this.dashboardCount,
        paidOn: paidOn ?? this.paidOn,
        providerId: providerId ?? this.providerId,
        transactionId: transactionId ?? this.transactionId,
        transactionStamp: transactionStamp ?? this.transactionStamp,
        metaData: metaData ?? this.metaData,
        graceDays: graceDays ?? this.graceDays,
        paymentMode: paymentMode ?? this.paymentMode,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        currency: currency ?? this.currency,
        currencyCode: currencyCode ?? this.currencyCode);
  }

  InvoiceBase copyWithWrapped(
      {Wrapped<double>? invoiceAmount,
      Wrapped<double?>? billedAmount,
      Wrapped<bool>? reconciled,
      Wrapped<String>? planId,
      Wrapped<double?>? planFee,
      Wrapped<double?>? deviceModelFee,
      Wrapped<double?>? modelParametersFee,
      Wrapped<double?>? deviceFee,
      Wrapped<double?>? clientFee,
      Wrapped<double?>? userFee,
      Wrapped<double?>? dataFee,
      Wrapped<double?>? archivalFee,
      Wrapped<double?>? dashboardFee,
      Wrapped<double?>? deviceModelCount,
      Wrapped<double?>? modelParametersCount,
      Wrapped<double?>? deviceCount,
      Wrapped<double?>? clientCount,
      Wrapped<double?>? userCount,
      Wrapped<double?>? dataCount,
      Wrapped<double?>? archivalCount,
      Wrapped<double?>? dashboardCount,
      Wrapped<int?>? paidOn,
      Wrapped<String?>? providerId,
      Wrapped<String?>? transactionId,
      Wrapped<int?>? transactionStamp,
      Wrapped<Object?>? metaData,
      Wrapped<int?>? graceDays,
      Wrapped<String?>? paymentMode,
      Wrapped<String?>? paymentGateway,
      Wrapped<String>? paymentStatus,
      Wrapped<String>? currency,
      Wrapped<String>? currencyCode}) {
    return InvoiceBase(
        invoiceAmount:
            (invoiceAmount != null ? invoiceAmount.value : this.invoiceAmount),
        billedAmount:
            (billedAmount != null ? billedAmount.value : this.billedAmount),
        reconciled: (reconciled != null ? reconciled.value : this.reconciled),
        planId: (planId != null ? planId.value : this.planId),
        planFee: (planFee != null ? planFee.value : this.planFee),
        deviceModelFee: (deviceModelFee != null
            ? deviceModelFee.value
            : this.deviceModelFee),
        modelParametersFee: (modelParametersFee != null
            ? modelParametersFee.value
            : this.modelParametersFee),
        deviceFee: (deviceFee != null ? deviceFee.value : this.deviceFee),
        clientFee: (clientFee != null ? clientFee.value : this.clientFee),
        userFee: (userFee != null ? userFee.value : this.userFee),
        dataFee: (dataFee != null ? dataFee.value : this.dataFee),
        archivalFee:
            (archivalFee != null ? archivalFee.value : this.archivalFee),
        dashboardFee:
            (dashboardFee != null ? dashboardFee.value : this.dashboardFee),
        deviceModelCount: (deviceModelCount != null
            ? deviceModelCount.value
            : this.deviceModelCount),
        modelParametersCount: (modelParametersCount != null
            ? modelParametersCount.value
            : this.modelParametersCount),
        deviceCount:
            (deviceCount != null ? deviceCount.value : this.deviceCount),
        clientCount:
            (clientCount != null ? clientCount.value : this.clientCount),
        userCount: (userCount != null ? userCount.value : this.userCount),
        dataCount: (dataCount != null ? dataCount.value : this.dataCount),
        archivalCount:
            (archivalCount != null ? archivalCount.value : this.archivalCount),
        dashboardCount: (dashboardCount != null
            ? dashboardCount.value
            : this.dashboardCount),
        paidOn: (paidOn != null ? paidOn.value : this.paidOn),
        providerId: (providerId != null ? providerId.value : this.providerId),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        transactionStamp: (transactionStamp != null
            ? transactionStamp.value
            : this.transactionStamp),
        metaData: (metaData != null ? metaData.value : this.metaData),
        graceDays: (graceDays != null ? graceDays.value : this.graceDays),
        paymentMode:
            (paymentMode != null ? paymentMode.value : this.paymentMode),
        paymentGateway: (paymentGateway != null
            ? paymentGateway.value
            : this.paymentGateway),
        paymentStatus:
            (paymentStatus != null ? paymentStatus.value : this.paymentStatus),
        currency: (currency != null ? currency.value : this.currency),
        currencyCode:
            (currencyCode != null ? currencyCode.value : this.currencyCode));
  }
}

@JsonSerializable(explicitToJson: true)
class Invoice {
  const Invoice({
    required this.name,
    this.description,
    required this.orgId,
    required this.dueOn,
    required this.invoiceAmount,
    this.billedAmount,
    required this.reconciled,
    required this.planId,
    this.planFee,
    this.deviceModelFee,
    this.modelParametersFee,
    this.deviceFee,
    this.clientFee,
    this.userFee,
    this.dataFee,
    this.archivalFee,
    this.dashboardFee,
    this.deviceModelCount,
    this.modelParametersCount,
    this.deviceCount,
    this.clientCount,
    this.userCount,
    this.dataCount,
    this.archivalCount,
    this.dashboardCount,
    this.paidOn,
    this.providerId,
    this.transactionId,
    this.transactionStamp,
    this.metaData,
    this.graceDays,
    this.paymentMode,
    this.paymentGateway,
    required this.paymentStatus,
    required this.currency,
    required this.currencyCode,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  static const toJsonFactory = _$InvoiceToJson;
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'dueOn', includeIfNull: false)
  final int dueOn;
  @JsonKey(name: 'invoiceAmount', includeIfNull: false)
  final double invoiceAmount;
  @JsonKey(name: 'billedAmount', includeIfNull: false)
  final double? billedAmount;
  @JsonKey(name: 'reconciled', includeIfNull: false)
  final bool reconciled;
  @JsonKey(name: 'planId', includeIfNull: false, defaultValue: '')
  final String planId;
  @JsonKey(name: 'planFee', includeIfNull: false)
  final double? planFee;
  @JsonKey(name: 'deviceModelFee', includeIfNull: false)
  final double? deviceModelFee;
  @JsonKey(name: 'modelParametersFee', includeIfNull: false)
  final double? modelParametersFee;
  @JsonKey(name: 'deviceFee', includeIfNull: false)
  final double? deviceFee;
  @JsonKey(name: 'clientFee', includeIfNull: false)
  final double? clientFee;
  @JsonKey(name: 'userFee', includeIfNull: false)
  final double? userFee;
  @JsonKey(name: 'dataFee', includeIfNull: false)
  final double? dataFee;
  @JsonKey(name: 'archivalFee', includeIfNull: false)
  final double? archivalFee;
  @JsonKey(name: 'dashboardFee', includeIfNull: false)
  final double? dashboardFee;
  @JsonKey(name: 'deviceModelCount', includeIfNull: false)
  final double? deviceModelCount;
  @JsonKey(name: 'modelParametersCount', includeIfNull: false)
  final double? modelParametersCount;
  @JsonKey(name: 'deviceCount', includeIfNull: false)
  final double? deviceCount;
  @JsonKey(name: 'clientCount', includeIfNull: false)
  final double? clientCount;
  @JsonKey(name: 'userCount', includeIfNull: false)
  final double? userCount;
  @JsonKey(name: 'dataCount', includeIfNull: false)
  final double? dataCount;
  @JsonKey(name: 'archivalCount', includeIfNull: false)
  final double? archivalCount;
  @JsonKey(name: 'dashboardCount', includeIfNull: false)
  final double? dashboardCount;
  @JsonKey(name: 'paidOn', includeIfNull: false)
  final int? paidOn;
  @JsonKey(name: 'providerId', includeIfNull: false, defaultValue: '')
  final String? providerId;
  @JsonKey(name: 'transactionId', includeIfNull: false, defaultValue: '')
  final String? transactionId;
  @JsonKey(name: 'transactionStamp', includeIfNull: false)
  final int? transactionStamp;
  @JsonKey(name: 'metaData', includeIfNull: false)
  final Object? metaData;
  @JsonKey(name: 'graceDays', includeIfNull: false)
  final int? graceDays;
  @JsonKey(name: 'paymentMode', includeIfNull: false, defaultValue: '')
  final String? paymentMode;
  @JsonKey(name: 'paymentGateway', includeIfNull: false, defaultValue: '')
  final String? paymentGateway;
  @JsonKey(name: 'paymentStatus', includeIfNull: false, defaultValue: '')
  final String paymentStatus;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'currencyCode', includeIfNull: false, defaultValue: '')
  final String currencyCode;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$InvoiceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Invoice &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.dueOn, dueOn) ||
                const DeepCollectionEquality().equals(other.dueOn, dueOn)) &&
            (identical(other.invoiceAmount, invoiceAmount) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceAmount, invoiceAmount)) &&
            (identical(other.billedAmount, billedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.billedAmount, billedAmount)) &&
            (identical(other.reconciled, reconciled) ||
                const DeepCollectionEquality()
                    .equals(other.reconciled, reconciled)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.planFee, planFee) ||
                const DeepCollectionEquality()
                    .equals(other.planFee, planFee)) &&
            (identical(other.deviceModelFee, deviceModelFee) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModelFee, deviceModelFee)) &&
            (identical(other.modelParametersFee, modelParametersFee) ||
                const DeepCollectionEquality()
                    .equals(other.modelParametersFee, modelParametersFee)) &&
            (identical(other.deviceFee, deviceFee) ||
                const DeepCollectionEquality()
                    .equals(other.deviceFee, deviceFee)) &&
            (identical(other.clientFee, clientFee) ||
                const DeepCollectionEquality()
                    .equals(other.clientFee, clientFee)) &&
            (identical(other.userFee, userFee) ||
                const DeepCollectionEquality()
                    .equals(other.userFee, userFee)) &&
            (identical(other.dataFee, dataFee) ||
                const DeepCollectionEquality()
                    .equals(other.dataFee, dataFee)) &&
            (identical(other.archivalFee, archivalFee) ||
                const DeepCollectionEquality()
                    .equals(other.archivalFee, archivalFee)) &&
            (identical(other.dashboardFee, dashboardFee) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardFee, dashboardFee)) &&
            (identical(other.deviceModelCount, deviceModelCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModelCount, deviceModelCount)) &&
            (identical(other.modelParametersCount, modelParametersCount) ||
                const DeepCollectionEquality().equals(
                    other.modelParametersCount, modelParametersCount)) &&
            (identical(other.deviceCount, deviceCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCount, deviceCount)) &&
            (identical(other.clientCount, clientCount) ||
                const DeepCollectionEquality()
                    .equals(other.clientCount, clientCount)) &&
            (identical(other.userCount, userCount) ||
                const DeepCollectionEquality()
                    .equals(other.userCount, userCount)) &&
            (identical(other.dataCount, dataCount) ||
                const DeepCollectionEquality()
                    .equals(other.dataCount, dataCount)) &&
            (identical(other.archivalCount, archivalCount) || const DeepCollectionEquality().equals(other.archivalCount, archivalCount)) &&
            (identical(other.dashboardCount, dashboardCount) || const DeepCollectionEquality().equals(other.dashboardCount, dashboardCount)) &&
            (identical(other.paidOn, paidOn) || const DeepCollectionEquality().equals(other.paidOn, paidOn)) &&
            (identical(other.providerId, providerId) || const DeepCollectionEquality().equals(other.providerId, providerId)) &&
            (identical(other.transactionId, transactionId) || const DeepCollectionEquality().equals(other.transactionId, transactionId)) &&
            (identical(other.transactionStamp, transactionStamp) || const DeepCollectionEquality().equals(other.transactionStamp, transactionStamp)) &&
            (identical(other.metaData, metaData) || const DeepCollectionEquality().equals(other.metaData, metaData)) &&
            (identical(other.graceDays, graceDays) || const DeepCollectionEquality().equals(other.graceDays, graceDays)) &&
            (identical(other.paymentMode, paymentMode) || const DeepCollectionEquality().equals(other.paymentMode, paymentMode)) &&
            (identical(other.paymentGateway, paymentGateway) || const DeepCollectionEquality().equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.paymentStatus, paymentStatus) || const DeepCollectionEquality().equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.currency, currency) || const DeepCollectionEquality().equals(other.currency, currency)) &&
            (identical(other.currencyCode, currencyCode) || const DeepCollectionEquality().equals(other.currencyCode, currencyCode)) &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) || const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) || const DeepCollectionEquality().equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) || const DeepCollectionEquality().equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) || const DeepCollectionEquality().equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) || const DeepCollectionEquality().equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) || const DeepCollectionEquality().equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(dueOn) ^
      const DeepCollectionEquality().hash(invoiceAmount) ^
      const DeepCollectionEquality().hash(billedAmount) ^
      const DeepCollectionEquality().hash(reconciled) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(planFee) ^
      const DeepCollectionEquality().hash(deviceModelFee) ^
      const DeepCollectionEquality().hash(modelParametersFee) ^
      const DeepCollectionEquality().hash(deviceFee) ^
      const DeepCollectionEquality().hash(clientFee) ^
      const DeepCollectionEquality().hash(userFee) ^
      const DeepCollectionEquality().hash(dataFee) ^
      const DeepCollectionEquality().hash(archivalFee) ^
      const DeepCollectionEquality().hash(dashboardFee) ^
      const DeepCollectionEquality().hash(deviceModelCount) ^
      const DeepCollectionEquality().hash(modelParametersCount) ^
      const DeepCollectionEquality().hash(deviceCount) ^
      const DeepCollectionEquality().hash(clientCount) ^
      const DeepCollectionEquality().hash(userCount) ^
      const DeepCollectionEquality().hash(dataCount) ^
      const DeepCollectionEquality().hash(archivalCount) ^
      const DeepCollectionEquality().hash(dashboardCount) ^
      const DeepCollectionEquality().hash(paidOn) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(transactionStamp) ^
      const DeepCollectionEquality().hash(metaData) ^
      const DeepCollectionEquality().hash(graceDays) ^
      const DeepCollectionEquality().hash(paymentMode) ^
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $InvoiceExtension on Invoice {
  Invoice copyWith(
      {String? name,
      String? description,
      String? orgId,
      int? dueOn,
      double? invoiceAmount,
      double? billedAmount,
      bool? reconciled,
      String? planId,
      double? planFee,
      double? deviceModelFee,
      double? modelParametersFee,
      double? deviceFee,
      double? clientFee,
      double? userFee,
      double? dataFee,
      double? archivalFee,
      double? dashboardFee,
      double? deviceModelCount,
      double? modelParametersCount,
      double? deviceCount,
      double? clientCount,
      double? userCount,
      double? dataCount,
      double? archivalCount,
      double? dashboardCount,
      int? paidOn,
      String? providerId,
      String? transactionId,
      int? transactionStamp,
      Object? metaData,
      int? graceDays,
      String? paymentMode,
      String? paymentGateway,
      String? paymentStatus,
      String? currency,
      String? currencyCode,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return Invoice(
        name: name ?? this.name,
        description: description ?? this.description,
        orgId: orgId ?? this.orgId,
        dueOn: dueOn ?? this.dueOn,
        invoiceAmount: invoiceAmount ?? this.invoiceAmount,
        billedAmount: billedAmount ?? this.billedAmount,
        reconciled: reconciled ?? this.reconciled,
        planId: planId ?? this.planId,
        planFee: planFee ?? this.planFee,
        deviceModelFee: deviceModelFee ?? this.deviceModelFee,
        modelParametersFee: modelParametersFee ?? this.modelParametersFee,
        deviceFee: deviceFee ?? this.deviceFee,
        clientFee: clientFee ?? this.clientFee,
        userFee: userFee ?? this.userFee,
        dataFee: dataFee ?? this.dataFee,
        archivalFee: archivalFee ?? this.archivalFee,
        dashboardFee: dashboardFee ?? this.dashboardFee,
        deviceModelCount: deviceModelCount ?? this.deviceModelCount,
        modelParametersCount: modelParametersCount ?? this.modelParametersCount,
        deviceCount: deviceCount ?? this.deviceCount,
        clientCount: clientCount ?? this.clientCount,
        userCount: userCount ?? this.userCount,
        dataCount: dataCount ?? this.dataCount,
        archivalCount: archivalCount ?? this.archivalCount,
        dashboardCount: dashboardCount ?? this.dashboardCount,
        paidOn: paidOn ?? this.paidOn,
        providerId: providerId ?? this.providerId,
        transactionId: transactionId ?? this.transactionId,
        transactionStamp: transactionStamp ?? this.transactionStamp,
        metaData: metaData ?? this.metaData,
        graceDays: graceDays ?? this.graceDays,
        paymentMode: paymentMode ?? this.paymentMode,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        currency: currency ?? this.currency,
        currencyCode: currencyCode ?? this.currencyCode,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  Invoice copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? description,
      Wrapped<String>? orgId,
      Wrapped<int>? dueOn,
      Wrapped<double>? invoiceAmount,
      Wrapped<double?>? billedAmount,
      Wrapped<bool>? reconciled,
      Wrapped<String>? planId,
      Wrapped<double?>? planFee,
      Wrapped<double?>? deviceModelFee,
      Wrapped<double?>? modelParametersFee,
      Wrapped<double?>? deviceFee,
      Wrapped<double?>? clientFee,
      Wrapped<double?>? userFee,
      Wrapped<double?>? dataFee,
      Wrapped<double?>? archivalFee,
      Wrapped<double?>? dashboardFee,
      Wrapped<double?>? deviceModelCount,
      Wrapped<double?>? modelParametersCount,
      Wrapped<double?>? deviceCount,
      Wrapped<double?>? clientCount,
      Wrapped<double?>? userCount,
      Wrapped<double?>? dataCount,
      Wrapped<double?>? archivalCount,
      Wrapped<double?>? dashboardCount,
      Wrapped<int?>? paidOn,
      Wrapped<String?>? providerId,
      Wrapped<String?>? transactionId,
      Wrapped<int?>? transactionStamp,
      Wrapped<Object?>? metaData,
      Wrapped<int?>? graceDays,
      Wrapped<String?>? paymentMode,
      Wrapped<String?>? paymentGateway,
      Wrapped<String>? paymentStatus,
      Wrapped<String>? currency,
      Wrapped<String>? currencyCode,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return Invoice(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        orgId: (orgId != null ? orgId.value : this.orgId),
        dueOn: (dueOn != null ? dueOn.value : this.dueOn),
        invoiceAmount:
            (invoiceAmount != null ? invoiceAmount.value : this.invoiceAmount),
        billedAmount:
            (billedAmount != null ? billedAmount.value : this.billedAmount),
        reconciled: (reconciled != null ? reconciled.value : this.reconciled),
        planId: (planId != null ? planId.value : this.planId),
        planFee: (planFee != null ? planFee.value : this.planFee),
        deviceModelFee: (deviceModelFee != null
            ? deviceModelFee.value
            : this.deviceModelFee),
        modelParametersFee: (modelParametersFee != null
            ? modelParametersFee.value
            : this.modelParametersFee),
        deviceFee: (deviceFee != null ? deviceFee.value : this.deviceFee),
        clientFee: (clientFee != null ? clientFee.value : this.clientFee),
        userFee: (userFee != null ? userFee.value : this.userFee),
        dataFee: (dataFee != null ? dataFee.value : this.dataFee),
        archivalFee:
            (archivalFee != null ? archivalFee.value : this.archivalFee),
        dashboardFee:
            (dashboardFee != null ? dashboardFee.value : this.dashboardFee),
        deviceModelCount: (deviceModelCount != null
            ? deviceModelCount.value
            : this.deviceModelCount),
        modelParametersCount: (modelParametersCount != null
            ? modelParametersCount.value
            : this.modelParametersCount),
        deviceCount:
            (deviceCount != null ? deviceCount.value : this.deviceCount),
        clientCount:
            (clientCount != null ? clientCount.value : this.clientCount),
        userCount: (userCount != null ? userCount.value : this.userCount),
        dataCount: (dataCount != null ? dataCount.value : this.dataCount),
        archivalCount:
            (archivalCount != null ? archivalCount.value : this.archivalCount),
        dashboardCount: (dashboardCount != null
            ? dashboardCount.value
            : this.dashboardCount),
        paidOn: (paidOn != null ? paidOn.value : this.paidOn),
        providerId: (providerId != null ? providerId.value : this.providerId),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        transactionStamp: (transactionStamp != null
            ? transactionStamp.value
            : this.transactionStamp),
        metaData: (metaData != null ? metaData.value : this.metaData),
        graceDays: (graceDays != null ? graceDays.value : this.graceDays),
        paymentMode:
            (paymentMode != null ? paymentMode.value : this.paymentMode),
        paymentGateway: (paymentGateway != null
            ? paymentGateway.value
            : this.paymentGateway),
        paymentStatus:
            (paymentStatus != null ? paymentStatus.value : this.paymentStatus),
        currency: (currency != null ? currency.value : this.currency),
        currencyCode:
            (currencyCode != null ? currencyCode.value : this.currencyCode),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class InvoiceEntity {
  const InvoiceEntity({
    this.entity,
  });

  factory InvoiceEntity.fromJson(Map<String, dynamic> json) =>
      _$InvoiceEntityFromJson(json);

  static const toJsonFactory = _$InvoiceEntityToJson;
  Map<String, dynamic> toJson() => _$InvoiceEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Invoice? entity;
  static const fromJsonFactory = _$InvoiceEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvoiceEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $InvoiceEntityExtension on InvoiceEntity {
  InvoiceEntity copyWith({Invoice? entity}) {
    return InvoiceEntity(entity: entity ?? this.entity);
  }

  InvoiceEntity copyWithWrapped({Wrapped<Invoice?>? entity}) {
    return InvoiceEntity(entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class InvoiceEntityRes {
  const InvoiceEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory InvoiceEntityRes.fromJson(Map<String, dynamic> json) =>
      _$InvoiceEntityResFromJson(json);

  static const toJsonFactory = _$InvoiceEntityResToJson;
  Map<String, dynamic> toJson() => _$InvoiceEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Invoice? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$InvoiceEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvoiceEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $InvoiceEntityResExtension on InvoiceEntityRes {
  InvoiceEntityRes copyWith(
      {Invoice? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return InvoiceEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  InvoiceEntityRes copyWithWrapped(
      {Wrapped<Invoice?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return InvoiceEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class InvoiceArray {
  const InvoiceArray({
    this.values,
  });

  factory InvoiceArray.fromJson(Map<String, dynamic> json) =>
      _$InvoiceArrayFromJson(json);

  static const toJsonFactory = _$InvoiceArrayToJson;
  Map<String, dynamic> toJson() => _$InvoiceArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Invoice>[])
  final List<Invoice>? values;
  static const fromJsonFactory = _$InvoiceArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvoiceArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $InvoiceArrayExtension on InvoiceArray {
  InvoiceArray copyWith({List<Invoice>? values}) {
    return InvoiceArray(values: values ?? this.values);
  }

  InvoiceArray copyWithWrapped({Wrapped<List<Invoice>?>? values}) {
    return InvoiceArray(values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class InvoiceArrayRes {
  const InvoiceArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory InvoiceArrayRes.fromJson(Map<String, dynamic> json) =>
      _$InvoiceArrayResFromJson(json);

  static const toJsonFactory = _$InvoiceArrayResToJson;
  Map<String, dynamic> toJson() => _$InvoiceArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Invoice>[])
  final List<Invoice>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$InvoiceArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvoiceArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $InvoiceArrayResExtension on InvoiceArrayRes {
  InvoiceArrayRes copyWith(
      {List<Invoice>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return InvoiceArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  InvoiceArrayRes copyWithWrapped(
      {Wrapped<List<Invoice>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return InvoiceArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanChangeRequest {
  const PlanChangeRequest({
    required this.orgId,
    required this.planId,
    this.orderId,
  });

  factory PlanChangeRequest.fromJson(Map<String, dynamic> json) =>
      _$PlanChangeRequestFromJson(json);

  static const toJsonFactory = _$PlanChangeRequestToJson;
  Map<String, dynamic> toJson() => _$PlanChangeRequestToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'planId', includeIfNull: false, defaultValue: '')
  final String planId;
  @JsonKey(name: 'orderId', includeIfNull: false, defaultValue: '')
  final String? orderId;
  static const fromJsonFactory = _$PlanChangeRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanChangeRequest &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(orderId) ^
      runtimeType.hashCode;
}

extension $PlanChangeRequestExtension on PlanChangeRequest {
  PlanChangeRequest copyWith({String? orgId, String? planId, String? orderId}) {
    return PlanChangeRequest(
        orgId: orgId ?? this.orgId,
        planId: planId ?? this.planId,
        orderId: orderId ?? this.orderId);
  }

  PlanChangeRequest copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? planId,
      Wrapped<String?>? orderId}) {
    return PlanChangeRequest(
        orgId: (orgId != null ? orgId.value : this.orgId),
        planId: (planId != null ? planId.value : this.planId),
        orderId: (orderId != null ? orderId.value : this.orderId));
  }
}

@JsonSerializable(explicitToJson: true)
class AddComponentRequest {
  const AddComponentRequest({
    required this.orgId,
    required this.orderId,
  });

  factory AddComponentRequest.fromJson(Map<String, dynamic> json) =>
      _$AddComponentRequestFromJson(json);

  static const toJsonFactory = _$AddComponentRequestToJson;
  Map<String, dynamic> toJson() => _$AddComponentRequestToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'orderId', includeIfNull: false, defaultValue: '')
  final String orderId;
  static const fromJsonFactory = _$AddComponentRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddComponentRequest &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(orderId) ^
      runtimeType.hashCode;
}

extension $AddComponentRequestExtension on AddComponentRequest {
  AddComponentRequest copyWith({String? orgId, String? orderId}) {
    return AddComponentRequest(
        orgId: orgId ?? this.orgId, orderId: orderId ?? this.orderId);
  }

  AddComponentRequest copyWithWrapped(
      {Wrapped<String>? orgId, Wrapped<String>? orderId}) {
    return AddComponentRequest(
        orgId: (orgId != null ? orgId.value : this.orgId),
        orderId: (orderId != null ? orderId.value : this.orderId));
  }
}

@JsonSerializable(explicitToJson: true)
class PaidInvoiceRequest {
  const PaidInvoiceRequest({
    required this.orgId,
    required this.invoiceId,
    required this.billedAmount,
    this.paymentMode,
    this.paymentGateway,
    this.transactionId,
    this.transactionStamp,
    this.metaData,
  });

  factory PaidInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$PaidInvoiceRequestFromJson(json);

  static const toJsonFactory = _$PaidInvoiceRequestToJson;
  Map<String, dynamic> toJson() => _$PaidInvoiceRequestToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'invoiceId', includeIfNull: false, defaultValue: '')
  final String invoiceId;
  @JsonKey(name: 'billedAmount', includeIfNull: false)
  final double billedAmount;
  @JsonKey(name: 'paymentMode', includeIfNull: false, defaultValue: '')
  final String? paymentMode;
  @JsonKey(name: 'paymentGateway', includeIfNull: false, defaultValue: '')
  final String? paymentGateway;
  @JsonKey(name: 'transactionId', includeIfNull: false, defaultValue: '')
  final String? transactionId;
  @JsonKey(name: 'transactionStamp', includeIfNull: false)
  final int? transactionStamp;
  @JsonKey(name: 'metaData', includeIfNull: false)
  final Object? metaData;
  static const fromJsonFactory = _$PaidInvoiceRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PaidInvoiceRequest &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.invoiceId, invoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceId, invoiceId)) &&
            (identical(other.billedAmount, billedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.billedAmount, billedAmount)) &&
            (identical(other.paymentMode, paymentMode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMode, paymentMode)) &&
            (identical(other.paymentGateway, paymentGateway) ||
                const DeepCollectionEquality()
                    .equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.transactionStamp, transactionStamp) ||
                const DeepCollectionEquality()
                    .equals(other.transactionStamp, transactionStamp)) &&
            (identical(other.metaData, metaData) ||
                const DeepCollectionEquality()
                    .equals(other.metaData, metaData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(invoiceId) ^
      const DeepCollectionEquality().hash(billedAmount) ^
      const DeepCollectionEquality().hash(paymentMode) ^
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(transactionStamp) ^
      const DeepCollectionEquality().hash(metaData) ^
      runtimeType.hashCode;
}

extension $PaidInvoiceRequestExtension on PaidInvoiceRequest {
  PaidInvoiceRequest copyWith(
      {String? orgId,
      String? invoiceId,
      double? billedAmount,
      String? paymentMode,
      String? paymentGateway,
      String? transactionId,
      int? transactionStamp,
      Object? metaData}) {
    return PaidInvoiceRequest(
        orgId: orgId ?? this.orgId,
        invoiceId: invoiceId ?? this.invoiceId,
        billedAmount: billedAmount ?? this.billedAmount,
        paymentMode: paymentMode ?? this.paymentMode,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        transactionId: transactionId ?? this.transactionId,
        transactionStamp: transactionStamp ?? this.transactionStamp,
        metaData: metaData ?? this.metaData);
  }

  PaidInvoiceRequest copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? invoiceId,
      Wrapped<double>? billedAmount,
      Wrapped<String?>? paymentMode,
      Wrapped<String?>? paymentGateway,
      Wrapped<String?>? transactionId,
      Wrapped<int?>? transactionStamp,
      Wrapped<Object?>? metaData}) {
    return PaidInvoiceRequest(
        orgId: (orgId != null ? orgId.value : this.orgId),
        invoiceId: (invoiceId != null ? invoiceId.value : this.invoiceId),
        billedAmount:
            (billedAmount != null ? billedAmount.value : this.billedAmount),
        paymentMode:
            (paymentMode != null ? paymentMode.value : this.paymentMode),
        paymentGateway: (paymentGateway != null
            ? paymentGateway.value
            : this.paymentGateway),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        transactionStamp: (transactionStamp != null
            ? transactionStamp.value
            : this.transactionStamp),
        metaData: (metaData != null ? metaData.value : this.metaData));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderInfo {
  const OrderInfo({
    this.description,
    required this.orgId,
    this.couponCode,
    this.planId,
    this.modelCount,
    this.parameterCount,
    this.deviceCount,
    this.clientCount,
    this.dataCount,
    this.userCount,
    this.archivalCount,
    this.dashboardCount,
    required this.currency,
    required this.currencyCode,
  });

  factory OrderInfo.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoFromJson(json);

  static const toJsonFactory = _$OrderInfoToJson;
  Map<String, dynamic> toJson() => _$OrderInfoToJson(this);

  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'couponCode', includeIfNull: false, defaultValue: '')
  final String? couponCode;
  @JsonKey(name: 'planId', includeIfNull: false, defaultValue: '')
  final String? planId;
  @JsonKey(name: 'modelCount', includeIfNull: false)
  final int? modelCount;
  @JsonKey(name: 'parameterCount', includeIfNull: false)
  final int? parameterCount;
  @JsonKey(name: 'deviceCount', includeIfNull: false)
  final int? deviceCount;
  @JsonKey(name: 'clientCount', includeIfNull: false)
  final int? clientCount;
  @JsonKey(name: 'dataCount', includeIfNull: false)
  final int? dataCount;
  @JsonKey(name: 'userCount', includeIfNull: false)
  final int? userCount;
  @JsonKey(name: 'archivalCount', includeIfNull: false)
  final int? archivalCount;
  @JsonKey(name: 'dashboardCount', includeIfNull: false)
  final int? dashboardCount;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'currencyCode', includeIfNull: false, defaultValue: '')
  final String currencyCode;
  static const fromJsonFactory = _$OrderInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderInfo &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality()
                    .equals(other.couponCode, couponCode)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.modelCount, modelCount) ||
                const DeepCollectionEquality()
                    .equals(other.modelCount, modelCount)) &&
            (identical(other.parameterCount, parameterCount) ||
                const DeepCollectionEquality()
                    .equals(other.parameterCount, parameterCount)) &&
            (identical(other.deviceCount, deviceCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCount, deviceCount)) &&
            (identical(other.clientCount, clientCount) ||
                const DeepCollectionEquality()
                    .equals(other.clientCount, clientCount)) &&
            (identical(other.dataCount, dataCount) ||
                const DeepCollectionEquality()
                    .equals(other.dataCount, dataCount)) &&
            (identical(other.userCount, userCount) ||
                const DeepCollectionEquality()
                    .equals(other.userCount, userCount)) &&
            (identical(other.archivalCount, archivalCount) ||
                const DeepCollectionEquality()
                    .equals(other.archivalCount, archivalCount)) &&
            (identical(other.dashboardCount, dashboardCount) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardCount, dashboardCount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(modelCount) ^
      const DeepCollectionEquality().hash(parameterCount) ^
      const DeepCollectionEquality().hash(deviceCount) ^
      const DeepCollectionEquality().hash(clientCount) ^
      const DeepCollectionEquality().hash(dataCount) ^
      const DeepCollectionEquality().hash(userCount) ^
      const DeepCollectionEquality().hash(archivalCount) ^
      const DeepCollectionEquality().hash(dashboardCount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      runtimeType.hashCode;
}

extension $OrderInfoExtension on OrderInfo {
  OrderInfo copyWith(
      {String? description,
      String? orgId,
      String? couponCode,
      String? planId,
      int? modelCount,
      int? parameterCount,
      int? deviceCount,
      int? clientCount,
      int? dataCount,
      int? userCount,
      int? archivalCount,
      int? dashboardCount,
      String? currency,
      String? currencyCode}) {
    return OrderInfo(
        description: description ?? this.description,
        orgId: orgId ?? this.orgId,
        couponCode: couponCode ?? this.couponCode,
        planId: planId ?? this.planId,
        modelCount: modelCount ?? this.modelCount,
        parameterCount: parameterCount ?? this.parameterCount,
        deviceCount: deviceCount ?? this.deviceCount,
        clientCount: clientCount ?? this.clientCount,
        dataCount: dataCount ?? this.dataCount,
        userCount: userCount ?? this.userCount,
        archivalCount: archivalCount ?? this.archivalCount,
        dashboardCount: dashboardCount ?? this.dashboardCount,
        currency: currency ?? this.currency,
        currencyCode: currencyCode ?? this.currencyCode);
  }

  OrderInfo copyWithWrapped(
      {Wrapped<String?>? description,
      Wrapped<String>? orgId,
      Wrapped<String?>? couponCode,
      Wrapped<String?>? planId,
      Wrapped<int?>? modelCount,
      Wrapped<int?>? parameterCount,
      Wrapped<int?>? deviceCount,
      Wrapped<int?>? clientCount,
      Wrapped<int?>? dataCount,
      Wrapped<int?>? userCount,
      Wrapped<int?>? archivalCount,
      Wrapped<int?>? dashboardCount,
      Wrapped<String>? currency,
      Wrapped<String>? currencyCode}) {
    return OrderInfo(
        description:
            (description != null ? description.value : this.description),
        orgId: (orgId != null ? orgId.value : this.orgId),
        couponCode: (couponCode != null ? couponCode.value : this.couponCode),
        planId: (planId != null ? planId.value : this.planId),
        modelCount: (modelCount != null ? modelCount.value : this.modelCount),
        parameterCount: (parameterCount != null
            ? parameterCount.value
            : this.parameterCount),
        deviceCount:
            (deviceCount != null ? deviceCount.value : this.deviceCount),
        clientCount:
            (clientCount != null ? clientCount.value : this.clientCount),
        dataCount: (dataCount != null ? dataCount.value : this.dataCount),
        userCount: (userCount != null ? userCount.value : this.userCount),
        archivalCount:
            (archivalCount != null ? archivalCount.value : this.archivalCount),
        dashboardCount: (dashboardCount != null
            ? dashboardCount.value
            : this.dashboardCount),
        currency: (currency != null ? currency.value : this.currency),
        currencyCode:
            (currencyCode != null ? currencyCode.value : this.currencyCode));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderBase {
  const OrderBase({
    required this.orderAmount,
    required this.reconciled,
    required this.processed,
    this.billedAmount,
    this.planPrice,
    this.modelPrice,
    this.parameterPrice,
    this.devicePrice,
    this.clientPrice,
    this.dataPrice,
    this.userPrice,
    this.archivalPrice,
    this.dashboardPrice,
    this.providerId,
    this.transactionId,
    this.transactionStamp,
    this.discount,
    this.metaData,
    this.paymentGateway,
    this.stripePaymentSecret,
    required this.orderStatus,
  });

  factory OrderBase.fromJson(Map<String, dynamic> json) =>
      _$OrderBaseFromJson(json);

  static const toJsonFactory = _$OrderBaseToJson;
  Map<String, dynamic> toJson() => _$OrderBaseToJson(this);

  @JsonKey(name: 'orderAmount', includeIfNull: false)
  final double orderAmount;
  @JsonKey(name: 'reconciled', includeIfNull: false)
  final bool reconciled;
  @JsonKey(name: 'processed', includeIfNull: false)
  final bool processed;
  @JsonKey(name: 'billedAmount', includeIfNull: false)
  final double? billedAmount;
  @JsonKey(name: 'planPrice', includeIfNull: false)
  final double? planPrice;
  @JsonKey(name: 'modelPrice', includeIfNull: false)
  final double? modelPrice;
  @JsonKey(name: 'parameterPrice', includeIfNull: false)
  final double? parameterPrice;
  @JsonKey(name: 'devicePrice', includeIfNull: false)
  final double? devicePrice;
  @JsonKey(name: 'clientPrice', includeIfNull: false)
  final double? clientPrice;
  @JsonKey(name: 'dataPrice', includeIfNull: false)
  final double? dataPrice;
  @JsonKey(name: 'userPrice', includeIfNull: false)
  final double? userPrice;
  @JsonKey(name: 'archivalPrice', includeIfNull: false)
  final double? archivalPrice;
  @JsonKey(name: 'dashboardPrice', includeIfNull: false)
  final double? dashboardPrice;
  @JsonKey(name: 'providerId', includeIfNull: false, defaultValue: '')
  final String? providerId;
  @JsonKey(name: 'transactionId', includeIfNull: false, defaultValue: '')
  final String? transactionId;
  @JsonKey(name: 'transactionStamp', includeIfNull: false)
  final int? transactionStamp;
  @JsonKey(name: 'discount', includeIfNull: false)
  final double? discount;
  @JsonKey(name: 'metaData', includeIfNull: false)
  final Object? metaData;
  @JsonKey(name: 'paymentGateway', includeIfNull: false, defaultValue: '')
  final String? paymentGateway;
  @JsonKey(name: 'stripePaymentSecret', includeIfNull: false, defaultValue: '')
  final String? stripePaymentSecret;
  @JsonKey(name: 'orderStatus', includeIfNull: false, defaultValue: '')
  final String orderStatus;
  static const fromJsonFactory = _$OrderBaseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderBase &&
            (identical(other.orderAmount, orderAmount) ||
                const DeepCollectionEquality()
                    .equals(other.orderAmount, orderAmount)) &&
            (identical(other.reconciled, reconciled) ||
                const DeepCollectionEquality()
                    .equals(other.reconciled, reconciled)) &&
            (identical(other.processed, processed) ||
                const DeepCollectionEquality()
                    .equals(other.processed, processed)) &&
            (identical(other.billedAmount, billedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.billedAmount, billedAmount)) &&
            (identical(other.planPrice, planPrice) ||
                const DeepCollectionEquality()
                    .equals(other.planPrice, planPrice)) &&
            (identical(other.modelPrice, modelPrice) ||
                const DeepCollectionEquality()
                    .equals(other.modelPrice, modelPrice)) &&
            (identical(other.parameterPrice, parameterPrice) ||
                const DeepCollectionEquality()
                    .equals(other.parameterPrice, parameterPrice)) &&
            (identical(other.devicePrice, devicePrice) ||
                const DeepCollectionEquality()
                    .equals(other.devicePrice, devicePrice)) &&
            (identical(other.clientPrice, clientPrice) ||
                const DeepCollectionEquality()
                    .equals(other.clientPrice, clientPrice)) &&
            (identical(other.dataPrice, dataPrice) ||
                const DeepCollectionEquality()
                    .equals(other.dataPrice, dataPrice)) &&
            (identical(other.userPrice, userPrice) ||
                const DeepCollectionEquality()
                    .equals(other.userPrice, userPrice)) &&
            (identical(other.archivalPrice, archivalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.archivalPrice, archivalPrice)) &&
            (identical(other.dashboardPrice, dashboardPrice) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardPrice, dashboardPrice)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.transactionStamp, transactionStamp) ||
                const DeepCollectionEquality()
                    .equals(other.transactionStamp, transactionStamp)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.metaData, metaData) ||
                const DeepCollectionEquality()
                    .equals(other.metaData, metaData)) &&
            (identical(other.paymentGateway, paymentGateway) ||
                const DeepCollectionEquality()
                    .equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.stripePaymentSecret, stripePaymentSecret) ||
                const DeepCollectionEquality()
                    .equals(other.stripePaymentSecret, stripePaymentSecret)) &&
            (identical(other.orderStatus, orderStatus) ||
                const DeepCollectionEquality()
                    .equals(other.orderStatus, orderStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderAmount) ^
      const DeepCollectionEquality().hash(reconciled) ^
      const DeepCollectionEquality().hash(processed) ^
      const DeepCollectionEquality().hash(billedAmount) ^
      const DeepCollectionEquality().hash(planPrice) ^
      const DeepCollectionEquality().hash(modelPrice) ^
      const DeepCollectionEquality().hash(parameterPrice) ^
      const DeepCollectionEquality().hash(devicePrice) ^
      const DeepCollectionEquality().hash(clientPrice) ^
      const DeepCollectionEquality().hash(dataPrice) ^
      const DeepCollectionEquality().hash(userPrice) ^
      const DeepCollectionEquality().hash(archivalPrice) ^
      const DeepCollectionEquality().hash(dashboardPrice) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(transactionStamp) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(metaData) ^
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(stripePaymentSecret) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      runtimeType.hashCode;
}

extension $OrderBaseExtension on OrderBase {
  OrderBase copyWith(
      {double? orderAmount,
      bool? reconciled,
      bool? processed,
      double? billedAmount,
      double? planPrice,
      double? modelPrice,
      double? parameterPrice,
      double? devicePrice,
      double? clientPrice,
      double? dataPrice,
      double? userPrice,
      double? archivalPrice,
      double? dashboardPrice,
      String? providerId,
      String? transactionId,
      int? transactionStamp,
      double? discount,
      Object? metaData,
      String? paymentGateway,
      String? stripePaymentSecret,
      String? orderStatus}) {
    return OrderBase(
        orderAmount: orderAmount ?? this.orderAmount,
        reconciled: reconciled ?? this.reconciled,
        processed: processed ?? this.processed,
        billedAmount: billedAmount ?? this.billedAmount,
        planPrice: planPrice ?? this.planPrice,
        modelPrice: modelPrice ?? this.modelPrice,
        parameterPrice: parameterPrice ?? this.parameterPrice,
        devicePrice: devicePrice ?? this.devicePrice,
        clientPrice: clientPrice ?? this.clientPrice,
        dataPrice: dataPrice ?? this.dataPrice,
        userPrice: userPrice ?? this.userPrice,
        archivalPrice: archivalPrice ?? this.archivalPrice,
        dashboardPrice: dashboardPrice ?? this.dashboardPrice,
        providerId: providerId ?? this.providerId,
        transactionId: transactionId ?? this.transactionId,
        transactionStamp: transactionStamp ?? this.transactionStamp,
        discount: discount ?? this.discount,
        metaData: metaData ?? this.metaData,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        stripePaymentSecret: stripePaymentSecret ?? this.stripePaymentSecret,
        orderStatus: orderStatus ?? this.orderStatus);
  }

  OrderBase copyWithWrapped(
      {Wrapped<double>? orderAmount,
      Wrapped<bool>? reconciled,
      Wrapped<bool>? processed,
      Wrapped<double?>? billedAmount,
      Wrapped<double?>? planPrice,
      Wrapped<double?>? modelPrice,
      Wrapped<double?>? parameterPrice,
      Wrapped<double?>? devicePrice,
      Wrapped<double?>? clientPrice,
      Wrapped<double?>? dataPrice,
      Wrapped<double?>? userPrice,
      Wrapped<double?>? archivalPrice,
      Wrapped<double?>? dashboardPrice,
      Wrapped<String?>? providerId,
      Wrapped<String?>? transactionId,
      Wrapped<int?>? transactionStamp,
      Wrapped<double?>? discount,
      Wrapped<Object?>? metaData,
      Wrapped<String?>? paymentGateway,
      Wrapped<String?>? stripePaymentSecret,
      Wrapped<String>? orderStatus}) {
    return OrderBase(
        orderAmount:
            (orderAmount != null ? orderAmount.value : this.orderAmount),
        reconciled: (reconciled != null ? reconciled.value : this.reconciled),
        processed: (processed != null ? processed.value : this.processed),
        billedAmount:
            (billedAmount != null ? billedAmount.value : this.billedAmount),
        planPrice: (planPrice != null ? planPrice.value : this.planPrice),
        modelPrice: (modelPrice != null ? modelPrice.value : this.modelPrice),
        parameterPrice: (parameterPrice != null
            ? parameterPrice.value
            : this.parameterPrice),
        devicePrice:
            (devicePrice != null ? devicePrice.value : this.devicePrice),
        clientPrice:
            (clientPrice != null ? clientPrice.value : this.clientPrice),
        dataPrice: (dataPrice != null ? dataPrice.value : this.dataPrice),
        userPrice: (userPrice != null ? userPrice.value : this.userPrice),
        archivalPrice:
            (archivalPrice != null ? archivalPrice.value : this.archivalPrice),
        dashboardPrice: (dashboardPrice != null
            ? dashboardPrice.value
            : this.dashboardPrice),
        providerId: (providerId != null ? providerId.value : this.providerId),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        transactionStamp: (transactionStamp != null
            ? transactionStamp.value
            : this.transactionStamp),
        discount: (discount != null ? discount.value : this.discount),
        metaData: (metaData != null ? metaData.value : this.metaData),
        paymentGateway: (paymentGateway != null
            ? paymentGateway.value
            : this.paymentGateway),
        stripePaymentSecret: (stripePaymentSecret != null
            ? stripePaymentSecret.value
            : this.stripePaymentSecret),
        orderStatus:
            (orderStatus != null ? orderStatus.value : this.orderStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class Order {
  const Order({
    this.description,
    required this.orgId,
    this.couponCode,
    this.planId,
    this.modelCount,
    this.parameterCount,
    this.deviceCount,
    this.clientCount,
    this.dataCount,
    this.userCount,
    this.archivalCount,
    this.dashboardCount,
    required this.currency,
    required this.currencyCode,
    required this.orderAmount,
    required this.reconciled,
    required this.processed,
    this.billedAmount,
    this.planPrice,
    this.modelPrice,
    this.parameterPrice,
    this.devicePrice,
    this.clientPrice,
    this.dataPrice,
    this.userPrice,
    this.archivalPrice,
    this.dashboardPrice,
    this.providerId,
    this.transactionId,
    this.transactionStamp,
    this.discount,
    this.metaData,
    this.paymentGateway,
    this.stripePaymentSecret,
    required this.orderStatus,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  static const toJsonFactory = _$OrderToJson;
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'couponCode', includeIfNull: false, defaultValue: '')
  final String? couponCode;
  @JsonKey(name: 'planId', includeIfNull: false, defaultValue: '')
  final String? planId;
  @JsonKey(name: 'modelCount', includeIfNull: false)
  final int? modelCount;
  @JsonKey(name: 'parameterCount', includeIfNull: false)
  final int? parameterCount;
  @JsonKey(name: 'deviceCount', includeIfNull: false)
  final int? deviceCount;
  @JsonKey(name: 'clientCount', includeIfNull: false)
  final int? clientCount;
  @JsonKey(name: 'dataCount', includeIfNull: false)
  final int? dataCount;
  @JsonKey(name: 'userCount', includeIfNull: false)
  final int? userCount;
  @JsonKey(name: 'archivalCount', includeIfNull: false)
  final int? archivalCount;
  @JsonKey(name: 'dashboardCount', includeIfNull: false)
  final int? dashboardCount;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'currencyCode', includeIfNull: false, defaultValue: '')
  final String currencyCode;
  @JsonKey(name: 'orderAmount', includeIfNull: false)
  final double orderAmount;
  @JsonKey(name: 'reconciled', includeIfNull: false)
  final bool reconciled;
  @JsonKey(name: 'processed', includeIfNull: false)
  final bool processed;
  @JsonKey(name: 'billedAmount', includeIfNull: false)
  final double? billedAmount;
  @JsonKey(name: 'planPrice', includeIfNull: false)
  final double? planPrice;
  @JsonKey(name: 'modelPrice', includeIfNull: false)
  final double? modelPrice;
  @JsonKey(name: 'parameterPrice', includeIfNull: false)
  final double? parameterPrice;
  @JsonKey(name: 'devicePrice', includeIfNull: false)
  final double? devicePrice;
  @JsonKey(name: 'clientPrice', includeIfNull: false)
  final double? clientPrice;
  @JsonKey(name: 'dataPrice', includeIfNull: false)
  final double? dataPrice;
  @JsonKey(name: 'userPrice', includeIfNull: false)
  final double? userPrice;
  @JsonKey(name: 'archivalPrice', includeIfNull: false)
  final double? archivalPrice;
  @JsonKey(name: 'dashboardPrice', includeIfNull: false)
  final double? dashboardPrice;
  @JsonKey(name: 'providerId', includeIfNull: false, defaultValue: '')
  final String? providerId;
  @JsonKey(name: 'transactionId', includeIfNull: false, defaultValue: '')
  final String? transactionId;
  @JsonKey(name: 'transactionStamp', includeIfNull: false)
  final int? transactionStamp;
  @JsonKey(name: 'discount', includeIfNull: false)
  final double? discount;
  @JsonKey(name: 'metaData', includeIfNull: false)
  final Object? metaData;
  @JsonKey(name: 'paymentGateway', includeIfNull: false, defaultValue: '')
  final String? paymentGateway;
  @JsonKey(name: 'stripePaymentSecret', includeIfNull: false, defaultValue: '')
  final String? stripePaymentSecret;
  @JsonKey(name: 'orderStatus', includeIfNull: false, defaultValue: '')
  final String orderStatus;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$OrderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Order &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality()
                    .equals(other.couponCode, couponCode)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.modelCount, modelCount) ||
                const DeepCollectionEquality()
                    .equals(other.modelCount, modelCount)) &&
            (identical(other.parameterCount, parameterCount) ||
                const DeepCollectionEquality()
                    .equals(other.parameterCount, parameterCount)) &&
            (identical(other.deviceCount, deviceCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCount, deviceCount)) &&
            (identical(other.clientCount, clientCount) ||
                const DeepCollectionEquality()
                    .equals(other.clientCount, clientCount)) &&
            (identical(other.dataCount, dataCount) ||
                const DeepCollectionEquality()
                    .equals(other.dataCount, dataCount)) &&
            (identical(other.userCount, userCount) ||
                const DeepCollectionEquality()
                    .equals(other.userCount, userCount)) &&
            (identical(other.archivalCount, archivalCount) ||
                const DeepCollectionEquality()
                    .equals(other.archivalCount, archivalCount)) &&
            (identical(other.dashboardCount, dashboardCount) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardCount, dashboardCount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)) &&
            (identical(other.orderAmount, orderAmount) ||
                const DeepCollectionEquality()
                    .equals(other.orderAmount, orderAmount)) &&
            (identical(other.reconciled, reconciled) ||
                const DeepCollectionEquality()
                    .equals(other.reconciled, reconciled)) &&
            (identical(other.processed, processed) ||
                const DeepCollectionEquality()
                    .equals(other.processed, processed)) &&
            (identical(other.billedAmount, billedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.billedAmount, billedAmount)) &&
            (identical(other.planPrice, planPrice) ||
                const DeepCollectionEquality()
                    .equals(other.planPrice, planPrice)) &&
            (identical(other.modelPrice, modelPrice) ||
                const DeepCollectionEquality()
                    .equals(other.modelPrice, modelPrice)) &&
            (identical(other.parameterPrice, parameterPrice) ||
                const DeepCollectionEquality()
                    .equals(other.parameterPrice, parameterPrice)) &&
            (identical(other.devicePrice, devicePrice) ||
                const DeepCollectionEquality()
                    .equals(other.devicePrice, devicePrice)) &&
            (identical(other.clientPrice, clientPrice) ||
                const DeepCollectionEquality().equals(other.clientPrice, clientPrice)) &&
            (identical(other.dataPrice, dataPrice) || const DeepCollectionEquality().equals(other.dataPrice, dataPrice)) &&
            (identical(other.userPrice, userPrice) || const DeepCollectionEquality().equals(other.userPrice, userPrice)) &&
            (identical(other.archivalPrice, archivalPrice) || const DeepCollectionEquality().equals(other.archivalPrice, archivalPrice)) &&
            (identical(other.dashboardPrice, dashboardPrice) || const DeepCollectionEquality().equals(other.dashboardPrice, dashboardPrice)) &&
            (identical(other.providerId, providerId) || const DeepCollectionEquality().equals(other.providerId, providerId)) &&
            (identical(other.transactionId, transactionId) || const DeepCollectionEquality().equals(other.transactionId, transactionId)) &&
            (identical(other.transactionStamp, transactionStamp) || const DeepCollectionEquality().equals(other.transactionStamp, transactionStamp)) &&
            (identical(other.discount, discount) || const DeepCollectionEquality().equals(other.discount, discount)) &&
            (identical(other.metaData, metaData) || const DeepCollectionEquality().equals(other.metaData, metaData)) &&
            (identical(other.paymentGateway, paymentGateway) || const DeepCollectionEquality().equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.stripePaymentSecret, stripePaymentSecret) || const DeepCollectionEquality().equals(other.stripePaymentSecret, stripePaymentSecret)) &&
            (identical(other.orderStatus, orderStatus) || const DeepCollectionEquality().equals(other.orderStatus, orderStatus)) &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) || const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) || const DeepCollectionEquality().equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) || const DeepCollectionEquality().equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) || const DeepCollectionEquality().equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) || const DeepCollectionEquality().equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) || const DeepCollectionEquality().equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(modelCount) ^
      const DeepCollectionEquality().hash(parameterCount) ^
      const DeepCollectionEquality().hash(deviceCount) ^
      const DeepCollectionEquality().hash(clientCount) ^
      const DeepCollectionEquality().hash(dataCount) ^
      const DeepCollectionEquality().hash(userCount) ^
      const DeepCollectionEquality().hash(archivalCount) ^
      const DeepCollectionEquality().hash(dashboardCount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(orderAmount) ^
      const DeepCollectionEquality().hash(reconciled) ^
      const DeepCollectionEquality().hash(processed) ^
      const DeepCollectionEquality().hash(billedAmount) ^
      const DeepCollectionEquality().hash(planPrice) ^
      const DeepCollectionEquality().hash(modelPrice) ^
      const DeepCollectionEquality().hash(parameterPrice) ^
      const DeepCollectionEquality().hash(devicePrice) ^
      const DeepCollectionEquality().hash(clientPrice) ^
      const DeepCollectionEquality().hash(dataPrice) ^
      const DeepCollectionEquality().hash(userPrice) ^
      const DeepCollectionEquality().hash(archivalPrice) ^
      const DeepCollectionEquality().hash(dashboardPrice) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(transactionStamp) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(metaData) ^
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(stripePaymentSecret) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $OrderExtension on Order {
  Order copyWith(
      {String? description,
      String? orgId,
      String? couponCode,
      String? planId,
      int? modelCount,
      int? parameterCount,
      int? deviceCount,
      int? clientCount,
      int? dataCount,
      int? userCount,
      int? archivalCount,
      int? dashboardCount,
      String? currency,
      String? currencyCode,
      double? orderAmount,
      bool? reconciled,
      bool? processed,
      double? billedAmount,
      double? planPrice,
      double? modelPrice,
      double? parameterPrice,
      double? devicePrice,
      double? clientPrice,
      double? dataPrice,
      double? userPrice,
      double? archivalPrice,
      double? dashboardPrice,
      String? providerId,
      String? transactionId,
      int? transactionStamp,
      double? discount,
      Object? metaData,
      String? paymentGateway,
      String? stripePaymentSecret,
      String? orderStatus,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return Order(
        description: description ?? this.description,
        orgId: orgId ?? this.orgId,
        couponCode: couponCode ?? this.couponCode,
        planId: planId ?? this.planId,
        modelCount: modelCount ?? this.modelCount,
        parameterCount: parameterCount ?? this.parameterCount,
        deviceCount: deviceCount ?? this.deviceCount,
        clientCount: clientCount ?? this.clientCount,
        dataCount: dataCount ?? this.dataCount,
        userCount: userCount ?? this.userCount,
        archivalCount: archivalCount ?? this.archivalCount,
        dashboardCount: dashboardCount ?? this.dashboardCount,
        currency: currency ?? this.currency,
        currencyCode: currencyCode ?? this.currencyCode,
        orderAmount: orderAmount ?? this.orderAmount,
        reconciled: reconciled ?? this.reconciled,
        processed: processed ?? this.processed,
        billedAmount: billedAmount ?? this.billedAmount,
        planPrice: planPrice ?? this.planPrice,
        modelPrice: modelPrice ?? this.modelPrice,
        parameterPrice: parameterPrice ?? this.parameterPrice,
        devicePrice: devicePrice ?? this.devicePrice,
        clientPrice: clientPrice ?? this.clientPrice,
        dataPrice: dataPrice ?? this.dataPrice,
        userPrice: userPrice ?? this.userPrice,
        archivalPrice: archivalPrice ?? this.archivalPrice,
        dashboardPrice: dashboardPrice ?? this.dashboardPrice,
        providerId: providerId ?? this.providerId,
        transactionId: transactionId ?? this.transactionId,
        transactionStamp: transactionStamp ?? this.transactionStamp,
        discount: discount ?? this.discount,
        metaData: metaData ?? this.metaData,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        stripePaymentSecret: stripePaymentSecret ?? this.stripePaymentSecret,
        orderStatus: orderStatus ?? this.orderStatus,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  Order copyWithWrapped(
      {Wrapped<String?>? description,
      Wrapped<String>? orgId,
      Wrapped<String?>? couponCode,
      Wrapped<String?>? planId,
      Wrapped<int?>? modelCount,
      Wrapped<int?>? parameterCount,
      Wrapped<int?>? deviceCount,
      Wrapped<int?>? clientCount,
      Wrapped<int?>? dataCount,
      Wrapped<int?>? userCount,
      Wrapped<int?>? archivalCount,
      Wrapped<int?>? dashboardCount,
      Wrapped<String>? currency,
      Wrapped<String>? currencyCode,
      Wrapped<double>? orderAmount,
      Wrapped<bool>? reconciled,
      Wrapped<bool>? processed,
      Wrapped<double?>? billedAmount,
      Wrapped<double?>? planPrice,
      Wrapped<double?>? modelPrice,
      Wrapped<double?>? parameterPrice,
      Wrapped<double?>? devicePrice,
      Wrapped<double?>? clientPrice,
      Wrapped<double?>? dataPrice,
      Wrapped<double?>? userPrice,
      Wrapped<double?>? archivalPrice,
      Wrapped<double?>? dashboardPrice,
      Wrapped<String?>? providerId,
      Wrapped<String?>? transactionId,
      Wrapped<int?>? transactionStamp,
      Wrapped<double?>? discount,
      Wrapped<Object?>? metaData,
      Wrapped<String?>? paymentGateway,
      Wrapped<String?>? stripePaymentSecret,
      Wrapped<String>? orderStatus,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return Order(
        description:
            (description != null ? description.value : this.description),
        orgId: (orgId != null ? orgId.value : this.orgId),
        couponCode: (couponCode != null ? couponCode.value : this.couponCode),
        planId: (planId != null ? planId.value : this.planId),
        modelCount: (modelCount != null ? modelCount.value : this.modelCount),
        parameterCount: (parameterCount != null
            ? parameterCount.value
            : this.parameterCount),
        deviceCount:
            (deviceCount != null ? deviceCount.value : this.deviceCount),
        clientCount:
            (clientCount != null ? clientCount.value : this.clientCount),
        dataCount: (dataCount != null ? dataCount.value : this.dataCount),
        userCount: (userCount != null ? userCount.value : this.userCount),
        archivalCount:
            (archivalCount != null ? archivalCount.value : this.archivalCount),
        dashboardCount: (dashboardCount != null
            ? dashboardCount.value
            : this.dashboardCount),
        currency: (currency != null ? currency.value : this.currency),
        currencyCode:
            (currencyCode != null ? currencyCode.value : this.currencyCode),
        orderAmount:
            (orderAmount != null ? orderAmount.value : this.orderAmount),
        reconciled: (reconciled != null ? reconciled.value : this.reconciled),
        processed: (processed != null ? processed.value : this.processed),
        billedAmount:
            (billedAmount != null ? billedAmount.value : this.billedAmount),
        planPrice: (planPrice != null ? planPrice.value : this.planPrice),
        modelPrice: (modelPrice != null ? modelPrice.value : this.modelPrice),
        parameterPrice: (parameterPrice != null
            ? parameterPrice.value
            : this.parameterPrice),
        devicePrice:
            (devicePrice != null ? devicePrice.value : this.devicePrice),
        clientPrice:
            (clientPrice != null ? clientPrice.value : this.clientPrice),
        dataPrice: (dataPrice != null ? dataPrice.value : this.dataPrice),
        userPrice: (userPrice != null ? userPrice.value : this.userPrice),
        archivalPrice:
            (archivalPrice != null ? archivalPrice.value : this.archivalPrice),
        dashboardPrice: (dashboardPrice != null
            ? dashboardPrice.value
            : this.dashboardPrice),
        providerId: (providerId != null ? providerId.value : this.providerId),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        transactionStamp: (transactionStamp != null
            ? transactionStamp.value
            : this.transactionStamp),
        discount: (discount != null ? discount.value : this.discount),
        metaData: (metaData != null ? metaData.value : this.metaData),
        paymentGateway: (paymentGateway != null
            ? paymentGateway.value
            : this.paymentGateway),
        stripePaymentSecret: (stripePaymentSecret != null
            ? stripePaymentSecret.value
            : this.stripePaymentSecret),
        orderStatus:
            (orderStatus != null ? orderStatus.value : this.orderStatus),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderEntity {
  const OrderEntity({
    this.entity,
  });

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);

  static const toJsonFactory = _$OrderEntityToJson;
  Map<String, dynamic> toJson() => _$OrderEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Order? entity;
  static const fromJsonFactory = _$OrderEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $OrderEntityExtension on OrderEntity {
  OrderEntity copyWith({Order? entity}) {
    return OrderEntity(entity: entity ?? this.entity);
  }

  OrderEntity copyWithWrapped({Wrapped<Order?>? entity}) {
    return OrderEntity(entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderEntityRes {
  const OrderEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory OrderEntityRes.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityResFromJson(json);

  static const toJsonFactory = _$OrderEntityResToJson;
  Map<String, dynamic> toJson() => _$OrderEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final Order? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$OrderEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $OrderEntityResExtension on OrderEntityRes {
  OrderEntityRes copyWith(
      {Order? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return OrderEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  OrderEntityRes copyWithWrapped(
      {Wrapped<Order?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return OrderEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderArray {
  const OrderArray({
    this.values,
  });

  factory OrderArray.fromJson(Map<String, dynamic> json) =>
      _$OrderArrayFromJson(json);

  static const toJsonFactory = _$OrderArrayToJson;
  Map<String, dynamic> toJson() => _$OrderArrayToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Order>[])
  final List<Order>? values;
  static const fromJsonFactory = _$OrderArrayFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderArray &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^ runtimeType.hashCode;
}

extension $OrderArrayExtension on OrderArray {
  OrderArray copyWith({List<Order>? values}) {
    return OrderArray(values: values ?? this.values);
  }

  OrderArray copyWithWrapped({Wrapped<List<Order>?>? values}) {
    return OrderArray(values: (values != null ? values.value : this.values));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderArrayRes {
  const OrderArrayRes({
    this.values,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
    this.total,
    this.page,
    this.size,
  });

  factory OrderArrayRes.fromJson(Map<String, dynamic> json) =>
      _$OrderArrayResFromJson(json);

  static const toJsonFactory = _$OrderArrayResToJson;
  Map<String, dynamic> toJson() => _$OrderArrayResToJson(this);

  @JsonKey(name: 'values', includeIfNull: false, defaultValue: <Order>[])
  final List<Order>? values;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'size', includeIfNull: false)
  final int? size;
  static const fromJsonFactory = _$OrderArrayResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderArrayRes &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $OrderArrayResExtension on OrderArrayRes {
  OrderArrayRes copyWith(
      {List<Order>? values,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode,
      int? total,
      int? page,
      int? size}) {
    return OrderArrayRes(
        values: values ?? this.values,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  OrderArrayRes copyWithWrapped(
      {Wrapped<List<Order>?>? values,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode,
      Wrapped<int?>? total,
      Wrapped<int?>? page,
      Wrapped<int?>? size}) {
    return OrderArrayRes(
        values: (values != null ? values.value : this.values),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class PaidOrderRequest {
  const PaidOrderRequest({
    required this.orgId,
    required this.orderId,
    required this.paymentGateway,
    required this.transactionId,
    this.transactionStamp,
    required this.billedAmount,
    this.metaData,
  });

  factory PaidOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$PaidOrderRequestFromJson(json);

  static const toJsonFactory = _$PaidOrderRequestToJson;
  Map<String, dynamic> toJson() => _$PaidOrderRequestToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'orderId', includeIfNull: false, defaultValue: '')
  final String orderId;
  @JsonKey(name: 'paymentGateway', includeIfNull: false, defaultValue: '')
  final String paymentGateway;
  @JsonKey(name: 'transactionId', includeIfNull: false, defaultValue: '')
  final String transactionId;
  @JsonKey(name: 'transactionStamp', includeIfNull: false)
  final int? transactionStamp;
  @JsonKey(name: 'billedAmount', includeIfNull: false)
  final double billedAmount;
  @JsonKey(name: 'metaData', includeIfNull: false)
  final Object? metaData;
  static const fromJsonFactory = _$PaidOrderRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PaidOrderRequest &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.paymentGateway, paymentGateway) ||
                const DeepCollectionEquality()
                    .equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.transactionStamp, transactionStamp) ||
                const DeepCollectionEquality()
                    .equals(other.transactionStamp, transactionStamp)) &&
            (identical(other.billedAmount, billedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.billedAmount, billedAmount)) &&
            (identical(other.metaData, metaData) ||
                const DeepCollectionEquality()
                    .equals(other.metaData, metaData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(transactionStamp) ^
      const DeepCollectionEquality().hash(billedAmount) ^
      const DeepCollectionEquality().hash(metaData) ^
      runtimeType.hashCode;
}

extension $PaidOrderRequestExtension on PaidOrderRequest {
  PaidOrderRequest copyWith(
      {String? orgId,
      String? orderId,
      String? paymentGateway,
      String? transactionId,
      int? transactionStamp,
      double? billedAmount,
      Object? metaData}) {
    return PaidOrderRequest(
        orgId: orgId ?? this.orgId,
        orderId: orderId ?? this.orderId,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        transactionId: transactionId ?? this.transactionId,
        transactionStamp: transactionStamp ?? this.transactionStamp,
        billedAmount: billedAmount ?? this.billedAmount,
        metaData: metaData ?? this.metaData);
  }

  PaidOrderRequest copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? orderId,
      Wrapped<String>? paymentGateway,
      Wrapped<String>? transactionId,
      Wrapped<int?>? transactionStamp,
      Wrapped<double>? billedAmount,
      Wrapped<Object?>? metaData}) {
    return PaidOrderRequest(
        orgId: (orgId != null ? orgId.value : this.orgId),
        orderId: (orderId != null ? orderId.value : this.orderId),
        paymentGateway: (paymentGateway != null
            ? paymentGateway.value
            : this.paymentGateway),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        transactionStamp: (transactionStamp != null
            ? transactionStamp.value
            : this.transactionStamp),
        billedAmount:
            (billedAmount != null ? billedAmount.value : this.billedAmount),
        metaData: (metaData != null ? metaData.value : this.metaData));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgPlanInfo {
  const OrgPlanInfo({
    required this.planId,
    required this.planType,
    required this.planFrequency,
    required this.deviceModelCount,
    required this.modelParametersCount,
    required this.devicesCount,
    required this.clientCount,
    required this.userCount,
    required this.dashboardCount,
    required this.dataPointsCount,
    required this.archivalYearsCount,
    required this.purchasedModels,
    required this.purchasedParameters,
    required this.purchasedDevices,
    required this.purchasedClients,
    required this.purchasedUsers,
    required this.purchasedDashboards,
    required this.purchasedDataPoints,
    required this.purchasedArchivals,
    this.totalDeviceModelCount,
    this.totalModelParametersCount,
    required this.totalDevicesCount,
    required this.totalClientCount,
    required this.totalUserCount,
    required this.totalDashboardCount,
    required this.totalArchivalYearsCount,
    required this.pooledDataPointsCount,
    this.canBuyDataPlan,
    this.canBuyArchivalPlan,
    this.canBuyClientPlan,
    this.canBrand,
    this.canWhiteLabel,
  });

  factory OrgPlanInfo.fromJson(Map<String, dynamic> json) =>
      _$OrgPlanInfoFromJson(json);

  static const toJsonFactory = _$OrgPlanInfoToJson;
  Map<String, dynamic> toJson() => _$OrgPlanInfoToJson(this);

  @JsonKey(name: 'planId', includeIfNull: false, defaultValue: '')
  final String planId;
  @JsonKey(name: 'planType', includeIfNull: false, defaultValue: '')
  final String planType;
  @JsonKey(name: 'planFrequency', includeIfNull: false, defaultValue: '')
  final String planFrequency;
  @JsonKey(name: 'deviceModelCount', includeIfNull: false)
  final int deviceModelCount;
  @JsonKey(name: 'modelParametersCount', includeIfNull: false)
  final int modelParametersCount;
  @JsonKey(name: 'devicesCount', includeIfNull: false)
  final int devicesCount;
  @JsonKey(name: 'clientCount', includeIfNull: false)
  final int clientCount;
  @JsonKey(name: 'userCount', includeIfNull: false)
  final int userCount;
  @JsonKey(name: 'dashboardCount', includeIfNull: false)
  final int dashboardCount;
  @JsonKey(name: 'dataPointsCount', includeIfNull: false)
  final int dataPointsCount;
  @JsonKey(name: 'archivalYearsCount', includeIfNull: false)
  final int archivalYearsCount;
  @JsonKey(name: 'purchasedModels', includeIfNull: false)
  final int purchasedModels;
  @JsonKey(name: 'purchasedParameters', includeIfNull: false)
  final int purchasedParameters;
  @JsonKey(name: 'purchasedDevices', includeIfNull: false)
  final int purchasedDevices;
  @JsonKey(name: 'purchasedClients', includeIfNull: false)
  final int purchasedClients;
  @JsonKey(name: 'purchasedUsers', includeIfNull: false)
  final int purchasedUsers;
  @JsonKey(name: 'purchasedDashboards', includeIfNull: false)
  final int purchasedDashboards;
  @JsonKey(name: 'purchasedDataPoints', includeIfNull: false)
  final int purchasedDataPoints;
  @JsonKey(name: 'purchasedArchivals', includeIfNull: false)
  final int purchasedArchivals;
  @JsonKey(name: 'totalDeviceModelCount', includeIfNull: false)
  final int? totalDeviceModelCount;
  @JsonKey(name: 'totalModelParametersCount', includeIfNull: false)
  final int? totalModelParametersCount;
  @JsonKey(name: 'totalDevicesCount', includeIfNull: false)
  final int totalDevicesCount;
  @JsonKey(name: 'totalClientCount', includeIfNull: false)
  final int totalClientCount;
  @JsonKey(name: 'totalUserCount', includeIfNull: false)
  final int totalUserCount;
  @JsonKey(name: 'totalDashboardCount', includeIfNull: false)
  final int totalDashboardCount;
  @JsonKey(name: 'totalArchivalYearsCount', includeIfNull: false)
  final int totalArchivalYearsCount;
  @JsonKey(name: 'pooledDataPointsCount', includeIfNull: false)
  final int pooledDataPointsCount;
  @JsonKey(name: 'canBuyDataPlan', includeIfNull: false)
  final bool? canBuyDataPlan;
  @JsonKey(name: 'canBuyArchivalPlan', includeIfNull: false)
  final bool? canBuyArchivalPlan;
  @JsonKey(name: 'canBuyClientPlan', includeIfNull: false)
  final bool? canBuyClientPlan;
  @JsonKey(name: 'canBrand', includeIfNull: false)
  final bool? canBrand;
  @JsonKey(name: 'canWhiteLabel', includeIfNull: false)
  final bool? canWhiteLabel;
  static const fromJsonFactory = _$OrgPlanInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgPlanInfo &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.planType, planType) ||
                const DeepCollectionEquality()
                    .equals(other.planType, planType)) &&
            (identical(other.planFrequency, planFrequency) ||
                const DeepCollectionEquality()
                    .equals(other.planFrequency, planFrequency)) &&
            (identical(other.deviceModelCount, deviceModelCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModelCount, deviceModelCount)) &&
            (identical(other.modelParametersCount, modelParametersCount) ||
                const DeepCollectionEquality().equals(
                    other.modelParametersCount, modelParametersCount)) &&
            (identical(other.devicesCount, devicesCount) ||
                const DeepCollectionEquality()
                    .equals(other.devicesCount, devicesCount)) &&
            (identical(other.clientCount, clientCount) ||
                const DeepCollectionEquality()
                    .equals(other.clientCount, clientCount)) &&
            (identical(other.userCount, userCount) ||
                const DeepCollectionEquality()
                    .equals(other.userCount, userCount)) &&
            (identical(other.dashboardCount, dashboardCount) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardCount, dashboardCount)) &&
            (identical(other.dataPointsCount, dataPointsCount) ||
                const DeepCollectionEquality()
                    .equals(other.dataPointsCount, dataPointsCount)) &&
            (identical(other.archivalYearsCount, archivalYearsCount) ||
                const DeepCollectionEquality()
                    .equals(other.archivalYearsCount, archivalYearsCount)) &&
            (identical(other.purchasedModels, purchasedModels) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedModels, purchasedModels)) &&
            (identical(other.purchasedParameters, purchasedParameters) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedParameters, purchasedParameters)) &&
            (identical(other.purchasedDevices, purchasedDevices) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedDevices, purchasedDevices)) &&
            (identical(other.purchasedClients, purchasedClients) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedClients, purchasedClients)) &&
            (identical(other.purchasedUsers, purchasedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedUsers, purchasedUsers)) &&
            (identical(other.purchasedDashboards, purchasedDashboards) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedDashboards, purchasedDashboards)) &&
            (identical(other.purchasedDataPoints, purchasedDataPoints) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedDataPoints, purchasedDataPoints)) &&
            (identical(other.purchasedArchivals, purchasedArchivals) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedArchivals, purchasedArchivals)) &&
            (identical(other.totalDeviceModelCount, totalDeviceModelCount) ||
                const DeepCollectionEquality().equals(
                    other.totalDeviceModelCount, totalDeviceModelCount)) &&
            (identical(other.totalModelParametersCount, totalModelParametersCount) ||
                const DeepCollectionEquality().equals(
                    other.totalModelParametersCount,
                    totalModelParametersCount)) &&
            (identical(other.totalDevicesCount, totalDevicesCount) || const DeepCollectionEquality().equals(other.totalDevicesCount, totalDevicesCount)) &&
            (identical(other.totalClientCount, totalClientCount) || const DeepCollectionEquality().equals(other.totalClientCount, totalClientCount)) &&
            (identical(other.totalUserCount, totalUserCount) || const DeepCollectionEquality().equals(other.totalUserCount, totalUserCount)) &&
            (identical(other.totalDashboardCount, totalDashboardCount) || const DeepCollectionEquality().equals(other.totalDashboardCount, totalDashboardCount)) &&
            (identical(other.totalArchivalYearsCount, totalArchivalYearsCount) || const DeepCollectionEquality().equals(other.totalArchivalYearsCount, totalArchivalYearsCount)) &&
            (identical(other.pooledDataPointsCount, pooledDataPointsCount) || const DeepCollectionEquality().equals(other.pooledDataPointsCount, pooledDataPointsCount)) &&
            (identical(other.canBuyDataPlan, canBuyDataPlan) || const DeepCollectionEquality().equals(other.canBuyDataPlan, canBuyDataPlan)) &&
            (identical(other.canBuyArchivalPlan, canBuyArchivalPlan) || const DeepCollectionEquality().equals(other.canBuyArchivalPlan, canBuyArchivalPlan)) &&
            (identical(other.canBuyClientPlan, canBuyClientPlan) || const DeepCollectionEquality().equals(other.canBuyClientPlan, canBuyClientPlan)) &&
            (identical(other.canBrand, canBrand) || const DeepCollectionEquality().equals(other.canBrand, canBrand)) &&
            (identical(other.canWhiteLabel, canWhiteLabel) || const DeepCollectionEquality().equals(other.canWhiteLabel, canWhiteLabel)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(planType) ^
      const DeepCollectionEquality().hash(planFrequency) ^
      const DeepCollectionEquality().hash(deviceModelCount) ^
      const DeepCollectionEquality().hash(modelParametersCount) ^
      const DeepCollectionEquality().hash(devicesCount) ^
      const DeepCollectionEquality().hash(clientCount) ^
      const DeepCollectionEquality().hash(userCount) ^
      const DeepCollectionEquality().hash(dashboardCount) ^
      const DeepCollectionEquality().hash(dataPointsCount) ^
      const DeepCollectionEquality().hash(archivalYearsCount) ^
      const DeepCollectionEquality().hash(purchasedModels) ^
      const DeepCollectionEquality().hash(purchasedParameters) ^
      const DeepCollectionEquality().hash(purchasedDevices) ^
      const DeepCollectionEquality().hash(purchasedClients) ^
      const DeepCollectionEquality().hash(purchasedUsers) ^
      const DeepCollectionEquality().hash(purchasedDashboards) ^
      const DeepCollectionEquality().hash(purchasedDataPoints) ^
      const DeepCollectionEquality().hash(purchasedArchivals) ^
      const DeepCollectionEquality().hash(totalDeviceModelCount) ^
      const DeepCollectionEquality().hash(totalModelParametersCount) ^
      const DeepCollectionEquality().hash(totalDevicesCount) ^
      const DeepCollectionEquality().hash(totalClientCount) ^
      const DeepCollectionEquality().hash(totalUserCount) ^
      const DeepCollectionEquality().hash(totalDashboardCount) ^
      const DeepCollectionEquality().hash(totalArchivalYearsCount) ^
      const DeepCollectionEquality().hash(pooledDataPointsCount) ^
      const DeepCollectionEquality().hash(canBuyDataPlan) ^
      const DeepCollectionEquality().hash(canBuyArchivalPlan) ^
      const DeepCollectionEquality().hash(canBuyClientPlan) ^
      const DeepCollectionEquality().hash(canBrand) ^
      const DeepCollectionEquality().hash(canWhiteLabel) ^
      runtimeType.hashCode;
}

extension $OrgPlanInfoExtension on OrgPlanInfo {
  OrgPlanInfo copyWith(
      {String? planId,
      String? planType,
      String? planFrequency,
      int? deviceModelCount,
      int? modelParametersCount,
      int? devicesCount,
      int? clientCount,
      int? userCount,
      int? dashboardCount,
      int? dataPointsCount,
      int? archivalYearsCount,
      int? purchasedModels,
      int? purchasedParameters,
      int? purchasedDevices,
      int? purchasedClients,
      int? purchasedUsers,
      int? purchasedDashboards,
      int? purchasedDataPoints,
      int? purchasedArchivals,
      int? totalDeviceModelCount,
      int? totalModelParametersCount,
      int? totalDevicesCount,
      int? totalClientCount,
      int? totalUserCount,
      int? totalDashboardCount,
      int? totalArchivalYearsCount,
      int? pooledDataPointsCount,
      bool? canBuyDataPlan,
      bool? canBuyArchivalPlan,
      bool? canBuyClientPlan,
      bool? canBrand,
      bool? canWhiteLabel}) {
    return OrgPlanInfo(
        planId: planId ?? this.planId,
        planType: planType ?? this.planType,
        planFrequency: planFrequency ?? this.planFrequency,
        deviceModelCount: deviceModelCount ?? this.deviceModelCount,
        modelParametersCount: modelParametersCount ?? this.modelParametersCount,
        devicesCount: devicesCount ?? this.devicesCount,
        clientCount: clientCount ?? this.clientCount,
        userCount: userCount ?? this.userCount,
        dashboardCount: dashboardCount ?? this.dashboardCount,
        dataPointsCount: dataPointsCount ?? this.dataPointsCount,
        archivalYearsCount: archivalYearsCount ?? this.archivalYearsCount,
        purchasedModels: purchasedModels ?? this.purchasedModels,
        purchasedParameters: purchasedParameters ?? this.purchasedParameters,
        purchasedDevices: purchasedDevices ?? this.purchasedDevices,
        purchasedClients: purchasedClients ?? this.purchasedClients,
        purchasedUsers: purchasedUsers ?? this.purchasedUsers,
        purchasedDashboards: purchasedDashboards ?? this.purchasedDashboards,
        purchasedDataPoints: purchasedDataPoints ?? this.purchasedDataPoints,
        purchasedArchivals: purchasedArchivals ?? this.purchasedArchivals,
        totalDeviceModelCount:
            totalDeviceModelCount ?? this.totalDeviceModelCount,
        totalModelParametersCount:
            totalModelParametersCount ?? this.totalModelParametersCount,
        totalDevicesCount: totalDevicesCount ?? this.totalDevicesCount,
        totalClientCount: totalClientCount ?? this.totalClientCount,
        totalUserCount: totalUserCount ?? this.totalUserCount,
        totalDashboardCount: totalDashboardCount ?? this.totalDashboardCount,
        totalArchivalYearsCount:
            totalArchivalYearsCount ?? this.totalArchivalYearsCount,
        pooledDataPointsCount:
            pooledDataPointsCount ?? this.pooledDataPointsCount,
        canBuyDataPlan: canBuyDataPlan ?? this.canBuyDataPlan,
        canBuyArchivalPlan: canBuyArchivalPlan ?? this.canBuyArchivalPlan,
        canBuyClientPlan: canBuyClientPlan ?? this.canBuyClientPlan,
        canBrand: canBrand ?? this.canBrand,
        canWhiteLabel: canWhiteLabel ?? this.canWhiteLabel);
  }

  OrgPlanInfo copyWithWrapped(
      {Wrapped<String>? planId,
      Wrapped<String>? planType,
      Wrapped<String>? planFrequency,
      Wrapped<int>? deviceModelCount,
      Wrapped<int>? modelParametersCount,
      Wrapped<int>? devicesCount,
      Wrapped<int>? clientCount,
      Wrapped<int>? userCount,
      Wrapped<int>? dashboardCount,
      Wrapped<int>? dataPointsCount,
      Wrapped<int>? archivalYearsCount,
      Wrapped<int>? purchasedModels,
      Wrapped<int>? purchasedParameters,
      Wrapped<int>? purchasedDevices,
      Wrapped<int>? purchasedClients,
      Wrapped<int>? purchasedUsers,
      Wrapped<int>? purchasedDashboards,
      Wrapped<int>? purchasedDataPoints,
      Wrapped<int>? purchasedArchivals,
      Wrapped<int?>? totalDeviceModelCount,
      Wrapped<int?>? totalModelParametersCount,
      Wrapped<int>? totalDevicesCount,
      Wrapped<int>? totalClientCount,
      Wrapped<int>? totalUserCount,
      Wrapped<int>? totalDashboardCount,
      Wrapped<int>? totalArchivalYearsCount,
      Wrapped<int>? pooledDataPointsCount,
      Wrapped<bool?>? canBuyDataPlan,
      Wrapped<bool?>? canBuyArchivalPlan,
      Wrapped<bool?>? canBuyClientPlan,
      Wrapped<bool?>? canBrand,
      Wrapped<bool?>? canWhiteLabel}) {
    return OrgPlanInfo(
        planId: (planId != null ? planId.value : this.planId),
        planType: (planType != null ? planType.value : this.planType),
        planFrequency:
            (planFrequency != null ? planFrequency.value : this.planFrequency),
        deviceModelCount: (deviceModelCount != null
            ? deviceModelCount.value
            : this.deviceModelCount),
        modelParametersCount: (modelParametersCount != null
            ? modelParametersCount.value
            : this.modelParametersCount),
        devicesCount:
            (devicesCount != null ? devicesCount.value : this.devicesCount),
        clientCount:
            (clientCount != null ? clientCount.value : this.clientCount),
        userCount: (userCount != null ? userCount.value : this.userCount),
        dashboardCount: (dashboardCount != null
            ? dashboardCount.value
            : this.dashboardCount),
        dataPointsCount: (dataPointsCount != null
            ? dataPointsCount.value
            : this.dataPointsCount),
        archivalYearsCount: (archivalYearsCount != null
            ? archivalYearsCount.value
            : this.archivalYearsCount),
        purchasedModels: (purchasedModels != null
            ? purchasedModels.value
            : this.purchasedModels),
        purchasedParameters: (purchasedParameters != null
            ? purchasedParameters.value
            : this.purchasedParameters),
        purchasedDevices: (purchasedDevices != null
            ? purchasedDevices.value
            : this.purchasedDevices),
        purchasedClients: (purchasedClients != null
            ? purchasedClients.value
            : this.purchasedClients),
        purchasedUsers: (purchasedUsers != null
            ? purchasedUsers.value
            : this.purchasedUsers),
        purchasedDashboards: (purchasedDashboards != null
            ? purchasedDashboards.value
            : this.purchasedDashboards),
        purchasedDataPoints: (purchasedDataPoints != null
            ? purchasedDataPoints.value
            : this.purchasedDataPoints),
        purchasedArchivals: (purchasedArchivals != null
            ? purchasedArchivals.value
            : this.purchasedArchivals),
        totalDeviceModelCount: (totalDeviceModelCount != null
            ? totalDeviceModelCount.value
            : this.totalDeviceModelCount),
        totalModelParametersCount: (totalModelParametersCount != null
            ? totalModelParametersCount.value
            : this.totalModelParametersCount),
        totalDevicesCount: (totalDevicesCount != null
            ? totalDevicesCount.value
            : this.totalDevicesCount),
        totalClientCount: (totalClientCount != null
            ? totalClientCount.value
            : this.totalClientCount),
        totalUserCount: (totalUserCount != null
            ? totalUserCount.value
            : this.totalUserCount),
        totalDashboardCount: (totalDashboardCount != null
            ? totalDashboardCount.value
            : this.totalDashboardCount),
        totalArchivalYearsCount: (totalArchivalYearsCount != null
            ? totalArchivalYearsCount.value
            : this.totalArchivalYearsCount),
        pooledDataPointsCount: (pooledDataPointsCount != null
            ? pooledDataPointsCount.value
            : this.pooledDataPointsCount),
        canBuyDataPlan: (canBuyDataPlan != null
            ? canBuyDataPlan.value
            : this.canBuyDataPlan),
        canBuyArchivalPlan: (canBuyArchivalPlan != null
            ? canBuyArchivalPlan.value
            : this.canBuyArchivalPlan),
        canBuyClientPlan: (canBuyClientPlan != null
            ? canBuyClientPlan.value
            : this.canBuyClientPlan),
        canBrand: (canBrand != null ? canBrand.value : this.canBrand),
        canWhiteLabel:
            (canWhiteLabel != null ? canWhiteLabel.value : this.canWhiteLabel));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgPlanBase {
  const OrgPlanBase({
    required this.orgId,
    required this.currency,
    this.currencySumbol,
  });

  factory OrgPlanBase.fromJson(Map<String, dynamic> json) =>
      _$OrgPlanBaseFromJson(json);

  static const toJsonFactory = _$OrgPlanBaseToJson;
  Map<String, dynamic> toJson() => _$OrgPlanBaseToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'currencySumbol', includeIfNull: false, defaultValue: '')
  final String? currencySumbol;
  static const fromJsonFactory = _$OrgPlanBaseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgPlanBase &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencySumbol, currencySumbol) ||
                const DeepCollectionEquality()
                    .equals(other.currencySumbol, currencySumbol)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencySumbol) ^
      runtimeType.hashCode;
}

extension $OrgPlanBaseExtension on OrgPlanBase {
  OrgPlanBase copyWith(
      {String? orgId, String? currency, String? currencySumbol}) {
    return OrgPlanBase(
        orgId: orgId ?? this.orgId,
        currency: currency ?? this.currency,
        currencySumbol: currencySumbol ?? this.currencySumbol);
  }

  OrgPlanBase copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? currency,
      Wrapped<String?>? currencySumbol}) {
    return OrgPlanBase(
        orgId: (orgId != null ? orgId.value : this.orgId),
        currency: (currency != null ? currency.value : this.currency),
        currencySumbol: (currencySumbol != null
            ? currencySumbol.value
            : this.currencySumbol));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgPlan {
  const OrgPlan({
    required this.orgId,
    required this.planId,
    required this.planType,
    required this.planFrequency,
    required this.deviceModelCount,
    required this.modelParametersCount,
    required this.devicesCount,
    required this.clientCount,
    required this.userCount,
    required this.dashboardCount,
    required this.dataPointsCount,
    required this.archivalYearsCount,
    required this.purchasedModels,
    required this.purchasedParameters,
    required this.purchasedDevices,
    required this.purchasedClients,
    required this.purchasedUsers,
    required this.purchasedDashboards,
    required this.purchasedDataPoints,
    required this.purchasedArchivals,
    this.totalDeviceModelCount,
    this.totalModelParametersCount,
    required this.totalDevicesCount,
    required this.totalClientCount,
    required this.totalUserCount,
    required this.totalDashboardCount,
    required this.totalArchivalYearsCount,
    required this.pooledDataPointsCount,
    this.canBuyDataPlan,
    this.canBuyArchivalPlan,
    this.canBuyClientPlan,
    this.canBrand,
    this.canWhiteLabel,
    required this.currency,
    this.currencySumbol,
    required this.id,
    required this.rtype,
    required this.createdBy,
    required this.createdStamp,
    required this.updatedBy,
    required this.updatedStamp,
    required this.domainKey,
  });

  factory OrgPlan.fromJson(Map<String, dynamic> json) =>
      _$OrgPlanFromJson(json);

  static const toJsonFactory = _$OrgPlanToJson;
  Map<String, dynamic> toJson() => _$OrgPlanToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'planId', includeIfNull: false, defaultValue: '')
  final String planId;
  @JsonKey(name: 'planType', includeIfNull: false, defaultValue: '')
  final String planType;
  @JsonKey(name: 'planFrequency', includeIfNull: false, defaultValue: '')
  final String planFrequency;
  @JsonKey(name: 'deviceModelCount', includeIfNull: false)
  final int deviceModelCount;
  @JsonKey(name: 'modelParametersCount', includeIfNull: false)
  final int modelParametersCount;
  @JsonKey(name: 'devicesCount', includeIfNull: false)
  final int devicesCount;
  @JsonKey(name: 'clientCount', includeIfNull: false)
  final int clientCount;
  @JsonKey(name: 'userCount', includeIfNull: false)
  final int userCount;
  @JsonKey(name: 'dashboardCount', includeIfNull: false)
  final int dashboardCount;
  @JsonKey(name: 'dataPointsCount', includeIfNull: false)
  final int dataPointsCount;
  @JsonKey(name: 'archivalYearsCount', includeIfNull: false)
  final int archivalYearsCount;
  @JsonKey(name: 'purchasedModels', includeIfNull: false)
  final int purchasedModels;
  @JsonKey(name: 'purchasedParameters', includeIfNull: false)
  final int purchasedParameters;
  @JsonKey(name: 'purchasedDevices', includeIfNull: false)
  final int purchasedDevices;
  @JsonKey(name: 'purchasedClients', includeIfNull: false)
  final int purchasedClients;
  @JsonKey(name: 'purchasedUsers', includeIfNull: false)
  final int purchasedUsers;
  @JsonKey(name: 'purchasedDashboards', includeIfNull: false)
  final int purchasedDashboards;
  @JsonKey(name: 'purchasedDataPoints', includeIfNull: false)
  final int purchasedDataPoints;
  @JsonKey(name: 'purchasedArchivals', includeIfNull: false)
  final int purchasedArchivals;
  @JsonKey(name: 'totalDeviceModelCount', includeIfNull: false)
  final int? totalDeviceModelCount;
  @JsonKey(name: 'totalModelParametersCount', includeIfNull: false)
  final int? totalModelParametersCount;
  @JsonKey(name: 'totalDevicesCount', includeIfNull: false)
  final int totalDevicesCount;
  @JsonKey(name: 'totalClientCount', includeIfNull: false)
  final int totalClientCount;
  @JsonKey(name: 'totalUserCount', includeIfNull: false)
  final int totalUserCount;
  @JsonKey(name: 'totalDashboardCount', includeIfNull: false)
  final int totalDashboardCount;
  @JsonKey(name: 'totalArchivalYearsCount', includeIfNull: false)
  final int totalArchivalYearsCount;
  @JsonKey(name: 'pooledDataPointsCount', includeIfNull: false)
  final int pooledDataPointsCount;
  @JsonKey(name: 'canBuyDataPlan', includeIfNull: false)
  final bool? canBuyDataPlan;
  @JsonKey(name: 'canBuyArchivalPlan', includeIfNull: false)
  final bool? canBuyArchivalPlan;
  @JsonKey(name: 'canBuyClientPlan', includeIfNull: false)
  final bool? canBuyClientPlan;
  @JsonKey(name: 'canBrand', includeIfNull: false)
  final bool? canBrand;
  @JsonKey(name: 'canWhiteLabel', includeIfNull: false)
  final bool? canWhiteLabel;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'currencySumbol', includeIfNull: false, defaultValue: '')
  final String? currencySumbol;
  @JsonKey(name: 'id', includeIfNull: false, defaultValue: '')
  final String id;
  @JsonKey(name: 'rtype', includeIfNull: false, defaultValue: '')
  final String rtype;
  @JsonKey(name: 'createdBy', includeIfNull: false, defaultValue: '')
  final String createdBy;
  @JsonKey(name: 'createdStamp', includeIfNull: false)
  final int createdStamp;
  @JsonKey(name: 'updatedBy', includeIfNull: false, defaultValue: '')
  final String updatedBy;
  @JsonKey(name: 'updatedStamp', includeIfNull: false)
  final int updatedStamp;
  @JsonKey(name: 'domainKey', includeIfNull: false, defaultValue: '')
  final String domainKey;
  static const fromJsonFactory = _$OrgPlanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgPlan &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.planType, planType) ||
                const DeepCollectionEquality()
                    .equals(other.planType, planType)) &&
            (identical(other.planFrequency, planFrequency) ||
                const DeepCollectionEquality()
                    .equals(other.planFrequency, planFrequency)) &&
            (identical(other.deviceModelCount, deviceModelCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModelCount, deviceModelCount)) &&
            (identical(other.modelParametersCount, modelParametersCount) ||
                const DeepCollectionEquality().equals(
                    other.modelParametersCount, modelParametersCount)) &&
            (identical(other.devicesCount, devicesCount) ||
                const DeepCollectionEquality()
                    .equals(other.devicesCount, devicesCount)) &&
            (identical(other.clientCount, clientCount) ||
                const DeepCollectionEquality()
                    .equals(other.clientCount, clientCount)) &&
            (identical(other.userCount, userCount) ||
                const DeepCollectionEquality()
                    .equals(other.userCount, userCount)) &&
            (identical(other.dashboardCount, dashboardCount) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardCount, dashboardCount)) &&
            (identical(other.dataPointsCount, dataPointsCount) ||
                const DeepCollectionEquality()
                    .equals(other.dataPointsCount, dataPointsCount)) &&
            (identical(other.archivalYearsCount, archivalYearsCount) ||
                const DeepCollectionEquality()
                    .equals(other.archivalYearsCount, archivalYearsCount)) &&
            (identical(other.purchasedModels, purchasedModels) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedModels, purchasedModels)) &&
            (identical(other.purchasedParameters, purchasedParameters) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedParameters, purchasedParameters)) &&
            (identical(other.purchasedDevices, purchasedDevices) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedDevices, purchasedDevices)) &&
            (identical(other.purchasedClients, purchasedClients) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedClients, purchasedClients)) &&
            (identical(other.purchasedUsers, purchasedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedUsers, purchasedUsers)) &&
            (identical(other.purchasedDashboards, purchasedDashboards) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedDashboards, purchasedDashboards)) &&
            (identical(other.purchasedDataPoints, purchasedDataPoints) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedDataPoints, purchasedDataPoints)) &&
            (identical(other.purchasedArchivals, purchasedArchivals) ||
                const DeepCollectionEquality()
                    .equals(other.purchasedArchivals, purchasedArchivals)) &&
            (identical(other.totalDeviceModelCount, totalDeviceModelCount) ||
                const DeepCollectionEquality().equals(
                    other.totalDeviceModelCount, totalDeviceModelCount)) &&
            (identical(other.totalModelParametersCount, totalModelParametersCount) ||
                const DeepCollectionEquality().equals(
                    other.totalModelParametersCount, totalModelParametersCount)) &&
            (identical(other.totalDevicesCount, totalDevicesCount) || const DeepCollectionEquality().equals(other.totalDevicesCount, totalDevicesCount)) &&
            (identical(other.totalClientCount, totalClientCount) || const DeepCollectionEquality().equals(other.totalClientCount, totalClientCount)) &&
            (identical(other.totalUserCount, totalUserCount) || const DeepCollectionEquality().equals(other.totalUserCount, totalUserCount)) &&
            (identical(other.totalDashboardCount, totalDashboardCount) || const DeepCollectionEquality().equals(other.totalDashboardCount, totalDashboardCount)) &&
            (identical(other.totalArchivalYearsCount, totalArchivalYearsCount) || const DeepCollectionEquality().equals(other.totalArchivalYearsCount, totalArchivalYearsCount)) &&
            (identical(other.pooledDataPointsCount, pooledDataPointsCount) || const DeepCollectionEquality().equals(other.pooledDataPointsCount, pooledDataPointsCount)) &&
            (identical(other.canBuyDataPlan, canBuyDataPlan) || const DeepCollectionEquality().equals(other.canBuyDataPlan, canBuyDataPlan)) &&
            (identical(other.canBuyArchivalPlan, canBuyArchivalPlan) || const DeepCollectionEquality().equals(other.canBuyArchivalPlan, canBuyArchivalPlan)) &&
            (identical(other.canBuyClientPlan, canBuyClientPlan) || const DeepCollectionEquality().equals(other.canBuyClientPlan, canBuyClientPlan)) &&
            (identical(other.canBrand, canBrand) || const DeepCollectionEquality().equals(other.canBrand, canBrand)) &&
            (identical(other.canWhiteLabel, canWhiteLabel) || const DeepCollectionEquality().equals(other.canWhiteLabel, canWhiteLabel)) &&
            (identical(other.currency, currency) || const DeepCollectionEquality().equals(other.currency, currency)) &&
            (identical(other.currencySumbol, currencySumbol) || const DeepCollectionEquality().equals(other.currencySumbol, currencySumbol)) &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rtype, rtype) || const DeepCollectionEquality().equals(other.rtype, rtype)) &&
            (identical(other.createdBy, createdBy) || const DeepCollectionEquality().equals(other.createdBy, createdBy)) &&
            (identical(other.createdStamp, createdStamp) || const DeepCollectionEquality().equals(other.createdStamp, createdStamp)) &&
            (identical(other.updatedBy, updatedBy) || const DeepCollectionEquality().equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedStamp, updatedStamp) || const DeepCollectionEquality().equals(other.updatedStamp, updatedStamp)) &&
            (identical(other.domainKey, domainKey) || const DeepCollectionEquality().equals(other.domainKey, domainKey)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(planType) ^
      const DeepCollectionEquality().hash(planFrequency) ^
      const DeepCollectionEquality().hash(deviceModelCount) ^
      const DeepCollectionEquality().hash(modelParametersCount) ^
      const DeepCollectionEquality().hash(devicesCount) ^
      const DeepCollectionEquality().hash(clientCount) ^
      const DeepCollectionEquality().hash(userCount) ^
      const DeepCollectionEquality().hash(dashboardCount) ^
      const DeepCollectionEquality().hash(dataPointsCount) ^
      const DeepCollectionEquality().hash(archivalYearsCount) ^
      const DeepCollectionEquality().hash(purchasedModels) ^
      const DeepCollectionEquality().hash(purchasedParameters) ^
      const DeepCollectionEquality().hash(purchasedDevices) ^
      const DeepCollectionEquality().hash(purchasedClients) ^
      const DeepCollectionEquality().hash(purchasedUsers) ^
      const DeepCollectionEquality().hash(purchasedDashboards) ^
      const DeepCollectionEquality().hash(purchasedDataPoints) ^
      const DeepCollectionEquality().hash(purchasedArchivals) ^
      const DeepCollectionEquality().hash(totalDeviceModelCount) ^
      const DeepCollectionEquality().hash(totalModelParametersCount) ^
      const DeepCollectionEquality().hash(totalDevicesCount) ^
      const DeepCollectionEquality().hash(totalClientCount) ^
      const DeepCollectionEquality().hash(totalUserCount) ^
      const DeepCollectionEquality().hash(totalDashboardCount) ^
      const DeepCollectionEquality().hash(totalArchivalYearsCount) ^
      const DeepCollectionEquality().hash(pooledDataPointsCount) ^
      const DeepCollectionEquality().hash(canBuyDataPlan) ^
      const DeepCollectionEquality().hash(canBuyArchivalPlan) ^
      const DeepCollectionEquality().hash(canBuyClientPlan) ^
      const DeepCollectionEquality().hash(canBrand) ^
      const DeepCollectionEquality().hash(canWhiteLabel) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencySumbol) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rtype) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdStamp) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedStamp) ^
      const DeepCollectionEquality().hash(domainKey) ^
      runtimeType.hashCode;
}

extension $OrgPlanExtension on OrgPlan {
  OrgPlan copyWith(
      {String? orgId,
      String? planId,
      String? planType,
      String? planFrequency,
      int? deviceModelCount,
      int? modelParametersCount,
      int? devicesCount,
      int? clientCount,
      int? userCount,
      int? dashboardCount,
      int? dataPointsCount,
      int? archivalYearsCount,
      int? purchasedModels,
      int? purchasedParameters,
      int? purchasedDevices,
      int? purchasedClients,
      int? purchasedUsers,
      int? purchasedDashboards,
      int? purchasedDataPoints,
      int? purchasedArchivals,
      int? totalDeviceModelCount,
      int? totalModelParametersCount,
      int? totalDevicesCount,
      int? totalClientCount,
      int? totalUserCount,
      int? totalDashboardCount,
      int? totalArchivalYearsCount,
      int? pooledDataPointsCount,
      bool? canBuyDataPlan,
      bool? canBuyArchivalPlan,
      bool? canBuyClientPlan,
      bool? canBrand,
      bool? canWhiteLabel,
      String? currency,
      String? currencySumbol,
      String? id,
      String? rtype,
      String? createdBy,
      int? createdStamp,
      String? updatedBy,
      int? updatedStamp,
      String? domainKey}) {
    return OrgPlan(
        orgId: orgId ?? this.orgId,
        planId: planId ?? this.planId,
        planType: planType ?? this.planType,
        planFrequency: planFrequency ?? this.planFrequency,
        deviceModelCount: deviceModelCount ?? this.deviceModelCount,
        modelParametersCount: modelParametersCount ?? this.modelParametersCount,
        devicesCount: devicesCount ?? this.devicesCount,
        clientCount: clientCount ?? this.clientCount,
        userCount: userCount ?? this.userCount,
        dashboardCount: dashboardCount ?? this.dashboardCount,
        dataPointsCount: dataPointsCount ?? this.dataPointsCount,
        archivalYearsCount: archivalYearsCount ?? this.archivalYearsCount,
        purchasedModels: purchasedModels ?? this.purchasedModels,
        purchasedParameters: purchasedParameters ?? this.purchasedParameters,
        purchasedDevices: purchasedDevices ?? this.purchasedDevices,
        purchasedClients: purchasedClients ?? this.purchasedClients,
        purchasedUsers: purchasedUsers ?? this.purchasedUsers,
        purchasedDashboards: purchasedDashboards ?? this.purchasedDashboards,
        purchasedDataPoints: purchasedDataPoints ?? this.purchasedDataPoints,
        purchasedArchivals: purchasedArchivals ?? this.purchasedArchivals,
        totalDeviceModelCount:
            totalDeviceModelCount ?? this.totalDeviceModelCount,
        totalModelParametersCount:
            totalModelParametersCount ?? this.totalModelParametersCount,
        totalDevicesCount: totalDevicesCount ?? this.totalDevicesCount,
        totalClientCount: totalClientCount ?? this.totalClientCount,
        totalUserCount: totalUserCount ?? this.totalUserCount,
        totalDashboardCount: totalDashboardCount ?? this.totalDashboardCount,
        totalArchivalYearsCount:
            totalArchivalYearsCount ?? this.totalArchivalYearsCount,
        pooledDataPointsCount:
            pooledDataPointsCount ?? this.pooledDataPointsCount,
        canBuyDataPlan: canBuyDataPlan ?? this.canBuyDataPlan,
        canBuyArchivalPlan: canBuyArchivalPlan ?? this.canBuyArchivalPlan,
        canBuyClientPlan: canBuyClientPlan ?? this.canBuyClientPlan,
        canBrand: canBrand ?? this.canBrand,
        canWhiteLabel: canWhiteLabel ?? this.canWhiteLabel,
        currency: currency ?? this.currency,
        currencySumbol: currencySumbol ?? this.currencySumbol,
        id: id ?? this.id,
        rtype: rtype ?? this.rtype,
        createdBy: createdBy ?? this.createdBy,
        createdStamp: createdStamp ?? this.createdStamp,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedStamp: updatedStamp ?? this.updatedStamp,
        domainKey: domainKey ?? this.domainKey);
  }

  OrgPlan copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? planId,
      Wrapped<String>? planType,
      Wrapped<String>? planFrequency,
      Wrapped<int>? deviceModelCount,
      Wrapped<int>? modelParametersCount,
      Wrapped<int>? devicesCount,
      Wrapped<int>? clientCount,
      Wrapped<int>? userCount,
      Wrapped<int>? dashboardCount,
      Wrapped<int>? dataPointsCount,
      Wrapped<int>? archivalYearsCount,
      Wrapped<int>? purchasedModels,
      Wrapped<int>? purchasedParameters,
      Wrapped<int>? purchasedDevices,
      Wrapped<int>? purchasedClients,
      Wrapped<int>? purchasedUsers,
      Wrapped<int>? purchasedDashboards,
      Wrapped<int>? purchasedDataPoints,
      Wrapped<int>? purchasedArchivals,
      Wrapped<int?>? totalDeviceModelCount,
      Wrapped<int?>? totalModelParametersCount,
      Wrapped<int>? totalDevicesCount,
      Wrapped<int>? totalClientCount,
      Wrapped<int>? totalUserCount,
      Wrapped<int>? totalDashboardCount,
      Wrapped<int>? totalArchivalYearsCount,
      Wrapped<int>? pooledDataPointsCount,
      Wrapped<bool?>? canBuyDataPlan,
      Wrapped<bool?>? canBuyArchivalPlan,
      Wrapped<bool?>? canBuyClientPlan,
      Wrapped<bool?>? canBrand,
      Wrapped<bool?>? canWhiteLabel,
      Wrapped<String>? currency,
      Wrapped<String?>? currencySumbol,
      Wrapped<String>? id,
      Wrapped<String>? rtype,
      Wrapped<String>? createdBy,
      Wrapped<int>? createdStamp,
      Wrapped<String>? updatedBy,
      Wrapped<int>? updatedStamp,
      Wrapped<String>? domainKey}) {
    return OrgPlan(
        orgId: (orgId != null ? orgId.value : this.orgId),
        planId: (planId != null ? planId.value : this.planId),
        planType: (planType != null ? planType.value : this.planType),
        planFrequency:
            (planFrequency != null ? planFrequency.value : this.planFrequency),
        deviceModelCount: (deviceModelCount != null
            ? deviceModelCount.value
            : this.deviceModelCount),
        modelParametersCount: (modelParametersCount != null
            ? modelParametersCount.value
            : this.modelParametersCount),
        devicesCount:
            (devicesCount != null ? devicesCount.value : this.devicesCount),
        clientCount:
            (clientCount != null ? clientCount.value : this.clientCount),
        userCount: (userCount != null ? userCount.value : this.userCount),
        dashboardCount: (dashboardCount != null
            ? dashboardCount.value
            : this.dashboardCount),
        dataPointsCount: (dataPointsCount != null
            ? dataPointsCount.value
            : this.dataPointsCount),
        archivalYearsCount: (archivalYearsCount != null
            ? archivalYearsCount.value
            : this.archivalYearsCount),
        purchasedModels: (purchasedModels != null
            ? purchasedModels.value
            : this.purchasedModels),
        purchasedParameters: (purchasedParameters != null
            ? purchasedParameters.value
            : this.purchasedParameters),
        purchasedDevices: (purchasedDevices != null
            ? purchasedDevices.value
            : this.purchasedDevices),
        purchasedClients: (purchasedClients != null
            ? purchasedClients.value
            : this.purchasedClients),
        purchasedUsers: (purchasedUsers != null
            ? purchasedUsers.value
            : this.purchasedUsers),
        purchasedDashboards: (purchasedDashboards != null
            ? purchasedDashboards.value
            : this.purchasedDashboards),
        purchasedDataPoints: (purchasedDataPoints != null
            ? purchasedDataPoints.value
            : this.purchasedDataPoints),
        purchasedArchivals: (purchasedArchivals != null
            ? purchasedArchivals.value
            : this.purchasedArchivals),
        totalDeviceModelCount: (totalDeviceModelCount != null
            ? totalDeviceModelCount.value
            : this.totalDeviceModelCount),
        totalModelParametersCount: (totalModelParametersCount != null
            ? totalModelParametersCount.value
            : this.totalModelParametersCount),
        totalDevicesCount: (totalDevicesCount != null
            ? totalDevicesCount.value
            : this.totalDevicesCount),
        totalClientCount: (totalClientCount != null
            ? totalClientCount.value
            : this.totalClientCount),
        totalUserCount: (totalUserCount != null
            ? totalUserCount.value
            : this.totalUserCount),
        totalDashboardCount: (totalDashboardCount != null
            ? totalDashboardCount.value
            : this.totalDashboardCount),
        totalArchivalYearsCount: (totalArchivalYearsCount != null
            ? totalArchivalYearsCount.value
            : this.totalArchivalYearsCount),
        pooledDataPointsCount: (pooledDataPointsCount != null
            ? pooledDataPointsCount.value
            : this.pooledDataPointsCount),
        canBuyDataPlan: (canBuyDataPlan != null
            ? canBuyDataPlan.value
            : this.canBuyDataPlan),
        canBuyArchivalPlan: (canBuyArchivalPlan != null
            ? canBuyArchivalPlan.value
            : this.canBuyArchivalPlan),
        canBuyClientPlan: (canBuyClientPlan != null
            ? canBuyClientPlan.value
            : this.canBuyClientPlan),
        canBrand: (canBrand != null ? canBrand.value : this.canBrand),
        canWhiteLabel:
            (canWhiteLabel != null ? canWhiteLabel.value : this.canWhiteLabel),
        currency: (currency != null ? currency.value : this.currency),
        currencySumbol: (currencySumbol != null
            ? currencySumbol.value
            : this.currencySumbol),
        id: (id != null ? id.value : this.id),
        rtype: (rtype != null ? rtype.value : this.rtype),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdStamp:
            (createdStamp != null ? createdStamp.value : this.createdStamp),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedStamp:
            (updatedStamp != null ? updatedStamp.value : this.updatedStamp),
        domainKey: (domainKey != null ? domainKey.value : this.domainKey));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgPlanEntity {
  const OrgPlanEntity({
    this.entity,
  });

  factory OrgPlanEntity.fromJson(Map<String, dynamic> json) =>
      _$OrgPlanEntityFromJson(json);

  static const toJsonFactory = _$OrgPlanEntityToJson;
  Map<String, dynamic> toJson() => _$OrgPlanEntityToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final OrgPlan? entity;
  static const fromJsonFactory = _$OrgPlanEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgPlanEntity &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^ runtimeType.hashCode;
}

extension $OrgPlanEntityExtension on OrgPlanEntity {
  OrgPlanEntity copyWith({OrgPlan? entity}) {
    return OrgPlanEntity(entity: entity ?? this.entity);
  }

  OrgPlanEntity copyWithWrapped({Wrapped<OrgPlan?>? entity}) {
    return OrgPlanEntity(entity: (entity != null ? entity.value : this.entity));
  }
}

@JsonSerializable(explicitToJson: true)
class OrgPlanEntityRes {
  const OrgPlanEntityRes({
    this.entity,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory OrgPlanEntityRes.fromJson(Map<String, dynamic> json) =>
      _$OrgPlanEntityResFromJson(json);

  static const toJsonFactory = _$OrgPlanEntityResToJson;
  Map<String, dynamic> toJson() => _$OrgPlanEntityResToJson(this);

  @JsonKey(name: 'entity', includeIfNull: false)
  final OrgPlan? entity;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$OrgPlanEntityResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrgPlanEntityRes &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $OrgPlanEntityResExtension on OrgPlanEntityRes {
  OrgPlanEntityRes copyWith(
      {OrgPlan? entity,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return OrgPlanEntityRes(
        entity: entity ?? this.entity,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  OrgPlanEntityRes copyWithWrapped(
      {Wrapped<OrgPlan?>? entity,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return OrgPlanEntityRes(
        entity: (entity != null ? entity.value : this.entity),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

@JsonSerializable(explicitToJson: true)
class StripePaymentSecretArgs {
  const StripePaymentSecretArgs({
    required this.orgId,
    required this.orderId,
    required this.currency,
  });

  factory StripePaymentSecretArgs.fromJson(Map<String, dynamic> json) =>
      _$StripePaymentSecretArgsFromJson(json);

  static const toJsonFactory = _$StripePaymentSecretArgsToJson;
  Map<String, dynamic> toJson() => _$StripePaymentSecretArgsToJson(this);

  @JsonKey(name: 'orgId', includeIfNull: false, defaultValue: '')
  final String orgId;
  @JsonKey(name: 'orderId', includeIfNull: false, defaultValue: '')
  final String orderId;
  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  static const fromJsonFactory = _$StripePaymentSecretArgsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StripePaymentSecretArgs &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $StripePaymentSecretArgsExtension on StripePaymentSecretArgs {
  StripePaymentSecretArgs copyWith(
      {String? orgId, String? orderId, String? currency}) {
    return StripePaymentSecretArgs(
        orgId: orgId ?? this.orgId,
        orderId: orderId ?? this.orderId,
        currency: currency ?? this.currency);
  }

  StripePaymentSecretArgs copyWithWrapped(
      {Wrapped<String>? orgId,
      Wrapped<String>? orderId,
      Wrapped<String>? currency}) {
    return StripePaymentSecretArgs(
        orgId: (orgId != null ? orgId.value : this.orgId),
        orderId: (orderId != null ? orderId.value : this.orderId),
        currency: (currency != null ? currency.value : this.currency));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanCurrency {
  const PlanCurrency({
    required this.currency,
    this.symbol,
  });

  factory PlanCurrency.fromJson(Map<String, dynamic> json) =>
      _$PlanCurrencyFromJson(json);

  static const toJsonFactory = _$PlanCurrencyToJson;
  Map<String, dynamic> toJson() => _$PlanCurrencyToJson(this);

  @JsonKey(name: 'currency', includeIfNull: false, defaultValue: '')
  final String currency;
  @JsonKey(name: 'symbol', includeIfNull: false, defaultValue: '')
  final String? symbol;
  static const fromJsonFactory = _$PlanCurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanCurrency &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(symbol) ^
      runtimeType.hashCode;
}

extension $PlanCurrencyExtension on PlanCurrency {
  PlanCurrency copyWith({String? currency, String? symbol}) {
    return PlanCurrency(
        currency: currency ?? this.currency, symbol: symbol ?? this.symbol);
  }

  PlanCurrency copyWithWrapped(
      {Wrapped<String>? currency, Wrapped<String?>? symbol}) {
    return PlanCurrency(
        currency: (currency != null ? currency.value : this.currency),
        symbol: (symbol != null ? symbol.value : this.symbol));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanCurrencyList {
  const PlanCurrencyList({
    required this.currencies,
  });

  factory PlanCurrencyList.fromJson(Map<String, dynamic> json) =>
      _$PlanCurrencyListFromJson(json);

  static const toJsonFactory = _$PlanCurrencyListToJson;
  Map<String, dynamic> toJson() => _$PlanCurrencyListToJson(this);

  @JsonKey(
      name: 'currencies', includeIfNull: false, defaultValue: <PlanCurrency>[])
  final List<PlanCurrency> currencies;
  static const fromJsonFactory = _$PlanCurrencyListFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanCurrencyList &&
            (identical(other.currencies, currencies) ||
                const DeepCollectionEquality()
                    .equals(other.currencies, currencies)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currencies) ^ runtimeType.hashCode;
}

extension $PlanCurrencyListExtension on PlanCurrencyList {
  PlanCurrencyList copyWith({List<PlanCurrency>? currencies}) {
    return PlanCurrencyList(currencies: currencies ?? this.currencies);
  }

  PlanCurrencyList copyWithWrapped({Wrapped<List<PlanCurrency>>? currencies}) {
    return PlanCurrencyList(
        currencies: (currencies != null ? currencies.value : this.currencies));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanCurrencyListRes {
  const PlanCurrencyListRes({
    required this.currencies,
    required this.ok,
    this.msg,
    this.trace,
    this.errorCode,
  });

  factory PlanCurrencyListRes.fromJson(Map<String, dynamic> json) =>
      _$PlanCurrencyListResFromJson(json);

  static const toJsonFactory = _$PlanCurrencyListResToJson;
  Map<String, dynamic> toJson() => _$PlanCurrencyListResToJson(this);

  @JsonKey(
      name: 'currencies', includeIfNull: false, defaultValue: <PlanCurrency>[])
  final List<PlanCurrency> currencies;
  @JsonKey(name: 'ok', includeIfNull: false)
  final bool ok;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String? msg;
  @JsonKey(name: 'trace', includeIfNull: false, defaultValue: '')
  final String? trace;
  @JsonKey(name: 'errorCode', includeIfNull: false, defaultValue: '')
  final String? errorCode;
  static const fromJsonFactory = _$PlanCurrencyListResFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlanCurrencyListRes &&
            (identical(other.currencies, currencies) ||
                const DeepCollectionEquality()
                    .equals(other.currencies, currencies)) &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.trace, trace) ||
                const DeepCollectionEquality().equals(other.trace, trace)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currencies) ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(trace) ^
      const DeepCollectionEquality().hash(errorCode) ^
      runtimeType.hashCode;
}

extension $PlanCurrencyListResExtension on PlanCurrencyListRes {
  PlanCurrencyListRes copyWith(
      {List<PlanCurrency>? currencies,
      bool? ok,
      String? msg,
      String? trace,
      String? errorCode}) {
    return PlanCurrencyListRes(
        currencies: currencies ?? this.currencies,
        ok: ok ?? this.ok,
        msg: msg ?? this.msg,
        trace: trace ?? this.trace,
        errorCode: errorCode ?? this.errorCode);
  }

  PlanCurrencyListRes copyWithWrapped(
      {Wrapped<List<PlanCurrency>>? currencies,
      Wrapped<bool>? ok,
      Wrapped<String?>? msg,
      Wrapped<String?>? trace,
      Wrapped<String?>? errorCode}) {
    return PlanCurrencyListRes(
        currencies: (currencies != null ? currencies.value : this.currencies),
        ok: (ok != null ? ok.value : this.ok),
        msg: (msg != null ? msg.value : this.msg),
        trace: (trace != null ? trace.value : this.trace),
        errorCode: (errorCode != null ? errorCode.value : this.errorCode));
  }
}

String? organizationOrganizationStateNullableToJson(
    enums.OrganizationOrganizationState? organizationOrganizationState) {
  return organizationOrganizationState?.value;
}

String? organizationOrganizationStateToJson(
    enums.OrganizationOrganizationState organizationOrganizationState) {
  return organizationOrganizationState.value;
}

enums.OrganizationOrganizationState organizationOrganizationStateFromJson(
  Object? organizationOrganizationState, [
  enums.OrganizationOrganizationState? defaultValue,
]) {
  return enums.OrganizationOrganizationState.values
          .firstWhereOrNull((e) => e.value == organizationOrganizationState) ??
      defaultValue ??
      enums.OrganizationOrganizationState.swaggerGeneratedUnknown;
}

enums.OrganizationOrganizationState?
    organizationOrganizationStateNullableFromJson(
  Object? organizationOrganizationState, [
  enums.OrganizationOrganizationState? defaultValue,
]) {
  if (organizationOrganizationState == null) {
    return null;
  }
  return enums.OrganizationOrganizationState.values
          .firstWhereOrNull((e) => e.value == organizationOrganizationState) ??
      defaultValue;
}

String organizationOrganizationStateExplodedListToJson(
    List<enums.OrganizationOrganizationState>? organizationOrganizationState) {
  return organizationOrganizationState?.map((e) => e.value!).join(',') ?? '';
}

List<String> organizationOrganizationStateListToJson(
    List<enums.OrganizationOrganizationState>? organizationOrganizationState) {
  if (organizationOrganizationState == null) {
    return [];
  }

  return organizationOrganizationState.map((e) => e.value!).toList();
}

List<enums.OrganizationOrganizationState>
    organizationOrganizationStateListFromJson(
  List? organizationOrganizationState, [
  List<enums.OrganizationOrganizationState>? defaultValue,
]) {
  if (organizationOrganizationState == null) {
    return defaultValue ?? [];
  }

  return organizationOrganizationState
      .map((e) => organizationOrganizationStateFromJson(e.toString()))
      .toList();
}

List<enums.OrganizationOrganizationState>?
    organizationOrganizationStateNullableListFromJson(
  List? organizationOrganizationState, [
  List<enums.OrganizationOrganizationState>? defaultValue,
]) {
  if (organizationOrganizationState == null) {
    return defaultValue;
  }

  return organizationOrganizationState
      .map((e) => organizationOrganizationStateFromJson(e.toString()))
      .toList();
}

String? subscriptionSubscriptionStateNullableToJson(
    enums.SubscriptionSubscriptionState? subscriptionSubscriptionState) {
  return subscriptionSubscriptionState?.value;
}

String? subscriptionSubscriptionStateToJson(
    enums.SubscriptionSubscriptionState subscriptionSubscriptionState) {
  return subscriptionSubscriptionState.value;
}

enums.SubscriptionSubscriptionState subscriptionSubscriptionStateFromJson(
  Object? subscriptionSubscriptionState, [
  enums.SubscriptionSubscriptionState? defaultValue,
]) {
  return enums.SubscriptionSubscriptionState.values
          .firstWhereOrNull((e) => e.value == subscriptionSubscriptionState) ??
      defaultValue ??
      enums.SubscriptionSubscriptionState.swaggerGeneratedUnknown;
}

enums.SubscriptionSubscriptionState?
    subscriptionSubscriptionStateNullableFromJson(
  Object? subscriptionSubscriptionState, [
  enums.SubscriptionSubscriptionState? defaultValue,
]) {
  if (subscriptionSubscriptionState == null) {
    return null;
  }
  return enums.SubscriptionSubscriptionState.values
          .firstWhereOrNull((e) => e.value == subscriptionSubscriptionState) ??
      defaultValue;
}

String subscriptionSubscriptionStateExplodedListToJson(
    List<enums.SubscriptionSubscriptionState>? subscriptionSubscriptionState) {
  return subscriptionSubscriptionState?.map((e) => e.value!).join(',') ?? '';
}

List<String> subscriptionSubscriptionStateListToJson(
    List<enums.SubscriptionSubscriptionState>? subscriptionSubscriptionState) {
  if (subscriptionSubscriptionState == null) {
    return [];
  }

  return subscriptionSubscriptionState.map((e) => e.value!).toList();
}

List<enums.SubscriptionSubscriptionState>
    subscriptionSubscriptionStateListFromJson(
  List? subscriptionSubscriptionState, [
  List<enums.SubscriptionSubscriptionState>? defaultValue,
]) {
  if (subscriptionSubscriptionState == null) {
    return defaultValue ?? [];
  }

  return subscriptionSubscriptionState
      .map((e) => subscriptionSubscriptionStateFromJson(e.toString()))
      .toList();
}

List<enums.SubscriptionSubscriptionState>?
    subscriptionSubscriptionStateNullableListFromJson(
  List? subscriptionSubscriptionState, [
  List<enums.SubscriptionSubscriptionState>? defaultValue,
]) {
  if (subscriptionSubscriptionState == null) {
    return defaultValue;
  }

  return subscriptionSubscriptionState
      .map((e) => subscriptionSubscriptionStateFromJson(e.toString()))
      .toList();
}

String? subscriptionSubscriptionTypeNullableToJson(
    enums.SubscriptionSubscriptionType? subscriptionSubscriptionType) {
  return subscriptionSubscriptionType?.value;
}

String? subscriptionSubscriptionTypeToJson(
    enums.SubscriptionSubscriptionType subscriptionSubscriptionType) {
  return subscriptionSubscriptionType.value;
}

enums.SubscriptionSubscriptionType subscriptionSubscriptionTypeFromJson(
  Object? subscriptionSubscriptionType, [
  enums.SubscriptionSubscriptionType? defaultValue,
]) {
  return enums.SubscriptionSubscriptionType.values
          .firstWhereOrNull((e) => e.value == subscriptionSubscriptionType) ??
      defaultValue ??
      enums.SubscriptionSubscriptionType.swaggerGeneratedUnknown;
}

enums.SubscriptionSubscriptionType?
    subscriptionSubscriptionTypeNullableFromJson(
  Object? subscriptionSubscriptionType, [
  enums.SubscriptionSubscriptionType? defaultValue,
]) {
  if (subscriptionSubscriptionType == null) {
    return null;
  }
  return enums.SubscriptionSubscriptionType.values
          .firstWhereOrNull((e) => e.value == subscriptionSubscriptionType) ??
      defaultValue;
}

String subscriptionSubscriptionTypeExplodedListToJson(
    List<enums.SubscriptionSubscriptionType>? subscriptionSubscriptionType) {
  return subscriptionSubscriptionType?.map((e) => e.value!).join(',') ?? '';
}

List<String> subscriptionSubscriptionTypeListToJson(
    List<enums.SubscriptionSubscriptionType>? subscriptionSubscriptionType) {
  if (subscriptionSubscriptionType == null) {
    return [];
  }

  return subscriptionSubscriptionType.map((e) => e.value!).toList();
}

List<enums.SubscriptionSubscriptionType>
    subscriptionSubscriptionTypeListFromJson(
  List? subscriptionSubscriptionType, [
  List<enums.SubscriptionSubscriptionType>? defaultValue,
]) {
  if (subscriptionSubscriptionType == null) {
    return defaultValue ?? [];
  }

  return subscriptionSubscriptionType
      .map((e) => subscriptionSubscriptionTypeFromJson(e.toString()))
      .toList();
}

List<enums.SubscriptionSubscriptionType>?
    subscriptionSubscriptionTypeNullableListFromJson(
  List? subscriptionSubscriptionType, [
  List<enums.SubscriptionSubscriptionType>? defaultValue,
]) {
  if (subscriptionSubscriptionType == null) {
    return defaultValue;
  }

  return subscriptionSubscriptionType
      .map((e) => subscriptionSubscriptionTypeFromJson(e.toString()))
      .toList();
}

String? applicationTargetNullableToJson(
    enums.ApplicationTarget? applicationTarget) {
  return applicationTarget?.value;
}

String? applicationTargetToJson(enums.ApplicationTarget applicationTarget) {
  return applicationTarget.value;
}

enums.ApplicationTarget applicationTargetFromJson(
  Object? applicationTarget, [
  enums.ApplicationTarget? defaultValue,
]) {
  return enums.ApplicationTarget.values
          .firstWhereOrNull((e) => e.value == applicationTarget) ??
      defaultValue ??
      enums.ApplicationTarget.swaggerGeneratedUnknown;
}

enums.ApplicationTarget? applicationTargetNullableFromJson(
  Object? applicationTarget, [
  enums.ApplicationTarget? defaultValue,
]) {
  if (applicationTarget == null) {
    return null;
  }
  return enums.ApplicationTarget.values
          .firstWhereOrNull((e) => e.value == applicationTarget) ??
      defaultValue;
}

String applicationTargetExplodedListToJson(
    List<enums.ApplicationTarget>? applicationTarget) {
  return applicationTarget?.map((e) => e.value!).join(',') ?? '';
}

List<String> applicationTargetListToJson(
    List<enums.ApplicationTarget>? applicationTarget) {
  if (applicationTarget == null) {
    return [];
  }

  return applicationTarget.map((e) => e.value!).toList();
}

List<enums.ApplicationTarget> applicationTargetListFromJson(
  List? applicationTarget, [
  List<enums.ApplicationTarget>? defaultValue,
]) {
  if (applicationTarget == null) {
    return defaultValue ?? [];
  }

  return applicationTarget
      .map((e) => applicationTargetFromJson(e.toString()))
      .toList();
}

List<enums.ApplicationTarget>? applicationTargetNullableListFromJson(
  List? applicationTarget, [
  List<enums.ApplicationTarget>? defaultValue,
]) {
  if (applicationTarget == null) {
    return defaultValue;
  }

  return applicationTarget
      .map((e) => applicationTargetFromJson(e.toString()))
      .toList();
}

String? applicationApplicationStateNullableToJson(
    enums.ApplicationApplicationState? applicationApplicationState) {
  return applicationApplicationState?.value;
}

String? applicationApplicationStateToJson(
    enums.ApplicationApplicationState applicationApplicationState) {
  return applicationApplicationState.value;
}

enums.ApplicationApplicationState applicationApplicationStateFromJson(
  Object? applicationApplicationState, [
  enums.ApplicationApplicationState? defaultValue,
]) {
  return enums.ApplicationApplicationState.values
          .firstWhereOrNull((e) => e.value == applicationApplicationState) ??
      defaultValue ??
      enums.ApplicationApplicationState.swaggerGeneratedUnknown;
}

enums.ApplicationApplicationState? applicationApplicationStateNullableFromJson(
  Object? applicationApplicationState, [
  enums.ApplicationApplicationState? defaultValue,
]) {
  if (applicationApplicationState == null) {
    return null;
  }
  return enums.ApplicationApplicationState.values
          .firstWhereOrNull((e) => e.value == applicationApplicationState) ??
      defaultValue;
}

String applicationApplicationStateExplodedListToJson(
    List<enums.ApplicationApplicationState>? applicationApplicationState) {
  return applicationApplicationState?.map((e) => e.value!).join(',') ?? '';
}

List<String> applicationApplicationStateListToJson(
    List<enums.ApplicationApplicationState>? applicationApplicationState) {
  if (applicationApplicationState == null) {
    return [];
  }

  return applicationApplicationState.map((e) => e.value!).toList();
}

List<enums.ApplicationApplicationState> applicationApplicationStateListFromJson(
  List? applicationApplicationState, [
  List<enums.ApplicationApplicationState>? defaultValue,
]) {
  if (applicationApplicationState == null) {
    return defaultValue ?? [];
  }

  return applicationApplicationState
      .map((e) => applicationApplicationStateFromJson(e.toString()))
      .toList();
}

List<enums.ApplicationApplicationState>?
    applicationApplicationStateNullableListFromJson(
  List? applicationApplicationState, [
  List<enums.ApplicationApplicationState>? defaultValue,
]) {
  if (applicationApplicationState == null) {
    return defaultValue;
  }

  return applicationApplicationState
      .map((e) => applicationApplicationStateFromJson(e.toString()))
      .toList();
}

String? pagePageStateNullableToJson(enums.PagePageState? pagePageState) {
  return pagePageState?.value;
}

String? pagePageStateToJson(enums.PagePageState pagePageState) {
  return pagePageState.value;
}

enums.PagePageState pagePageStateFromJson(
  Object? pagePageState, [
  enums.PagePageState? defaultValue,
]) {
  return enums.PagePageState.values
          .firstWhereOrNull((e) => e.value == pagePageState) ??
      defaultValue ??
      enums.PagePageState.swaggerGeneratedUnknown;
}

enums.PagePageState? pagePageStateNullableFromJson(
  Object? pagePageState, [
  enums.PagePageState? defaultValue,
]) {
  if (pagePageState == null) {
    return null;
  }
  return enums.PagePageState.values
          .firstWhereOrNull((e) => e.value == pagePageState) ??
      defaultValue;
}

String pagePageStateExplodedListToJson(
    List<enums.PagePageState>? pagePageState) {
  return pagePageState?.map((e) => e.value!).join(',') ?? '';
}

List<String> pagePageStateListToJson(List<enums.PagePageState>? pagePageState) {
  if (pagePageState == null) {
    return [];
  }

  return pagePageState.map((e) => e.value!).toList();
}

List<enums.PagePageState> pagePageStateListFromJson(
  List? pagePageState, [
  List<enums.PagePageState>? defaultValue,
]) {
  if (pagePageState == null) {
    return defaultValue ?? [];
  }

  return pagePageState.map((e) => pagePageStateFromJson(e.toString())).toList();
}

List<enums.PagePageState>? pagePageStateNullableListFromJson(
  List? pagePageState, [
  List<enums.PagePageState>? defaultValue,
]) {
  if (pagePageState == null) {
    return defaultValue;
  }

  return pagePageState.map((e) => pagePageStateFromJson(e.toString())).toList();
}

String? imageFileInfoImageTypeNullableToJson(
    enums.ImageFileInfoImageType? imageFileInfoImageType) {
  return imageFileInfoImageType?.value;
}

String? imageFileInfoImageTypeToJson(
    enums.ImageFileInfoImageType imageFileInfoImageType) {
  return imageFileInfoImageType.value;
}

enums.ImageFileInfoImageType imageFileInfoImageTypeFromJson(
  Object? imageFileInfoImageType, [
  enums.ImageFileInfoImageType? defaultValue,
]) {
  return enums.ImageFileInfoImageType.values
          .firstWhereOrNull((e) => e.value == imageFileInfoImageType) ??
      defaultValue ??
      enums.ImageFileInfoImageType.swaggerGeneratedUnknown;
}

enums.ImageFileInfoImageType? imageFileInfoImageTypeNullableFromJson(
  Object? imageFileInfoImageType, [
  enums.ImageFileInfoImageType? defaultValue,
]) {
  if (imageFileInfoImageType == null) {
    return null;
  }
  return enums.ImageFileInfoImageType.values
          .firstWhereOrNull((e) => e.value == imageFileInfoImageType) ??
      defaultValue;
}

String imageFileInfoImageTypeExplodedListToJson(
    List<enums.ImageFileInfoImageType>? imageFileInfoImageType) {
  return imageFileInfoImageType?.map((e) => e.value!).join(',') ?? '';
}

List<String> imageFileInfoImageTypeListToJson(
    List<enums.ImageFileInfoImageType>? imageFileInfoImageType) {
  if (imageFileInfoImageType == null) {
    return [];
  }

  return imageFileInfoImageType.map((e) => e.value!).toList();
}

List<enums.ImageFileInfoImageType> imageFileInfoImageTypeListFromJson(
  List? imageFileInfoImageType, [
  List<enums.ImageFileInfoImageType>? defaultValue,
]) {
  if (imageFileInfoImageType == null) {
    return defaultValue ?? [];
  }

  return imageFileInfoImageType
      .map((e) => imageFileInfoImageTypeFromJson(e.toString()))
      .toList();
}

List<enums.ImageFileInfoImageType>? imageFileInfoImageTypeNullableListFromJson(
  List? imageFileInfoImageType, [
  List<enums.ImageFileInfoImageType>? defaultValue,
]) {
  if (imageFileInfoImageType == null) {
    return defaultValue;
  }

  return imageFileInfoImageType
      .map((e) => imageFileInfoImageTypeFromJson(e.toString()))
      .toList();
}

String? imageFileInfoImageTargetNullableToJson(
    enums.ImageFileInfoImageTarget? imageFileInfoImageTarget) {
  return imageFileInfoImageTarget?.value;
}

String? imageFileInfoImageTargetToJson(
    enums.ImageFileInfoImageTarget imageFileInfoImageTarget) {
  return imageFileInfoImageTarget.value;
}

enums.ImageFileInfoImageTarget imageFileInfoImageTargetFromJson(
  Object? imageFileInfoImageTarget, [
  enums.ImageFileInfoImageTarget? defaultValue,
]) {
  return enums.ImageFileInfoImageTarget.values
          .firstWhereOrNull((e) => e.value == imageFileInfoImageTarget) ??
      defaultValue ??
      enums.ImageFileInfoImageTarget.swaggerGeneratedUnknown;
}

enums.ImageFileInfoImageTarget? imageFileInfoImageTargetNullableFromJson(
  Object? imageFileInfoImageTarget, [
  enums.ImageFileInfoImageTarget? defaultValue,
]) {
  if (imageFileInfoImageTarget == null) {
    return null;
  }
  return enums.ImageFileInfoImageTarget.values
          .firstWhereOrNull((e) => e.value == imageFileInfoImageTarget) ??
      defaultValue;
}

String imageFileInfoImageTargetExplodedListToJson(
    List<enums.ImageFileInfoImageTarget>? imageFileInfoImageTarget) {
  return imageFileInfoImageTarget?.map((e) => e.value!).join(',') ?? '';
}

List<String> imageFileInfoImageTargetListToJson(
    List<enums.ImageFileInfoImageTarget>? imageFileInfoImageTarget) {
  if (imageFileInfoImageTarget == null) {
    return [];
  }

  return imageFileInfoImageTarget.map((e) => e.value!).toList();
}

List<enums.ImageFileInfoImageTarget> imageFileInfoImageTargetListFromJson(
  List? imageFileInfoImageTarget, [
  List<enums.ImageFileInfoImageTarget>? defaultValue,
]) {
  if (imageFileInfoImageTarget == null) {
    return defaultValue ?? [];
  }

  return imageFileInfoImageTarget
      .map((e) => imageFileInfoImageTargetFromJson(e.toString()))
      .toList();
}

List<enums.ImageFileInfoImageTarget>?
    imageFileInfoImageTargetNullableListFromJson(
  List? imageFileInfoImageTarget, [
  List<enums.ImageFileInfoImageTarget>? defaultValue,
]) {
  if (imageFileInfoImageTarget == null) {
    return defaultValue;
  }

  return imageFileInfoImageTarget
      .map((e) => imageFileInfoImageTargetFromJson(e.toString()))
      .toList();
}

String? imageFileImageTypeNullableToJson(
    enums.ImageFileImageType? imageFileImageType) {
  return imageFileImageType?.value;
}

String? imageFileImageTypeToJson(enums.ImageFileImageType imageFileImageType) {
  return imageFileImageType.value;
}

enums.ImageFileImageType imageFileImageTypeFromJson(
  Object? imageFileImageType, [
  enums.ImageFileImageType? defaultValue,
]) {
  return enums.ImageFileImageType.values
          .firstWhereOrNull((e) => e.value == imageFileImageType) ??
      defaultValue ??
      enums.ImageFileImageType.swaggerGeneratedUnknown;
}

enums.ImageFileImageType? imageFileImageTypeNullableFromJson(
  Object? imageFileImageType, [
  enums.ImageFileImageType? defaultValue,
]) {
  if (imageFileImageType == null) {
    return null;
  }
  return enums.ImageFileImageType.values
          .firstWhereOrNull((e) => e.value == imageFileImageType) ??
      defaultValue;
}

String imageFileImageTypeExplodedListToJson(
    List<enums.ImageFileImageType>? imageFileImageType) {
  return imageFileImageType?.map((e) => e.value!).join(',') ?? '';
}

List<String> imageFileImageTypeListToJson(
    List<enums.ImageFileImageType>? imageFileImageType) {
  if (imageFileImageType == null) {
    return [];
  }

  return imageFileImageType.map((e) => e.value!).toList();
}

List<enums.ImageFileImageType> imageFileImageTypeListFromJson(
  List? imageFileImageType, [
  List<enums.ImageFileImageType>? defaultValue,
]) {
  if (imageFileImageType == null) {
    return defaultValue ?? [];
  }

  return imageFileImageType
      .map((e) => imageFileImageTypeFromJson(e.toString()))
      .toList();
}

List<enums.ImageFileImageType>? imageFileImageTypeNullableListFromJson(
  List? imageFileImageType, [
  List<enums.ImageFileImageType>? defaultValue,
]) {
  if (imageFileImageType == null) {
    return defaultValue;
  }

  return imageFileImageType
      .map((e) => imageFileImageTypeFromJson(e.toString()))
      .toList();
}

String? imageFileImageTargetNullableToJson(
    enums.ImageFileImageTarget? imageFileImageTarget) {
  return imageFileImageTarget?.value;
}

String? imageFileImageTargetToJson(
    enums.ImageFileImageTarget imageFileImageTarget) {
  return imageFileImageTarget.value;
}

enums.ImageFileImageTarget imageFileImageTargetFromJson(
  Object? imageFileImageTarget, [
  enums.ImageFileImageTarget? defaultValue,
]) {
  return enums.ImageFileImageTarget.values
          .firstWhereOrNull((e) => e.value == imageFileImageTarget) ??
      defaultValue ??
      enums.ImageFileImageTarget.swaggerGeneratedUnknown;
}

enums.ImageFileImageTarget? imageFileImageTargetNullableFromJson(
  Object? imageFileImageTarget, [
  enums.ImageFileImageTarget? defaultValue,
]) {
  if (imageFileImageTarget == null) {
    return null;
  }
  return enums.ImageFileImageTarget.values
          .firstWhereOrNull((e) => e.value == imageFileImageTarget) ??
      defaultValue;
}

String imageFileImageTargetExplodedListToJson(
    List<enums.ImageFileImageTarget>? imageFileImageTarget) {
  return imageFileImageTarget?.map((e) => e.value!).join(',') ?? '';
}

List<String> imageFileImageTargetListToJson(
    List<enums.ImageFileImageTarget>? imageFileImageTarget) {
  if (imageFileImageTarget == null) {
    return [];
  }

  return imageFileImageTarget.map((e) => e.value!).toList();
}

List<enums.ImageFileImageTarget> imageFileImageTargetListFromJson(
  List? imageFileImageTarget, [
  List<enums.ImageFileImageTarget>? defaultValue,
]) {
  if (imageFileImageTarget == null) {
    return defaultValue ?? [];
  }

  return imageFileImageTarget
      .map((e) => imageFileImageTargetFromJson(e.toString()))
      .toList();
}

List<enums.ImageFileImageTarget>? imageFileImageTargetNullableListFromJson(
  List? imageFileImageTarget, [
  List<enums.ImageFileImageTarget>? defaultValue,
]) {
  if (imageFileImageTarget == null) {
    return defaultValue;
  }

  return imageFileImageTarget
      .map((e) => imageFileImageTargetFromJson(e.toString()))
      .toList();
}

String? planInfoPlanFrequencyNullableToJson(
    enums.PlanInfoPlanFrequency? planInfoPlanFrequency) {
  return planInfoPlanFrequency?.value;
}

String? planInfoPlanFrequencyToJson(
    enums.PlanInfoPlanFrequency planInfoPlanFrequency) {
  return planInfoPlanFrequency.value;
}

enums.PlanInfoPlanFrequency planInfoPlanFrequencyFromJson(
  Object? planInfoPlanFrequency, [
  enums.PlanInfoPlanFrequency? defaultValue,
]) {
  return enums.PlanInfoPlanFrequency.values
          .firstWhereOrNull((e) => e.value == planInfoPlanFrequency) ??
      defaultValue ??
      enums.PlanInfoPlanFrequency.swaggerGeneratedUnknown;
}

enums.PlanInfoPlanFrequency? planInfoPlanFrequencyNullableFromJson(
  Object? planInfoPlanFrequency, [
  enums.PlanInfoPlanFrequency? defaultValue,
]) {
  if (planInfoPlanFrequency == null) {
    return null;
  }
  return enums.PlanInfoPlanFrequency.values
          .firstWhereOrNull((e) => e.value == planInfoPlanFrequency) ??
      defaultValue;
}

String planInfoPlanFrequencyExplodedListToJson(
    List<enums.PlanInfoPlanFrequency>? planInfoPlanFrequency) {
  return planInfoPlanFrequency?.map((e) => e.value!).join(',') ?? '';
}

List<String> planInfoPlanFrequencyListToJson(
    List<enums.PlanInfoPlanFrequency>? planInfoPlanFrequency) {
  if (planInfoPlanFrequency == null) {
    return [];
  }

  return planInfoPlanFrequency.map((e) => e.value!).toList();
}

List<enums.PlanInfoPlanFrequency> planInfoPlanFrequencyListFromJson(
  List? planInfoPlanFrequency, [
  List<enums.PlanInfoPlanFrequency>? defaultValue,
]) {
  if (planInfoPlanFrequency == null) {
    return defaultValue ?? [];
  }

  return planInfoPlanFrequency
      .map((e) => planInfoPlanFrequencyFromJson(e.toString()))
      .toList();
}

List<enums.PlanInfoPlanFrequency>? planInfoPlanFrequencyNullableListFromJson(
  List? planInfoPlanFrequency, [
  List<enums.PlanInfoPlanFrequency>? defaultValue,
]) {
  if (planInfoPlanFrequency == null) {
    return defaultValue;
  }

  return planInfoPlanFrequency
      .map((e) => planInfoPlanFrequencyFromJson(e.toString()))
      .toList();
}

String? planInfoPlanTypeNullableToJson(
    enums.PlanInfoPlanType? planInfoPlanType) {
  return planInfoPlanType?.value;
}

String? planInfoPlanTypeToJson(enums.PlanInfoPlanType planInfoPlanType) {
  return planInfoPlanType.value;
}

enums.PlanInfoPlanType planInfoPlanTypeFromJson(
  Object? planInfoPlanType, [
  enums.PlanInfoPlanType? defaultValue,
]) {
  return enums.PlanInfoPlanType.values
          .firstWhereOrNull((e) => e.value == planInfoPlanType) ??
      defaultValue ??
      enums.PlanInfoPlanType.swaggerGeneratedUnknown;
}

enums.PlanInfoPlanType? planInfoPlanTypeNullableFromJson(
  Object? planInfoPlanType, [
  enums.PlanInfoPlanType? defaultValue,
]) {
  if (planInfoPlanType == null) {
    return null;
  }
  return enums.PlanInfoPlanType.values
          .firstWhereOrNull((e) => e.value == planInfoPlanType) ??
      defaultValue;
}

String planInfoPlanTypeExplodedListToJson(
    List<enums.PlanInfoPlanType>? planInfoPlanType) {
  return planInfoPlanType?.map((e) => e.value!).join(',') ?? '';
}

List<String> planInfoPlanTypeListToJson(
    List<enums.PlanInfoPlanType>? planInfoPlanType) {
  if (planInfoPlanType == null) {
    return [];
  }

  return planInfoPlanType.map((e) => e.value!).toList();
}

List<enums.PlanInfoPlanType> planInfoPlanTypeListFromJson(
  List? planInfoPlanType, [
  List<enums.PlanInfoPlanType>? defaultValue,
]) {
  if (planInfoPlanType == null) {
    return defaultValue ?? [];
  }

  return planInfoPlanType
      .map((e) => planInfoPlanTypeFromJson(e.toString()))
      .toList();
}

List<enums.PlanInfoPlanType>? planInfoPlanTypeNullableListFromJson(
  List? planInfoPlanType, [
  List<enums.PlanInfoPlanType>? defaultValue,
]) {
  if (planInfoPlanType == null) {
    return defaultValue;
  }

  return planInfoPlanType
      .map((e) => planInfoPlanTypeFromJson(e.toString()))
      .toList();
}

String? planPlanFrequencyNullableToJson(
    enums.PlanPlanFrequency? planPlanFrequency) {
  return planPlanFrequency?.value;
}

String? planPlanFrequencyToJson(enums.PlanPlanFrequency planPlanFrequency) {
  return planPlanFrequency.value;
}

enums.PlanPlanFrequency planPlanFrequencyFromJson(
  Object? planPlanFrequency, [
  enums.PlanPlanFrequency? defaultValue,
]) {
  return enums.PlanPlanFrequency.values
          .firstWhereOrNull((e) => e.value == planPlanFrequency) ??
      defaultValue ??
      enums.PlanPlanFrequency.swaggerGeneratedUnknown;
}

enums.PlanPlanFrequency? planPlanFrequencyNullableFromJson(
  Object? planPlanFrequency, [
  enums.PlanPlanFrequency? defaultValue,
]) {
  if (planPlanFrequency == null) {
    return null;
  }
  return enums.PlanPlanFrequency.values
          .firstWhereOrNull((e) => e.value == planPlanFrequency) ??
      defaultValue;
}

String planPlanFrequencyExplodedListToJson(
    List<enums.PlanPlanFrequency>? planPlanFrequency) {
  return planPlanFrequency?.map((e) => e.value!).join(',') ?? '';
}

List<String> planPlanFrequencyListToJson(
    List<enums.PlanPlanFrequency>? planPlanFrequency) {
  if (planPlanFrequency == null) {
    return [];
  }

  return planPlanFrequency.map((e) => e.value!).toList();
}

List<enums.PlanPlanFrequency> planPlanFrequencyListFromJson(
  List? planPlanFrequency, [
  List<enums.PlanPlanFrequency>? defaultValue,
]) {
  if (planPlanFrequency == null) {
    return defaultValue ?? [];
  }

  return planPlanFrequency
      .map((e) => planPlanFrequencyFromJson(e.toString()))
      .toList();
}

List<enums.PlanPlanFrequency>? planPlanFrequencyNullableListFromJson(
  List? planPlanFrequency, [
  List<enums.PlanPlanFrequency>? defaultValue,
]) {
  if (planPlanFrequency == null) {
    return defaultValue;
  }

  return planPlanFrequency
      .map((e) => planPlanFrequencyFromJson(e.toString()))
      .toList();
}

String? planPlanTypeNullableToJson(enums.PlanPlanType? planPlanType) {
  return planPlanType?.value;
}

String? planPlanTypeToJson(enums.PlanPlanType planPlanType) {
  return planPlanType.value;
}

enums.PlanPlanType planPlanTypeFromJson(
  Object? planPlanType, [
  enums.PlanPlanType? defaultValue,
]) {
  return enums.PlanPlanType.values
          .firstWhereOrNull((e) => e.value == planPlanType) ??
      defaultValue ??
      enums.PlanPlanType.swaggerGeneratedUnknown;
}

enums.PlanPlanType? planPlanTypeNullableFromJson(
  Object? planPlanType, [
  enums.PlanPlanType? defaultValue,
]) {
  if (planPlanType == null) {
    return null;
  }
  return enums.PlanPlanType.values
          .firstWhereOrNull((e) => e.value == planPlanType) ??
      defaultValue;
}

String planPlanTypeExplodedListToJson(List<enums.PlanPlanType>? planPlanType) {
  return planPlanType?.map((e) => e.value!).join(',') ?? '';
}

List<String> planPlanTypeListToJson(List<enums.PlanPlanType>? planPlanType) {
  if (planPlanType == null) {
    return [];
  }

  return planPlanType.map((e) => e.value!).toList();
}

List<enums.PlanPlanType> planPlanTypeListFromJson(
  List? planPlanType, [
  List<enums.PlanPlanType>? defaultValue,
]) {
  if (planPlanType == null) {
    return defaultValue ?? [];
  }

  return planPlanType.map((e) => planPlanTypeFromJson(e.toString())).toList();
}

List<enums.PlanPlanType>? planPlanTypeNullableListFromJson(
  List? planPlanType, [
  List<enums.PlanPlanType>? defaultValue,
]) {
  if (planPlanType == null) {
    return defaultValue;
  }

  return planPlanType.map((e) => planPlanTypeFromJson(e.toString())).toList();
}

String? applicationCreateTargetOrgIdTeamIdPostTargetNullableToJson(
    enums.ApplicationCreateTargetOrgIdTeamIdPostTarget?
        applicationCreateTargetOrgIdTeamIdPostTarget) {
  return applicationCreateTargetOrgIdTeamIdPostTarget?.value;
}

String? applicationCreateTargetOrgIdTeamIdPostTargetToJson(
    enums.ApplicationCreateTargetOrgIdTeamIdPostTarget
        applicationCreateTargetOrgIdTeamIdPostTarget) {
  return applicationCreateTargetOrgIdTeamIdPostTarget.value;
}

enums.ApplicationCreateTargetOrgIdTeamIdPostTarget
    applicationCreateTargetOrgIdTeamIdPostTargetFromJson(
  Object? applicationCreateTargetOrgIdTeamIdPostTarget, [
  enums.ApplicationCreateTargetOrgIdTeamIdPostTarget? defaultValue,
]) {
  return enums.ApplicationCreateTargetOrgIdTeamIdPostTarget.values
          .firstWhereOrNull(
              (e) => e.value == applicationCreateTargetOrgIdTeamIdPostTarget) ??
      defaultValue ??
      enums
          .ApplicationCreateTargetOrgIdTeamIdPostTarget.swaggerGeneratedUnknown;
}

enums.ApplicationCreateTargetOrgIdTeamIdPostTarget?
    applicationCreateTargetOrgIdTeamIdPostTargetNullableFromJson(
  Object? applicationCreateTargetOrgIdTeamIdPostTarget, [
  enums.ApplicationCreateTargetOrgIdTeamIdPostTarget? defaultValue,
]) {
  if (applicationCreateTargetOrgIdTeamIdPostTarget == null) {
    return null;
  }
  return enums.ApplicationCreateTargetOrgIdTeamIdPostTarget.values
          .firstWhereOrNull(
              (e) => e.value == applicationCreateTargetOrgIdTeamIdPostTarget) ??
      defaultValue;
}

String applicationCreateTargetOrgIdTeamIdPostTargetExplodedListToJson(
    List<enums.ApplicationCreateTargetOrgIdTeamIdPostTarget>?
        applicationCreateTargetOrgIdTeamIdPostTarget) {
  return applicationCreateTargetOrgIdTeamIdPostTarget
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> applicationCreateTargetOrgIdTeamIdPostTargetListToJson(
    List<enums.ApplicationCreateTargetOrgIdTeamIdPostTarget>?
        applicationCreateTargetOrgIdTeamIdPostTarget) {
  if (applicationCreateTargetOrgIdTeamIdPostTarget == null) {
    return [];
  }

  return applicationCreateTargetOrgIdTeamIdPostTarget
      .map((e) => e.value!)
      .toList();
}

List<enums.ApplicationCreateTargetOrgIdTeamIdPostTarget>
    applicationCreateTargetOrgIdTeamIdPostTargetListFromJson(
  List? applicationCreateTargetOrgIdTeamIdPostTarget, [
  List<enums.ApplicationCreateTargetOrgIdTeamIdPostTarget>? defaultValue,
]) {
  if (applicationCreateTargetOrgIdTeamIdPostTarget == null) {
    return defaultValue ?? [];
  }

  return applicationCreateTargetOrgIdTeamIdPostTarget
      .map((e) =>
          applicationCreateTargetOrgIdTeamIdPostTargetFromJson(e.toString()))
      .toList();
}

List<enums.ApplicationCreateTargetOrgIdTeamIdPostTarget>?
    applicationCreateTargetOrgIdTeamIdPostTargetNullableListFromJson(
  List? applicationCreateTargetOrgIdTeamIdPostTarget, [
  List<enums.ApplicationCreateTargetOrgIdTeamIdPostTarget>? defaultValue,
]) {
  if (applicationCreateTargetOrgIdTeamIdPostTarget == null) {
    return defaultValue;
  }

  return applicationCreateTargetOrgIdTeamIdPostTarget
      .map((e) =>
          applicationCreateTargetOrgIdTeamIdPostTargetFromJson(e.toString()))
      .toList();
}

String? applicationSearchTargetOrgIdTeamIdPostTargetNullableToJson(
    enums.ApplicationSearchTargetOrgIdTeamIdPostTarget?
        applicationSearchTargetOrgIdTeamIdPostTarget) {
  return applicationSearchTargetOrgIdTeamIdPostTarget?.value;
}

String? applicationSearchTargetOrgIdTeamIdPostTargetToJson(
    enums.ApplicationSearchTargetOrgIdTeamIdPostTarget
        applicationSearchTargetOrgIdTeamIdPostTarget) {
  return applicationSearchTargetOrgIdTeamIdPostTarget.value;
}

enums.ApplicationSearchTargetOrgIdTeamIdPostTarget
    applicationSearchTargetOrgIdTeamIdPostTargetFromJson(
  Object? applicationSearchTargetOrgIdTeamIdPostTarget, [
  enums.ApplicationSearchTargetOrgIdTeamIdPostTarget? defaultValue,
]) {
  return enums.ApplicationSearchTargetOrgIdTeamIdPostTarget.values
          .firstWhereOrNull(
              (e) => e.value == applicationSearchTargetOrgIdTeamIdPostTarget) ??
      defaultValue ??
      enums
          .ApplicationSearchTargetOrgIdTeamIdPostTarget.swaggerGeneratedUnknown;
}

enums.ApplicationSearchTargetOrgIdTeamIdPostTarget?
    applicationSearchTargetOrgIdTeamIdPostTargetNullableFromJson(
  Object? applicationSearchTargetOrgIdTeamIdPostTarget, [
  enums.ApplicationSearchTargetOrgIdTeamIdPostTarget? defaultValue,
]) {
  if (applicationSearchTargetOrgIdTeamIdPostTarget == null) {
    return null;
  }
  return enums.ApplicationSearchTargetOrgIdTeamIdPostTarget.values
          .firstWhereOrNull(
              (e) => e.value == applicationSearchTargetOrgIdTeamIdPostTarget) ??
      defaultValue;
}

String applicationSearchTargetOrgIdTeamIdPostTargetExplodedListToJson(
    List<enums.ApplicationSearchTargetOrgIdTeamIdPostTarget>?
        applicationSearchTargetOrgIdTeamIdPostTarget) {
  return applicationSearchTargetOrgIdTeamIdPostTarget
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> applicationSearchTargetOrgIdTeamIdPostTargetListToJson(
    List<enums.ApplicationSearchTargetOrgIdTeamIdPostTarget>?
        applicationSearchTargetOrgIdTeamIdPostTarget) {
  if (applicationSearchTargetOrgIdTeamIdPostTarget == null) {
    return [];
  }

  return applicationSearchTargetOrgIdTeamIdPostTarget
      .map((e) => e.value!)
      .toList();
}

List<enums.ApplicationSearchTargetOrgIdTeamIdPostTarget>
    applicationSearchTargetOrgIdTeamIdPostTargetListFromJson(
  List? applicationSearchTargetOrgIdTeamIdPostTarget, [
  List<enums.ApplicationSearchTargetOrgIdTeamIdPostTarget>? defaultValue,
]) {
  if (applicationSearchTargetOrgIdTeamIdPostTarget == null) {
    return defaultValue ?? [];
  }

  return applicationSearchTargetOrgIdTeamIdPostTarget
      .map((e) =>
          applicationSearchTargetOrgIdTeamIdPostTargetFromJson(e.toString()))
      .toList();
}

List<enums.ApplicationSearchTargetOrgIdTeamIdPostTarget>?
    applicationSearchTargetOrgIdTeamIdPostTargetNullableListFromJson(
  List? applicationSearchTargetOrgIdTeamIdPostTarget, [
  List<enums.ApplicationSearchTargetOrgIdTeamIdPostTarget>? defaultValue,
]) {
  if (applicationSearchTargetOrgIdTeamIdPostTarget == null) {
    return defaultValue;
  }

  return applicationSearchTargetOrgIdTeamIdPostTarget
      .map((e) =>
          applicationSearchTargetOrgIdTeamIdPostTargetFromJson(e.toString()))
      .toList();
}

String? applicationListTargetOrgIdTeamIdPostTargetNullableToJson(
    enums.ApplicationListTargetOrgIdTeamIdPostTarget?
        applicationListTargetOrgIdTeamIdPostTarget) {
  return applicationListTargetOrgIdTeamIdPostTarget?.value;
}

String? applicationListTargetOrgIdTeamIdPostTargetToJson(
    enums.ApplicationListTargetOrgIdTeamIdPostTarget
        applicationListTargetOrgIdTeamIdPostTarget) {
  return applicationListTargetOrgIdTeamIdPostTarget.value;
}

enums.ApplicationListTargetOrgIdTeamIdPostTarget
    applicationListTargetOrgIdTeamIdPostTargetFromJson(
  Object? applicationListTargetOrgIdTeamIdPostTarget, [
  enums.ApplicationListTargetOrgIdTeamIdPostTarget? defaultValue,
]) {
  return enums.ApplicationListTargetOrgIdTeamIdPostTarget.values
          .firstWhereOrNull(
              (e) => e.value == applicationListTargetOrgIdTeamIdPostTarget) ??
      defaultValue ??
      enums.ApplicationListTargetOrgIdTeamIdPostTarget.swaggerGeneratedUnknown;
}

enums.ApplicationListTargetOrgIdTeamIdPostTarget?
    applicationListTargetOrgIdTeamIdPostTargetNullableFromJson(
  Object? applicationListTargetOrgIdTeamIdPostTarget, [
  enums.ApplicationListTargetOrgIdTeamIdPostTarget? defaultValue,
]) {
  if (applicationListTargetOrgIdTeamIdPostTarget == null) {
    return null;
  }
  return enums.ApplicationListTargetOrgIdTeamIdPostTarget.values
          .firstWhereOrNull(
              (e) => e.value == applicationListTargetOrgIdTeamIdPostTarget) ??
      defaultValue;
}

String applicationListTargetOrgIdTeamIdPostTargetExplodedListToJson(
    List<enums.ApplicationListTargetOrgIdTeamIdPostTarget>?
        applicationListTargetOrgIdTeamIdPostTarget) {
  return applicationListTargetOrgIdTeamIdPostTarget
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> applicationListTargetOrgIdTeamIdPostTargetListToJson(
    List<enums.ApplicationListTargetOrgIdTeamIdPostTarget>?
        applicationListTargetOrgIdTeamIdPostTarget) {
  if (applicationListTargetOrgIdTeamIdPostTarget == null) {
    return [];
  }

  return applicationListTargetOrgIdTeamIdPostTarget
      .map((e) => e.value!)
      .toList();
}

List<enums.ApplicationListTargetOrgIdTeamIdPostTarget>
    applicationListTargetOrgIdTeamIdPostTargetListFromJson(
  List? applicationListTargetOrgIdTeamIdPostTarget, [
  List<enums.ApplicationListTargetOrgIdTeamIdPostTarget>? defaultValue,
]) {
  if (applicationListTargetOrgIdTeamIdPostTarget == null) {
    return defaultValue ?? [];
  }

  return applicationListTargetOrgIdTeamIdPostTarget
      .map((e) =>
          applicationListTargetOrgIdTeamIdPostTargetFromJson(e.toString()))
      .toList();
}

List<enums.ApplicationListTargetOrgIdTeamIdPostTarget>?
    applicationListTargetOrgIdTeamIdPostTargetNullableListFromJson(
  List? applicationListTargetOrgIdTeamIdPostTarget, [
  List<enums.ApplicationListTargetOrgIdTeamIdPostTarget>? defaultValue,
]) {
  if (applicationListTargetOrgIdTeamIdPostTarget == null) {
    return defaultValue;
  }

  return applicationListTargetOrgIdTeamIdPostTarget
      .map((e) =>
          applicationListTargetOrgIdTeamIdPostTargetFromJson(e.toString()))
      .toList();
}

String? imageUploadImageTypePostImageTypeNullableToJson(
    enums.ImageUploadImageTypePostImageType?
        imageUploadImageTypePostImageType) {
  return imageUploadImageTypePostImageType?.value;
}

String? imageUploadImageTypePostImageTypeToJson(
    enums.ImageUploadImageTypePostImageType imageUploadImageTypePostImageType) {
  return imageUploadImageTypePostImageType.value;
}

enums.ImageUploadImageTypePostImageType
    imageUploadImageTypePostImageTypeFromJson(
  Object? imageUploadImageTypePostImageType, [
  enums.ImageUploadImageTypePostImageType? defaultValue,
]) {
  return enums.ImageUploadImageTypePostImageType.values.firstWhereOrNull(
          (e) => e.value == imageUploadImageTypePostImageType) ??
      defaultValue ??
      enums.ImageUploadImageTypePostImageType.swaggerGeneratedUnknown;
}

enums.ImageUploadImageTypePostImageType?
    imageUploadImageTypePostImageTypeNullableFromJson(
  Object? imageUploadImageTypePostImageType, [
  enums.ImageUploadImageTypePostImageType? defaultValue,
]) {
  if (imageUploadImageTypePostImageType == null) {
    return null;
  }
  return enums.ImageUploadImageTypePostImageType.values.firstWhereOrNull(
          (e) => e.value == imageUploadImageTypePostImageType) ??
      defaultValue;
}

String imageUploadImageTypePostImageTypeExplodedListToJson(
    List<enums.ImageUploadImageTypePostImageType>?
        imageUploadImageTypePostImageType) {
  return imageUploadImageTypePostImageType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> imageUploadImageTypePostImageTypeListToJson(
    List<enums.ImageUploadImageTypePostImageType>?
        imageUploadImageTypePostImageType) {
  if (imageUploadImageTypePostImageType == null) {
    return [];
  }

  return imageUploadImageTypePostImageType.map((e) => e.value!).toList();
}

List<enums.ImageUploadImageTypePostImageType>
    imageUploadImageTypePostImageTypeListFromJson(
  List? imageUploadImageTypePostImageType, [
  List<enums.ImageUploadImageTypePostImageType>? defaultValue,
]) {
  if (imageUploadImageTypePostImageType == null) {
    return defaultValue ?? [];
  }

  return imageUploadImageTypePostImageType
      .map((e) => imageUploadImageTypePostImageTypeFromJson(e.toString()))
      .toList();
}

List<enums.ImageUploadImageTypePostImageType>?
    imageUploadImageTypePostImageTypeNullableListFromJson(
  List? imageUploadImageTypePostImageType, [
  List<enums.ImageUploadImageTypePostImageType>? defaultValue,
]) {
  if (imageUploadImageTypePostImageType == null) {
    return defaultValue;
  }

  return imageUploadImageTypePostImageType
      .map((e) => imageUploadImageTypePostImageTypeFromJson(e.toString()))
      .toList();
}

String? imageSearchImageTypePostImageTypeNullableToJson(
    enums.ImageSearchImageTypePostImageType?
        imageSearchImageTypePostImageType) {
  return imageSearchImageTypePostImageType?.value;
}

String? imageSearchImageTypePostImageTypeToJson(
    enums.ImageSearchImageTypePostImageType imageSearchImageTypePostImageType) {
  return imageSearchImageTypePostImageType.value;
}

enums.ImageSearchImageTypePostImageType
    imageSearchImageTypePostImageTypeFromJson(
  Object? imageSearchImageTypePostImageType, [
  enums.ImageSearchImageTypePostImageType? defaultValue,
]) {
  return enums.ImageSearchImageTypePostImageType.values.firstWhereOrNull(
          (e) => e.value == imageSearchImageTypePostImageType) ??
      defaultValue ??
      enums.ImageSearchImageTypePostImageType.swaggerGeneratedUnknown;
}

enums.ImageSearchImageTypePostImageType?
    imageSearchImageTypePostImageTypeNullableFromJson(
  Object? imageSearchImageTypePostImageType, [
  enums.ImageSearchImageTypePostImageType? defaultValue,
]) {
  if (imageSearchImageTypePostImageType == null) {
    return null;
  }
  return enums.ImageSearchImageTypePostImageType.values.firstWhereOrNull(
          (e) => e.value == imageSearchImageTypePostImageType) ??
      defaultValue;
}

String imageSearchImageTypePostImageTypeExplodedListToJson(
    List<enums.ImageSearchImageTypePostImageType>?
        imageSearchImageTypePostImageType) {
  return imageSearchImageTypePostImageType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> imageSearchImageTypePostImageTypeListToJson(
    List<enums.ImageSearchImageTypePostImageType>?
        imageSearchImageTypePostImageType) {
  if (imageSearchImageTypePostImageType == null) {
    return [];
  }

  return imageSearchImageTypePostImageType.map((e) => e.value!).toList();
}

List<enums.ImageSearchImageTypePostImageType>
    imageSearchImageTypePostImageTypeListFromJson(
  List? imageSearchImageTypePostImageType, [
  List<enums.ImageSearchImageTypePostImageType>? defaultValue,
]) {
  if (imageSearchImageTypePostImageType == null) {
    return defaultValue ?? [];
  }

  return imageSearchImageTypePostImageType
      .map((e) => imageSearchImageTypePostImageTypeFromJson(e.toString()))
      .toList();
}

List<enums.ImageSearchImageTypePostImageType>?
    imageSearchImageTypePostImageTypeNullableListFromJson(
  List? imageSearchImageTypePostImageType, [
  List<enums.ImageSearchImageTypePostImageType>? defaultValue,
]) {
  if (imageSearchImageTypePostImageType == null) {
    return defaultValue;
  }

  return imageSearchImageTypePostImageType
      .map((e) => imageSearchImageTypePostImageTypeFromJson(e.toString()))
      .toList();
}

String? imageListImageTypePostImageTypeNullableToJson(
    enums.ImageListImageTypePostImageType? imageListImageTypePostImageType) {
  return imageListImageTypePostImageType?.value;
}

String? imageListImageTypePostImageTypeToJson(
    enums.ImageListImageTypePostImageType imageListImageTypePostImageType) {
  return imageListImageTypePostImageType.value;
}

enums.ImageListImageTypePostImageType imageListImageTypePostImageTypeFromJson(
  Object? imageListImageTypePostImageType, [
  enums.ImageListImageTypePostImageType? defaultValue,
]) {
  return enums.ImageListImageTypePostImageType.values.firstWhereOrNull(
          (e) => e.value == imageListImageTypePostImageType) ??
      defaultValue ??
      enums.ImageListImageTypePostImageType.swaggerGeneratedUnknown;
}

enums.ImageListImageTypePostImageType?
    imageListImageTypePostImageTypeNullableFromJson(
  Object? imageListImageTypePostImageType, [
  enums.ImageListImageTypePostImageType? defaultValue,
]) {
  if (imageListImageTypePostImageType == null) {
    return null;
  }
  return enums.ImageListImageTypePostImageType.values.firstWhereOrNull(
          (e) => e.value == imageListImageTypePostImageType) ??
      defaultValue;
}

String imageListImageTypePostImageTypeExplodedListToJson(
    List<enums.ImageListImageTypePostImageType>?
        imageListImageTypePostImageType) {
  return imageListImageTypePostImageType?.map((e) => e.value!).join(',') ?? '';
}

List<String> imageListImageTypePostImageTypeListToJson(
    List<enums.ImageListImageTypePostImageType>?
        imageListImageTypePostImageType) {
  if (imageListImageTypePostImageType == null) {
    return [];
  }

  return imageListImageTypePostImageType.map((e) => e.value!).toList();
}

List<enums.ImageListImageTypePostImageType>
    imageListImageTypePostImageTypeListFromJson(
  List? imageListImageTypePostImageType, [
  List<enums.ImageListImageTypePostImageType>? defaultValue,
]) {
  if (imageListImageTypePostImageType == null) {
    return defaultValue ?? [];
  }

  return imageListImageTypePostImageType
      .map((e) => imageListImageTypePostImageTypeFromJson(e.toString()))
      .toList();
}

List<enums.ImageListImageTypePostImageType>?
    imageListImageTypePostImageTypeNullableListFromJson(
  List? imageListImageTypePostImageType, [
  List<enums.ImageListImageTypePostImageType>? defaultValue,
]) {
  if (imageListImageTypePostImageType == null) {
    return defaultValue;
  }

  return imageListImageTypePostImageType
      .map((e) => imageListImageTypePostImageTypeFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
