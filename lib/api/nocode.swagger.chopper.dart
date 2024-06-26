//### GENERATED CODE, DO NOT EDIT ###

part of 'nocode.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$Nocode extends Nocode {
  _$Nocode([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = Nocode;

  @override
  Future<Response<BaseRes>> _cleanup({String? token}) {
    final Uri $url = Uri.parse('/NoCode/del/cleanup');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BaseRes, BaseRes>($request);
  }

  @override
  Future<Response<String>> _createTemplate({
    required NoCodeTemplate? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/NoCode/post/create_template');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _createProperty({
    required NoCodeTemplate? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/NoCode/post/create_property');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AppProfile>> _getAppProfile({String? token}) {
    final Uri $url = Uri.parse('/Profile/get');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<AppProfile, AppProfile>($request);
  }

  @override
  Future<Response<ProfileEntityRes>> _updateMyProfile({
    required String? id,
    required ProfileInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Profile/update/${id}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ProfileEntityRes, ProfileEntityRes>($request);
  }

  @override
  Future<Response<OrganizationEntityRes>> _createNewOrganization({
    required OrganizationInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/create');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrganizationEntityRes, OrganizationEntityRes>($request);
  }

  @override
  Future<Response<OrganizationEntityRes>> _updateOrganization({
    required String? orgId,
    required OrganizationInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/update/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrganizationEntityRes, OrganizationEntityRes>($request);
  }

  @override
  Future<Response<OrganizationEntityRes>> _getOrganization({
    required String? orgId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/get/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrganizationEntityRes, OrganizationEntityRes>($request);
  }

  @override
  Future<Response<OrganizationEntityRes>> _deleteOrganization({
    required String? orgId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/remove/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrganizationEntityRes, OrganizationEntityRes>($request);
  }

  @override
  Future<Response<OrganizationArrayRes>> _searchOrganizations({
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/search');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrganizationArrayRes, OrganizationArrayRes>($request);
  }

  @override
  Future<Response<OrganizationArrayRes>> _listOrganizations({
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/list');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrganizationArrayRes, OrganizationArrayRes>($request);
  }

  @override
  Future<Response<SubscriptionEntityRes>> _createNewSubscription({
    required String? orgId,
    required String? profileId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Subscription/subscribe/${orgId}/${profileId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<SubscriptionEntityRes, SubscriptionEntityRes>($request);
  }

  @override
  Future<Response<SubscriptionEntityRes>> _deleteSubscription({
    required String? orgId,
    required String? profileId,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Subscription/unsubscribe/${orgId}/${profileId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<SubscriptionEntityRes, SubscriptionEntityRes>($request);
  }

  @override
  Future<Response<OrgProfileEntityRes>> _addOrganizationuser({
    required String? orgId,
    required String? userId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/user/add/${orgId}/${userId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrgProfileEntityRes, OrgProfileEntityRes>($request);
  }

  @override
  Future<Response<OrgProfileEntityRes>> _deleteOrganizationuser({
    required String? orgId,
    required String? userId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/user/remove/${orgId}/${userId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrgProfileEntityRes, OrgProfileEntityRes>($request);
  }

  @override
  Future<Response<OrgProfileArrayRes>> _listOrganizationUsers({
    required String? orgId,
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/user/list/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrgProfileArrayRes, OrgProfileArrayRes>($request);
  }

  @override
  Future<Response<OrgProfileArrayRes>> _searchOrganizationUsers({
    required String? orgId,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Organization/user/search/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrgProfileArrayRes, OrgProfileArrayRes>($request);
  }

  @override
  Future<Response<TeamEntityRes>> _createNewTeam({
    required String? orgId,
    required TeamInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Team/create/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<TeamEntityRes, TeamEntityRes>($request);
  }

  @override
  Future<Response<TeamEntityRes>> _updateTeam({
    required String? orgId,
    required String? teamId,
    required TeamInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Team/update/${orgId}/${teamId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<TeamEntityRes, TeamEntityRes>($request);
  }

  @override
  Future<Response<TeamEntityRes>> _deleteTeam({
    required String? orgId,
    required String? teamId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Team/remove/${orgId}/${teamId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<TeamEntityRes, TeamEntityRes>($request);
  }

  @override
  Future<Response<TeamArrayRes>> _searchTeams({
    required String? orgId,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Team/search/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<TeamArrayRes, TeamArrayRes>($request);
  }

  @override
  Future<Response<TeamArrayRes>> _listTeams({
    required String? orgId,
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Team/list/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<TeamArrayRes, TeamArrayRes>($request);
  }

  @override
  Future<Response<TeamProfileEntityRes>> _addTeamUser({
    required String? orgId,
    required String? teamId,
    required String? userId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Team/user/add/${orgId}/${teamId}/${userId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<TeamProfileEntityRes, TeamProfileEntityRes>($request);
  }

  @override
  Future<Response<TeamProfileEntityRes>> _deleteTeamUser({
    required String? orgId,
    required String? teamId,
    required String? userId,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Team/user/remove/${orgId}/${teamId}/${userId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<TeamProfileEntityRes, TeamProfileEntityRes>($request);
  }

  @override
  Future<Response<TeamProfileArrayRes>> _listTeamUsers({
    required String? orgId,
    required String? teamId,
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Team/user/list/${orgId}/${teamId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<TeamProfileArrayRes, TeamProfileArrayRes>($request);
  }

  @override
  Future<Response<TeamProfileArrayRes>> _searchTeamUsers({
    required String? orgId,
    required String? teamId,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Team/user/search/${orgId}/${teamId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<TeamProfileArrayRes, TeamProfileArrayRes>($request);
  }

  @override
  Future<Response<ApplicationEntityRes>> _createNewApplication({
    required String? target,
    required String? orgId,
    required String? teamId,
    required ApplicationInfo? body,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Application/create/${target}/${orgId}/${teamId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ApplicationEntityRes, ApplicationEntityRes>($request);
  }

  @override
  Future<Response<ApplicationEntityRes>> _updateApplication({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required ApplicationInfo? body,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Application/update/${orgId}/${teamId}/${appId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ApplicationEntityRes, ApplicationEntityRes>($request);
  }

  @override
  Future<Response<ApplicationEntityRes>> _deleteApplication({
    required String? orgId,
    required String? teamId,
    required String? appId,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Application/remove/${orgId}/${teamId}/${appId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<ApplicationEntityRes, ApplicationEntityRes>($request);
  }

  @override
  Future<Response<ApplicationArrayRes>> _searchApplications({
    required String? target,
    required String? orgId,
    required String? teamId,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Application/search/${target}/${orgId}/${teamId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ApplicationArrayRes, ApplicationArrayRes>($request);
  }

  @override
  Future<Response<ApplicationArrayRes>> _listApplications({
    required String? target,
    required String? orgId,
    required String? teamId,
    required ListReq? body,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Application/list/${target}/${orgId}/${teamId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ApplicationArrayRes, ApplicationArrayRes>($request);
  }

  @override
  Future<Response<BaseRes>> _saveApplication({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required ApplicationModel? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Application/save/${orgId}/${teamId}/${appId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<BaseRes, BaseRes>($request);
  }

  @override
  Future<Response<PageEntityRes>> _createNewPage({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required PageInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Page/create/${orgId}/${teamId}/${appId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PageEntityRes, PageEntityRes>($request);
  }

  @override
  Future<Response<PageEntityRes>> _updatePage({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required String? pageId,
    required PageInfo? body,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Page/update/${orgId}/${teamId}/${appId}/${pageId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PageEntityRes, PageEntityRes>($request);
  }

  @override
  Future<Response<PageEntityRes>> _deletePage({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required String? pageId,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Page/remove/${orgId}/${teamId}/${appId}/${pageId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<PageEntityRes, PageEntityRes>($request);
  }

  @override
  Future<Response<PageArrayRes>> _searchPages({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Page/search/${orgId}/${teamId}/${appId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PageArrayRes, PageArrayRes>($request);
  }

  @override
  Future<Response<PageArrayRes>> _listPages({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Page/list/${orgId}/${teamId}/${appId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PageArrayRes, PageArrayRes>($request);
  }

  @override
  Future<Response<BaseRes>> _savePage({
    required String? orgId,
    required String? teamId,
    required String? appId,
    required String? pageId,
    required PageModel? body,
    String? token,
  }) {
    final Uri $url =
        Uri.parse('/Page/save/${orgId}/${teamId}/${appId}/${pageId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<BaseRes, BaseRes>($request);
  }

  @override
  Future<Response<ImageFileEntityRes>> _uploadImage({
    required String? imageType,
    String? orgId,
    String? teamId,
    String? appId,
    String? pageId,
    required List<int>? file,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Image/upload/${imageType}');
    final Map<String, String> $headers = {
      if (orgId != null) 'orgId': orgId,
      if (teamId != null) 'teamId': teamId,
      if (appId != null) 'appId': appId,
      if (pageId != null) 'pageId': pageId,
      if (token != null) 'TOKEN': token,
    };
    final $body = <String, dynamic>{'file': file};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ImageFileEntityRes, ImageFileEntityRes>($request);
  }

  @override
  Future<Response<ImageFileEntityRes>> _deleteImage({
    required String? id,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Image/remove/${id}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<ImageFileEntityRes, ImageFileEntityRes>($request);
  }

  @override
  Future<Response<List<int>>> _domanloadImage({
    required String? domainKey,
    required String? id,
  }) {
    final Uri $url = Uri.parse('/Image/download/${domainKey}/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<int>, int>($request);
  }

  @override
  Future<Response<ImageFileArrayRes>> _searchImages({
    required String? imageType,
    String? orgId,
    String? teamId,
    String? appId,
    String? pageId,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Image/search/${imageType}');
    final Map<String, String> $headers = {
      if (orgId != null) 'orgId': orgId,
      if (teamId != null) 'teamId': teamId,
      if (appId != null) 'appId': appId,
      if (pageId != null) 'pageId': pageId,
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ImageFileArrayRes, ImageFileArrayRes>($request);
  }

  @override
  Future<Response<ImageFileArrayRes>> _listImages({
    required String? imageType,
    String? orgId,
    String? teamId,
    String? appId,
    String? pageId,
    required ListReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Image/list/${imageType}');
    final Map<String, String> $headers = {
      if (orgId != null) 'orgId': orgId,
      if (teamId != null) 'teamId': teamId,
      if (appId != null) 'appId': appId,
      if (pageId != null) 'pageId': pageId,
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ImageFileArrayRes, ImageFileArrayRes>($request);
  }

  @override
  Future<Response<PlanEntityRes>> _createNewPlan({
    required PlanInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Plan/create');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PlanEntityRes, PlanEntityRes>($request);
  }

  @override
  Future<Response<PlanEntityRes>> _updatePlan({
    required String? planId,
    required PlanInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Plan/update/${planId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PlanEntityRes, PlanEntityRes>($request);
  }

  @override
  Future<Response<PlanArrayRes>> _searchPlans({
    String? includeCustomPlans,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Plan/search');
    final Map<String, String> $headers = {
      if (includeCustomPlans != null) 'includeCustomPlans': includeCustomPlans,
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<PlanArrayRes, PlanArrayRes>($request);
  }

  @override
  Future<Response<PlanEntityRes>> _getPlan({
    required String? planId,
    required String? currency,
  }) {
    final Uri $url = Uri.parse('/Plan/get/${planId}/${currency}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PlanEntityRes, PlanEntityRes>($request);
  }

  @override
  Future<Response<PlanCurrencyListRes>> _listCurrencies() {
    final Uri $url = Uri.parse('/Plan/list/currencies');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PlanCurrencyListRes, PlanCurrencyListRes>($request);
  }

  @override
  Future<Response<BaseRes>> _clearAllPlans({String? token}) {
    final Uri $url = Uri.parse('/Plan/clear');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BaseRes, BaseRes>($request);
  }

  @override
  Future<Response<OrgPlanEntityRes>> _createOrUpdateOrgPlan({
    required PlanChangeRequest? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/OrgPlan/upsert');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrgPlanEntityRes, OrgPlanEntityRes>($request);
  }

  @override
  Future<Response<OrgPlanEntityRes>> _addComponentsToPlan({
    required AddComponentRequest? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/OrgPlan/component/add');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrgPlanEntityRes, OrgPlanEntityRes>($request);
  }

  @override
  Future<Response<OrgPlanEntityRes>> _getOrgPlan({
    required String? orgId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/OrgPlan/get/${orgId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrgPlanEntityRes, OrgPlanEntityRes>($request);
  }

  @override
  Future<Response<BaseRes>> _clearOrgPlans({String? token}) {
    final Uri $url = Uri.parse('/OrgPlan/clean');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BaseRes, BaseRes>($request);
  }

  @override
  Future<Response<InvoiceArrayRes>> _searchInvoices({
    String? orgId,
    String? paymentStatus,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Invoice/search');
    final Map<String, String> $headers = {
      if (orgId != null) 'orgId': orgId,
      if (paymentStatus != null) 'paymentStatus': paymentStatus,
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<InvoiceArrayRes, InvoiceArrayRes>($request);
  }

  @override
  Future<Response<InvoiceEntityRes>> _getInvoice({
    required String? invoiceId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Invoice/get/${invoiceId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<InvoiceEntityRes, InvoiceEntityRes>($request);
  }

  @override
  Future<Response<InvoiceEntityRes>> _setPaymentStatus({
    required String? paymentStatus,
    required PaidInvoiceRequest? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Invoice/set/status/${paymentStatus}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<InvoiceEntityRes, InvoiceEntityRes>($request);
  }

  @override
  Future<Response<InvoiceEntityRes>> _invoicePaid({
    required PaidInvoiceRequest? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Invoice/paid');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<InvoiceEntityRes, InvoiceEntityRes>($request);
  }

  @override
  Future<Response<InvoiceEntityRes>> _deleteInvoice({
    required String? invoiceId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Invoice/remove/${invoiceId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<InvoiceEntityRes, InvoiceEntityRes>($request);
  }

  @override
  Future<Response<OrderEntityRes>> _createNewOrder({
    required OrderInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Orders/create');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrderEntityRes, OrderEntityRes>($request);
  }

  @override
  Future<Response<OrderEntityRes>> _updateOrder({
    required String? orderId,
    required OrderInfo? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Orders/update/${orderId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrderEntityRes, OrderEntityRes>($request);
  }

  @override
  Future<Response<OrderArrayRes>> _searchOrders({
    String? orgId,
    String? orderStatus,
    required SearchReq? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Orders/search');
    final Map<String, String> $headers = {
      if (orgId != null) 'orgId': orgId,
      if (orderStatus != null) 'orderStatus': orderStatus,
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrderArrayRes, OrderArrayRes>($request);
  }

  @override
  Future<Response<OrderEntityRes>> _getOrder({
    required String? orderId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Orders/get/${orderId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrderEntityRes, OrderEntityRes>($request);
  }

  @override
  Future<Response<OrderEntityRes>> _cancelOrder({
    required String? orderId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Orders/cancel/${orderId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrderEntityRes, OrderEntityRes>($request);
  }

  @override
  Future<Response<OrderEntityRes>> _orderPaid({
    required PaidOrderRequest? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Orders/paid');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrderEntityRes, OrderEntityRes>($request);
  }

  @override
  Future<Response<OrderEntityRes>> _deleteOrder({
    required String? orderId,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Orders/remove/${orderId}');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrderEntityRes, OrderEntityRes>($request);
  }

  @override
  Future<Response<OrderEntityRes>> _createStripePaymentSecret({
    required StripePaymentSecretArgs? body,
    String? token,
  }) {
    final Uri $url = Uri.parse('/Orders/stripe/payment/secrete');
    final Map<String, String> $headers = {
      if (token != null) 'TOKEN': token,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrderEntityRes, OrderEntityRes>($request);
  }
}
