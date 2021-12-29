class Assets {
  const Assets._();

  static final images = Images._();
}

class Images {
  Images._();

  static const _basePath = 'assets/images';

  static const profilePhoto = '$_basePath/avatar.jpg';

  static const backgrounfPhoto = '$_basePath/background.png';
}
