class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.permalink,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.type,
    required this.status,
    required this.featured,
    required this.catalogVisibility,
    required this.description,
    required this.shortDescription,
    required this.sku,
    required this.price,
    required this.regularPrice,
    required this.salePrice,
    required this.dateOnSaleFrom,
    required this.dateOnSaleFromGmt,
    required this.dateOnSaleTo,
    required this.dateOnSaleToGmt,
    required this.onSale,
    required this.purchasable,
    required this.totalSales,
    required this.virtual,
    required this.downloadable,
    required this.downloads,
    required this.downloadLimit,
    required this.downloadExpiry,
    required this.externalUrl,
    required this.buttonText,
    required this.taxStatus,
    required this.taxClass,
    required this.manageStock,
    required this.stockQuantity,
    required this.backorders,
    required this.backordersAllowed,
    required this.backordered,
    required this.lowStockAmount,
    required this.soldIndividually,
    required this.weight,
    required this.dimensions,
    required this.shippingRequired,
    required this.shippingTaxable,
    required this.shippingClass,
    required this.shippingClassId,
    required this.reviewsAllowed,
    required this.averageRating,
    required this.ratingCount,
    required this.upsellIds,
    required this.crossSellIds,
    required this.parentId,
    required this.purchaseNote,
    required this.categories,
    required this.tags,
    required this.images,
    required this.attributes,
    required this.defaultAttributes,
    required this.variations,
    required this.groupedProducts,
    required this.menuOrder,
    required this.priceHtml,
    required this.relatedIds,
    required this.metaData,
    required this.stockStatus,
    required this.hasOptions,
    required this.aioseoNotices,
    required this.links,
    this.quantity = 0,
    this.totalPrice,
  });

  int quantity;
  double? totalPrice;
  final int? id;
  final String? name;
  final String? slug;
  final String? permalink;
  final DateTime? dateCreated;
  final DateTime? dateCreatedGmt;
  final DateTime? dateModified;
  final DateTime? dateModifiedGmt;
  final String? type;
  final String? status;
  final bool? featured;
  final String? catalogVisibility;
  final String? description;
  final String? shortDescription;
  final String? sku;
  final String? price;
  final String? regularPrice;
  final String? salePrice;
  final dynamic dateOnSaleFrom;
  final dynamic dateOnSaleFromGmt;
  final dynamic dateOnSaleTo;
  final dynamic dateOnSaleToGmt;
  final bool? onSale;
  final bool? purchasable;
  final int? totalSales;
  final bool? virtual;
  final bool? downloadable;
  final List<dynamic> downloads;
  final int? downloadLimit;
  final int? downloadExpiry;
  final String? externalUrl;
  final String? buttonText;
  final String? taxStatus;
  final String? taxClass;
  final bool? manageStock;
  final dynamic stockQuantity;
  final String? backorders;
  final bool? backordersAllowed;
  final bool? backordered;
  final dynamic lowStockAmount;
  final bool? soldIndividually;
  final String? weight;
  final Dimensions? dimensions;
  final bool? shippingRequired;
  final bool? shippingTaxable;
  final String? shippingClass;
  final int? shippingClassId;
  final bool? reviewsAllowed;
  final String? averageRating;
  final int? ratingCount;
  final List<dynamic> upsellIds;
  final List<dynamic> crossSellIds;
  final int? parentId;
  final String? purchaseNote;
  final List<Category> categories;
  final List<dynamic> tags;
  final List<ProductImage> images;
  final List<Attribute> attributes;
  final List<dynamic> defaultAttributes;
  final List<int> variations;
  final List<dynamic> groupedProducts;
  final int? menuOrder;
  final String? priceHtml;
  final List<int> relatedIds;
  final List<MetaDatum> metaData;
  final String? stockStatus;
  final bool? hasOptions;
  final List<dynamic> aioseoNotices;
  final Links? links;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"],
      name: json["name"],
      slug: json["slug"],
      permalink: json["permalink"],
      dateCreated: DateTime.tryParse(json["date_created"] ?? ""),
      dateCreatedGmt: DateTime.tryParse(json["date_created_gmt"] ?? ""),
      dateModified: DateTime.tryParse(json["date_modified"] ?? ""),
      dateModifiedGmt: DateTime.tryParse(json["date_modified_gmt"] ?? ""),
      type: json["type"],
      status: json["status"],
      featured: json["featured"],
      catalogVisibility: json["catalog_visibility"],
      description: json["description"],
      shortDescription: json["short_description"],
      sku: json["sku"],
      price: json["price"],
      totalPrice: double.parse(json['price']),
      regularPrice: json["regular_price"],
      salePrice: json["sale_price"],
      dateOnSaleFrom: json["date_on_sale_from"],
      dateOnSaleFromGmt: json["date_on_sale_from_gmt"],
      dateOnSaleTo: json["date_on_sale_to"],
      dateOnSaleToGmt: json["date_on_sale_to_gmt"],
      onSale: json["on_sale"],
      purchasable: json["purchasable"],
      totalSales: json["total_sales"],
      virtual: json["virtual"],
      downloadable: json["downloadable"],
      downloads: json["downloads"] == null
          ? []
          : List<dynamic>.from(json["downloads"]!.map((x) => x)),
      downloadLimit: json["download_limit"],
      downloadExpiry: json["download_expiry"],
      externalUrl: json["external_url"],
      buttonText: json["button_text"],
      taxStatus: json["tax_status"],
      taxClass: json["tax_class"],
      manageStock: json["manage_stock"],
      stockQuantity: json["stock_quantity"],
      backorders: json["backorders"],
      backordersAllowed: json["backorders_allowed"],
      backordered: json["backordered"],
      lowStockAmount: json["low_stock_amount"],
      soldIndividually: json["sold_individually"],
      weight: json["weight"],
      dimensions: json["dimensions"] == null
          ? null
          : Dimensions.fromJson(json["dimensions"]),
      shippingRequired: json["shipping_required"],
      shippingTaxable: json["shipping_taxable"],
      shippingClass: json["shipping_class"],
      shippingClassId: json["shipping_class_id"],
      reviewsAllowed: json["reviews_allowed"],
      averageRating: json["average_rating"],
      ratingCount: json["rating_count"],
      upsellIds: json["upsell_ids"] == null
          ? []
          : List<dynamic>.from(json["upsell_ids"]!.map((x) => x)),
      crossSellIds: json["cross_sell_ids"] == null
          ? []
          : List<dynamic>.from(json["cross_sell_ids"]!.map((x) => x)),
      parentId: json["parent_id"],
      purchaseNote: json["purchase_note"],
      categories: json["categories"] == null
          ? []
          : List<Category>.from(
              json["categories"]!.map((x) => Category.fromJson(x))),
      tags: json["tags"] == null
          ? []
          : List<dynamic>.from(json["tags"]!.map((x) => x)),
      images: json["images"] == null
          ? []
          : List<ProductImage>.from(
              json["images"]!.map((x) => ProductImage.fromJson(x))),
      attributes: json["attributes"] == null
          ? []
          : List<Attribute>.from(
              json["attributes"]!.map((x) => Attribute.fromJson(x))),
      defaultAttributes: json["default_attributes"] == null
          ? []
          : List<dynamic>.from(json["default_attributes"]!.map((x) => x)),
      variations: json["variations"] == null
          ? []
          : List<int>.from(json["variations"]!.map((x) => x)),
      groupedProducts: json["grouped_products"] == null
          ? []
          : List<dynamic>.from(json["grouped_products"]!.map((x) => x)),
      menuOrder: json["menu_order"],
      priceHtml: json["price_html"],
      relatedIds: json["related_ids"] == null
          ? []
          : List<int>.from(json["related_ids"]!.map((x) => x)),
      metaData: json["meta_data"] == null
          ? []
          : List<MetaDatum>.from(
              json["meta_data"]!.map((x) => MetaDatum.fromJson(x))),
      stockStatus: json["stock_status"],
      hasOptions: json["has_options"],
      aioseoNotices: json["aioseo_notices"] == null
          ? []
          : List<dynamic>.from(json["aioseo_notices"]!.map((x) => x)),
      links: json["_links"] == null ? null : Links.fromJson(json["_links"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "permalink": permalink,
        "date_created": dateCreated?.toIso8601String(),
        "date_created_gmt": dateCreatedGmt?.toIso8601String(),
        "date_modified": dateModified?.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt?.toIso8601String(),
        "type": type,
        "status": status,
        "featured": featured,
        "catalog_visibility": catalogVisibility,
        "description": description,
        "short_description": shortDescription,
        "sku": sku,
        "price": price,
        "regular_price": regularPrice,
        "sale_price": salePrice,
        "date_on_sale_from": dateOnSaleFrom,
        "date_on_sale_from_gmt": dateOnSaleFromGmt,
        "date_on_sale_to": dateOnSaleTo,
        "date_on_sale_to_gmt": dateOnSaleToGmt,
        "on_sale": onSale,
        "purchasable": purchasable,
        "total_sales": totalSales,
        "virtual": virtual,
        "downloadable": downloadable,
        "downloads": downloads.map((x) => x).toList(),
        "download_limit": downloadLimit,
        "download_expiry": downloadExpiry,
        "external_url": externalUrl,
        "button_text": buttonText,
        "tax_status": taxStatus,
        "tax_class": taxClass,
        "manage_stock": manageStock,
        "stock_quantity": stockQuantity,
        "backorders": backorders,
        "backorders_allowed": backordersAllowed,
        "backordered": backordered,
        "low_stock_amount": lowStockAmount,
        "sold_individually": soldIndividually,
        "weight": weight,
        "dimensions": dimensions?.toJson(),
        "shipping_required": shippingRequired,
        "shipping_taxable": shippingTaxable,
        "shipping_class": shippingClass,
        "shipping_class_id": shippingClassId,
        "reviews_allowed": reviewsAllowed,
        "average_rating": averageRating,
        "rating_count": ratingCount,
        "upsell_ids": upsellIds.map((x) => x).toList(),
        "cross_sell_ids": crossSellIds.map((x) => x).toList(),
        "parent_id": parentId,
        "purchase_note": purchaseNote,
        "categories": categories.map((x) => x.toJson()).toList(),
        "tags": tags.map((x) => x).toList(),
        "images": images.map((x) => x.toJson()).toList(),
        "attributes": attributes.map((x) => x.toJson()).toList(),
        "default_attributes": defaultAttributes.map((x) => x).toList(),
        "variations": variations.map((x) => x).toList(),
        "grouped_products": groupedProducts.map((x) => x).toList(),
        "menu_order": menuOrder,
        "price_html": priceHtml,
        "related_ids": relatedIds.map((x) => x).toList(),
        "meta_data": metaData.map((x) => x.toJson()).toList(),
        "stock_status": stockStatus,
        "has_options": hasOptions,
        "aioseo_notices": aioseoNotices.map((x) => x).toList(),
        "_links": links?.toJson(),
      };
}

class Attribute {
  Attribute({
    required this.id,
    required this.name,
    required this.position,
    required this.visible,
    required this.variation,
    required this.options,
  });

  final int? id;
  final String? name;
  final int? position;
  final bool? visible;
  final bool? variation;
  final List<String> options;

  factory Attribute.fromJson(Map<String, dynamic> json) {
    return Attribute(
      id: json["id"],
      name: json["name"],
      position: json["position"],
      visible: json["visible"],
      variation: json["variation"],
      options: json["options"] == null
          ? []
          : List<String>.from(json["options"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "position": position,
        "visible": visible,
        "variation": variation,
        "options": options.map((x) => x).toList(),
      };
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.slug,
  });

  final int? id;
  final String? name;
  final String? slug;

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      name: json["name"],
      slug: json["slug"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
      };
}

class Dimensions {
  Dimensions({
    required this.length,
    required this.width,
    required this.height,
  });

  final String? length;
  final String? width;
  final String? height;

  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return Dimensions(
      length: json["length"],
      width: json["width"],
      height: json["height"],
    );
  }

  Map<String, dynamic> toJson() => {
        "length": length,
        "width": width,
        "height": height,
      };
}

class ProductImage {
  ProductImage({
    required this.id,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.src,
    required this.name,
    required this.alt,
  });

  final int? id;
  final DateTime? dateCreated;
  final DateTime? dateCreatedGmt;
  final DateTime? dateModified;
  final DateTime? dateModifiedGmt;
  final String? src;
  final String? name;
  final String? alt;

  factory ProductImage.fromJson(Map<String, dynamic> json) {
    return ProductImage(
      id: json["id"],
      dateCreated: DateTime.tryParse(json["date_created"] ?? ""),
      dateCreatedGmt: DateTime.tryParse(json["date_created_gmt"] ?? ""),
      dateModified: DateTime.tryParse(json["date_modified"] ?? ""),
      dateModifiedGmt: DateTime.tryParse(json["date_modified_gmt"] ?? ""),
      src: json["src"],
      name: json["name"],
      alt: json["alt"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "date_created": dateCreated?.toIso8601String(),
        "date_created_gmt": dateCreatedGmt?.toIso8601String(),
        "date_modified": dateModified?.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt?.toIso8601String(),
        "src": src,
        "name": name,
        "alt": alt,
      };
}

class Links {
  Links({
    required this.self,
    required this.collection,
  });

  final List<Collection> self;
  final List<Collection> collection;

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      self: json["self"] == null
          ? []
          : List<Collection>.from(
              json["self"]!.map((x) => Collection.fromJson(x))),
      collection: json["collection"] == null
          ? []
          : List<Collection>.from(
              json["collection"]!.map((x) => Collection.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "self": self.map((x) => x.toJson()).toList(),
        "collection": collection.map((x) => x.toJson()).toList(),
      };
}

class Collection {
  Collection({
    required this.href,
  });

  final String? href;

  factory Collection.fromJson(Map<String, dynamic> json) {
    return Collection(
      href: json["href"],
    );
  }

  Map<String, dynamic> toJson() => {
        "href": href,
      };
}

class MetaDatum {
  MetaDatum({
    required this.id,
    required this.key,
    required this.value,
  });

  final int? id;
  final String? key;
  final dynamic value;

  factory MetaDatum.fromJson(Map<String, dynamic> json) {
    return MetaDatum(
      id: json["id"],
      key: json["key"],
      value: json["value"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "value": value,
      };
}

class ValueElement {
  ValueElement({
    required this.bubbleHot,
    required this.productVideoUpload,
    required this.productVideoLink,
    required this.productVideoSize,
    required this.productSizeGuide,
    required this.productImageSimpleSlide,
    required this.fakeView,
    required this.fakeSold,
    required this.fakeInCart,
    required this.nasaSpecifications,
    required this.nasaSidebar,
    required this.nasaLayout,
    required this.nasaLayoutBg,
    required this.nasaImageLayout,
    required this.nasaImageStyle,
    required this.nasaThumbStyle,
    required this.nasaHalfFullSlide,
    required this.nasaFullInfoCol,
    required this.nasaTabStyle,
    required this.nasaInfiniteSlide,
    required this.bulkDsctType,
    required this.product360Degree,
  });

  final String? bubbleHot;
  final String? productVideoUpload;
  final String? productVideoLink;
  final String? productVideoSize;
  final String? productSizeGuide;
  final String? productImageSimpleSlide;
  final String? fakeView;
  final String? fakeSold;
  final String? fakeInCart;
  final String? nasaSpecifications;
  final String? nasaSidebar;
  final String? nasaLayout;
  final String? nasaLayoutBg;
  final String? nasaImageLayout;
  final String? nasaImageStyle;
  final String? nasaThumbStyle;
  final String? nasaHalfFullSlide;
  final String? nasaFullInfoCol;
  final String? nasaTabStyle;
  final String? nasaInfiniteSlide;
  final String? bulkDsctType;
  final String? product360Degree;

  factory ValueElement.fromJson(Map<String, dynamic> json) {
    return ValueElement(
      bubbleHot: json["_bubble_hot"],
      productVideoUpload: json["_product_video_upload"],
      productVideoLink: json["_product_video_link"],
      productVideoSize: json["_product_video_size"],
      productSizeGuide: json["_product_size_guide"],
      productImageSimpleSlide: json["_product_image_simple_slide"],
      fakeView: json["_fake_view"],
      fakeSold: json["_fake_sold"],
      fakeInCart: json["_fake_in_cart"],
      nasaSpecifications: json["nasa_specifications"],
      nasaSidebar: json["nasa_sidebar"],
      nasaLayout: json["nasa_layout"],
      nasaLayoutBg: json["nasa_layout_bg"],
      nasaImageLayout: json["nasa_image_layout"],
      nasaImageStyle: json["nasa_image_style"],
      nasaThumbStyle: json["nasa_thumb_style"],
      nasaHalfFullSlide: json["nasa_half_full_slide"],
      nasaFullInfoCol: json["nasa_full_info_col"],
      nasaTabStyle: json["nasa_tab_style"],
      nasaInfiniteSlide: json["nasa_infinite_slide"],
      bulkDsctType: json["_bulk_dsct_type"],
      product360Degree: json["_product_360_degree"],
    );
  }

  Map<String, dynamic> toJson() => {
        "_bubble_hot": bubbleHot,
        "_product_video_upload": productVideoUpload,
        "_product_video_link": productVideoLink,
        "_product_video_size": productVideoSize,
        "_product_size_guide": productSizeGuide,
        "_product_image_simple_slide": productImageSimpleSlide,
        "_fake_view": fakeView,
        "_fake_sold": fakeSold,
        "_fake_in_cart": fakeInCart,
        "nasa_specifications": nasaSpecifications,
        "nasa_sidebar": nasaSidebar,
        "nasa_layout": nasaLayout,
        "nasa_layout_bg": nasaLayoutBg,
        "nasa_image_layout": nasaImageLayout,
        "nasa_image_style": nasaImageStyle,
        "nasa_thumb_style": nasaThumbStyle,
        "nasa_half_full_slide": nasaHalfFullSlide,
        "nasa_full_info_col": nasaFullInfoCol,
        "nasa_tab_style": nasaTabStyle,
        "nasa_infinite_slide": nasaInfiniteSlide,
        "_bulk_dsct_type": bulkDsctType,
        "_product_360_degree": product360Degree,
      };
}
