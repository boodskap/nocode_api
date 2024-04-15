//### GENERATED CODE, DO NOT EDIT ###

part of 'nocode.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$Nocode extends Nocode {
  _$Nocode([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Nocode;

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
}
