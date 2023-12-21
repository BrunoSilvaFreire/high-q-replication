import 'package:high_q_replication/providers/highq.dart';

class HighQ {
  static Uri getAuthorizationEndpoint(HighQDomain domain) {
    var domainName = domain.getUniqueName();
    return Uri.parse("https://$domainName.highq.com/$domainName/authorize.action");
  }

  static Uri getTokenEndpoint(HighQDomain domain) {
    var domainName = domain.getUniqueName();
    return Uri.parse("https://$domainName.highq.com/$domainName/api/oauth2/token");
  }

  static Uri getUri(HighQDomain domain) {
    var domainName = domain.getUniqueName();
    return Uri.parse("https://$domainName.highq.com/v1/$domainName/api/oauth2/token");
  }

}
