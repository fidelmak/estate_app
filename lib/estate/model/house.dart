class Houses {
  String street;
  String city;
  String state;
  String zipCode;

  Houses({
    required this.street,
    required this.city,
    required this.state,
    required this.zipCode,
  });

  factory Houses.fromJson(Map<String, dynamic> json) {
    return Houses(
      street: json['street'],
      city: json['city'].toString(),
      state: json['state'].toString(),
      zipCode: json['zip_code'],
    );
  }
}

class FeaturedListing {
  String listingId;
  String title;
  String price;
  int bedrooms;
  int bathrooms;
  int sqft;
  String imageUrl;

  FeaturedListing({
    required this.listingId,
    required this.title,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.sqft,
    required this.imageUrl,
  });

  factory FeaturedListing.fromJson(Map<String, dynamic> json) {
    return FeaturedListing(
      listingId: json['listing_id'],
      title: json['title'],
      price: json['price'],
      bedrooms: json['bedrooms'],
      bathrooms: json['bathrooms'],
      sqft: json['sqft'],
      imageUrl: json['image_url'],
    );
  }
}

class ListingCategory {
  String categoryName;
  String description;
  List<FeaturedListing> featuredListings;

  ListingCategory({
    required this.categoryName,
    required this.description,
    required this.featuredListings,
  });

  factory ListingCategory.fromJson(Map<String, dynamic> json) {
    List<dynamic> featuredListingsJson = json['featured_listings'];
    List<FeaturedListing> featuredListings = featuredListingsJson
        .map((json) => FeaturedListing.fromJson(json))
        .toList();

    return ListingCategory(
      categoryName: json['category_name'],
      description: json['description'],
      featuredListings: featuredListings,
    );
  }
}

class HouseListingCompany {
  String companyName;
  String website;
  String contactEmail;
  String contactPhone;
  Houses houses;
  List<ListingCategory> listingCategories;

  HouseListingCompany({
    required this.companyName,
    required this.website,
    required this.contactEmail,
    required this.contactPhone,
    required this.houses,
    required this.listingCategories,
  });

  factory HouseListingCompany.fromJson(Map<String, dynamic> json) {
    List<dynamic> listingCategoriesJson = json['listing_categories'];
    List<ListingCategory> listingCategories = listingCategoriesJson
        .map((json) => ListingCategory.fromJson(json))
        .toList();

    return HouseListingCompany(
      companyName: json['company_name'],
      website: json['website'],
      contactEmail: json['contact_email'],
      contactPhone: json['contact_phone'],
      houses: Houses.fromJson(json['address']),
      listingCategories: listingCategories,
    );
  }
}
