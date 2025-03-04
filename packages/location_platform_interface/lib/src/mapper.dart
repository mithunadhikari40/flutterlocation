part of location_platform_interface;

/// Allow to map the return of the permission request
/// Will be deleted once Pigeon supports returning Enum
/// https://github.com/flutter/flutter/issues/87307
PermissionStatus permissionStatusFromInt(int permission) {
  switch (permission) {
    case 0:
      return PermissionStatus.granted;
    case 1:
      return PermissionStatus.grantedLimited;
    case 2:
      return PermissionStatus.denied;
    case 3:
      return PermissionStatus.deniedForever;
    default:
      throw Exception('Unknown permission status: $permission');
  }
}
