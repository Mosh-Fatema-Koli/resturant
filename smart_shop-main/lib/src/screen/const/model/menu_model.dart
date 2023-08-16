class ModelMenu {
  ModelMenu({
    required this.links,
    required this.count,
    required this.results,
  });
  late final Links links;
  late final int count;
  late final List<Results> results;

  ModelMenu.fromJson(Map<String, dynamic> json){
    links = Links.fromJson(json['links']);
    count = json['count'];
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['links'] = links.toJson();
    _data['count'] = count;
    _data['results'] = results.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Links {
  Links({
    this.next,
    this.previous,
  });
  late final Null next;
  late final Null previous;

  Links.fromJson(Map<String, dynamic> json){
    next = null;
    previous = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['next'] = next;
    _data['previous'] = previous;
    return _data;
  }
}

class Results {
  Results({
    required this.id,
    required this.openingHours,
    required this.categorySet,
    required this.modifiergroupSet,
    required this.menuitemSet,
    required this.createdDate,
    required this.modifiedDate,
    required this.uid,
    required this.slug,
    required this.title,
    required this.description,
    required this.restaurant,
    required this.company,
    required this.locations,
    required this.cuisineTypes,
  });
  late final int id;
  late final List<dynamic> openingHours;
  late final List<CategorySet> categorySet;
  late final List<dynamic> modifiergroupSet;
  late final List<MenuitemSet> menuitemSet;
  late final String createdDate;
  late final String modifiedDate;
  late final String uid;
  late final String slug;
  late final String title;
  late final String description;
  late final int restaurant;
  late final int company;
  late final List<int> locations;
  late final List<dynamic> cuisineTypes;

  Results.fromJson(Map<String, dynamic> json){
    id = json['id'];
    openingHours = List.castFrom<dynamic, dynamic>(json['opening_hours']);
    categorySet = List.from(json['category_set']).map((e)=>CategorySet.fromJson(e)).toList();
    modifiergroupSet = List.castFrom<dynamic, dynamic>(json['modifiergroup_set']);
    menuitemSet = List.from(json['menuitem_set']).map((e)=>MenuitemSet.fromJson(e)).toList();
    createdDate = json['created_date'];
    modifiedDate = json['modified_date'];
    uid = json['uid'];
    slug = json['slug'];
    title = json['title'];
    description = json['description'];
    restaurant = json['restaurant'];
    company = json['company'];
    locations = List.castFrom<dynamic, int>(json['locations']);
    cuisineTypes = List.castFrom<dynamic, dynamic>(json['cuisine_types']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['opening_hours'] = openingHours;
    _data['category_set'] = categorySet.map((e)=>e.toJson()).toList();
    _data['modifiergroup_set'] = modifiergroupSet;
    _data['menuitem_set'] = menuitemSet.map((e)=>e.toJson()).toList();
    _data['created_date'] = createdDate;
    _data['modified_date'] = modifiedDate;
    _data['uid'] = uid;
    _data['slug'] = slug;
    _data['title'] = title;
    _data['description'] = description;
    _data['restaurant'] = restaurant;
    _data['company'] = company;
    _data['locations'] = locations;
    _data['cuisine_types'] = cuisineTypes;
    return _data;
  }
}

class CategorySet {
  CategorySet({
    required this.id,
    required this.menuitemCnt,
    required this.menuitemSet,
    required this.createdDate,
    required this.modifiedDate,
    required this.uid,
    required this.slug,
    required this.name,
    required this.description,
    required this.menu,
    required this.restaurant,
    required this.locations,
  });
  late final int id;
  late final int menuitemCnt;
  late final List<int> menuitemSet;
  late final String createdDate;
  late final String modifiedDate;
  late final String uid;
  late final String slug;
  late final String name;
  late final String description;
  late final int menu;
  late final int restaurant;
  late final List<dynamic> locations;

  CategorySet.fromJson(Map<String, dynamic> json){
    id = json['id'];
    menuitemCnt = json['menuitem_cnt'];
    menuitemSet = List.castFrom<dynamic, int>(json['menuitem_set']);
    createdDate = json['created_date'];
    modifiedDate = json['modified_date'];
    uid = json['uid'];
    slug = json['slug'];
    name = json['name'];
    description = json['description'];
    menu = json['menu'];
    restaurant = json['restaurant'];
    locations = List.castFrom<dynamic, dynamic>(json['locations']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['menuitem_cnt'] = menuitemCnt;
    _data['menuitem_set'] = menuitemSet;
    _data['created_date'] = createdDate;
    _data['modified_date'] = modifiedDate;
    _data['uid'] = uid;
    _data['slug'] = slug;
    _data['name'] = name;
    _data['description'] = description;
    _data['menu'] = menu;
    _data['restaurant'] = restaurant;
    _data['locations'] = locations;
    return _data;
  }
}

class MenuitemSet {
  MenuitemSet({
    required this.id,
    required this.images,
    this.originalImage,
    required this.createdDate,
    required this.modifiedDate,
    required this.uid,
    required this.slug,
    required this.name,
    required this.description,
    required this.basePrice,
    required this.virtualPrice,
    required this.currency,
    required this.menu,
    required this.restaurant,
    required this.extraNames,
    required this.extraDescriptions,
    required this.category,
    required this.locations,
  });
  late final int id;
  late final List<Images> images;
  late final OriginalImage? originalImage;
  late final String createdDate;
  late final String modifiedDate;
  late final String uid;
  late final String slug;
  late final String name;
  late final String description;
  late final double basePrice;
  late final double virtualPrice;
  late final String currency;
  late final int menu;
  late final int restaurant;
  late final List<int> extraNames;
  late final List<int> extraDescriptions;
  late final List<int> category;
  late final List<dynamic> locations;

  MenuitemSet.fromJson(Map<String, dynamic> json){
    id = json['id'];
    images = List.from(json['images']).map((e)=>Images.fromJson(e)).toList();
    originalImage = null;
    createdDate = json['created_date'];
    modifiedDate = json['modified_date'];
    uid = json['uid'];
    slug = json['slug'];
    name = json['name'];
    description = json['description'];
    basePrice = json['base_price'];
    virtualPrice = json['virtual_price'];
    currency = json['currency'];
    menu = json['menu'];
    restaurant = json['restaurant'];
    extraNames = List.castFrom<dynamic, int>(json['extra_names']);
    extraDescriptions = List.castFrom<dynamic, int>(json['extra_descriptions']);
    category = List.castFrom<dynamic, int>(json['category']);
    locations = List.castFrom<dynamic, dynamic>(json['locations']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['images'] = images.map((e)=>e.toJson()).toList();
    _data['original_image'] = originalImage;
    _data['created_date'] = createdDate;
    _data['modified_date'] = modifiedDate;
    _data['uid'] = uid;
    _data['slug'] = slug;
    _data['name'] = name;
    _data['description'] = description;
    _data['base_price'] = basePrice;
    _data['virtual_price'] = virtualPrice;
    _data['currency'] = currency;
    _data['menu'] = menu;
    _data['restaurant'] = restaurant;
    _data['extra_names'] = extraNames;
    _data['extra_descriptions'] = extraDescriptions;
    _data['category'] = category;
    _data['locations'] = locations;
    return _data;
  }
}

class Images {
  Images({
    required this.id,
    this.workingUrl,
    required this.createdDate,
    required this.modifiedDate,
    required this.remoteUrl,
    this.localUrl,
  });
  late final int id;
  late final Null workingUrl;
  late final String createdDate;
  late final String modifiedDate;
  late final String remoteUrl;
  late final Null localUrl;

  Images.fromJson(Map<String, dynamic> json){
    id = json['id'];
    workingUrl = json['working_url'];
    createdDate = json['created_date'];
    modifiedDate = json['modified_date'];
    remoteUrl = json['remote_url'];
    localUrl = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['working_url'] = workingUrl;
    _data['created_date'] = createdDate;
    _data['modified_date'] = modifiedDate;
    _data['remote_url'] = remoteUrl;
    _data['local_url'] = localUrl;
    return _data;
  }
}

class OriginalImage {
  OriginalImage({
    required this.id,
    required this.workingUrl,
    required this.createdDate,
    required this.modifiedDate,
    required this.remoteUrl,
    required this.localUrl,
  });
  late final int id;
  late final String workingUrl;
  late final String createdDate;
  late final String modifiedDate;
  late final String remoteUrl;
  late final String localUrl;

  OriginalImage.fromJson(Map<String, dynamic> json){
    id = json['id'];
    workingUrl = json['working_url'];
    createdDate = json['created_date'];
    modifiedDate = json['modified_date'];
    remoteUrl = json['remote_url'];
    localUrl = json['local_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['working_url'] = workingUrl;
    _data['created_date'] = createdDate;
    _data['modified_date'] = modifiedDate;
    _data['remote_url'] = remoteUrl;
    _data['local_url'] = localUrl;
    return _data;
  }
}