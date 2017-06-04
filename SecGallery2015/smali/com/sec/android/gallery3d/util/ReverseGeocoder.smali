.class public Lcom/sec/android/gallery3d/util/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;
    }
.end annotation


# static fields
.field private static final EARTH_RADIUS_METERS:I = 0x615299

.field private static final GEO_CACHE_FILE:Ljava/lang/String; = "rev_geocoding"

.field private static final GEO_CACHE_MAX_BYTES:I = 0x7d000

.field private static final GEO_CACHE_MAX_ENTRIES:I = 0x3e8

.field private static final GEO_CACHE_VERSION:I = 0x0

.field private static final LAT_MAX:I = 0x5a

.field private static final LAT_MIN:I = -0x5a

.field private static final LON_MAX:I = 0xb4

.field private static final LON_MIN:I = -0xb4

.field private static final MAX_COUNTRY_NAME_LENGTH:I = 0x8

.field private static final MAX_LOCALITY_MILE_RANGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"


# instance fields
.field private final mCanceled:Z

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFeatureIsChn:Z

.field private mFeatureUseAutoNaviNLP:Z

.field private final mGeoCache:Lcom/sec/android/gallery3d/common/BlobCache;

.field private final mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mCanceled:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mFeatureUseAutoNaviNLP:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mFeatureIsChn:Z

    const-string/jumbo v1, "my_ZG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/location/Geocoder;

    new-instance v2, Ljava/util/Locale$Builder;

    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    const-string/jumbo v3, "my"

    invoke-virtual {v2, v3}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    const-string/jumbo v3, "MM"

    invoke-virtual {v2, v3}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/util/CacheManager;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/util/CacheManager;-><init>(Ljava/io/File;)V

    const-string/jumbo v2, "rev_geocoding"

    const/16 v3, 0x3e8

    const v4, 0x7d000

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/sec/android/gallery3d/common/BlobCache;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/sec/android/gallery3d/common/BlobCache;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mFeatureIsChn:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAutoNaviNLP:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mFeatureUseAutoNaviNLP:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/util/ReverseGeocoder;DDJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->insertGeoCache(DDJ)V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_1

    const-string/jumbo v1, ""

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    :cond_2
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insertGeoCache(DDJ)V
    .locals 17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v8, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v13, 0x0

    :goto_0
    if-gt v13, v15, :cond_0

    invoke-virtual {v2, v13}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/sec/android/gallery3d/common/BlobCache;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/sec/android/gallery3d/common/BlobCache;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1, v4}, Lcom/sec/android/gallery3d/common/BlobCache;->insert(J[B)V

    :cond_1
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v12

    const-string/jumbo v3, "ReverseGeocoder"

    const-string/jumbo v4, "There is problem in insertGeoCache"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private lookupAddress(DDZZZ)Landroid/location/Address;
    .locals 33

    const/16 v24, 0x0

    invoke-static/range {p1 .. p4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const-wide v6, 0x4056800000000000L    # 90.0

    add-double v6, v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4056800000000000L    # 90.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double v8, v8, p3

    add-double/2addr v6, v8

    const-wide v8, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v6, v8

    double-to-long v12, v6

    const/4 v14, 0x0

    if-eqz p5, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/sec/android/gallery3d/common/BlobCache;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/sec/android/gallery3d/common/BlobCache;

    invoke-virtual {v6, v12, v13}, Lcom/sec/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v29

    if-eqz v14, :cond_2

    array-length v6, v14

    if-nez v6, :cond_3

    :cond_2
    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz p6, :cond_7

    new-instance v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;

    const-string/jumbo v7, "RevGeocoderThread"

    move-object/from16 v6, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v5 .. v13}, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;-><init>(Lcom/sec/android/gallery3d/util/ReverseGeocoder;Ljava/lang/String;DDJ)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/sec/android/gallery3d/common/BlobCache;

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/sec/android/gallery3d/common/BlobCache;

    invoke-virtual {v6, v12, v13}, Lcom/sec/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v14

    :cond_4
    if-eqz v14, :cond_5

    array-length v6, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_8

    :cond_5
    const/4 v4, 0x0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_7
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->insertGeoCache(DDJ)V

    const-string/jumbo v6, "ReverseGeocoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "insertGeoCache : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_2
    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_2
    new-instance v25, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v32

    const/16 v28, 0x0

    if-eqz v27, :cond_9

    if-nez v23, :cond_b

    new-instance v28, Ljava/util/Locale;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :cond_9
    :goto_3
    if-eqz v28, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_a
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->close()V

    if-nez p7, :cond_d

    const/16 v20, 0x0

    const/16 v22, 0x1

    move-object/from16 v15, p0

    move-wide/from16 v16, p1

    move-wide/from16 v18, p3

    move/from16 v21, p6

    invoke-direct/range {v15 .. v22}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZZZ)Landroid/location/Address;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v24, v25

    goto/16 :goto_0

    :cond_b
    if-nez v32, :cond_c

    :try_start_4
    new-instance v28, Ljava/util/Locale;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    new-instance v28, Ljava/util/Locale;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v24, v25

    goto/16 :goto_0

    :cond_e
    :try_start_5
    new-instance v4, Landroid/location/Address;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readInt()I

    move-result v30

    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v30

    if-gt v0, v1, :cond_f

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v4, v0, v6}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    :cond_f
    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v24, v25

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :goto_5
    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    :catchall_1
    move-exception v6

    move-object/from16 v24, v25

    goto :goto_5

    :catch_1
    move-exception v6

    move-object/from16 v24, v25

    goto/16 :goto_2
.end method

.method private static readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private toMile(D)D
    .locals 3

    const-wide v0, 0x4099240000000000L    # 1609.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public computeAddress(Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;
    .locals 43

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v5, v10, v16

    if-gez v5, :cond_0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    :cond_0
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v4

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v29

    if-nez v4, :cond_1

    move-object/from16 v4, v29

    :cond_1
    if-nez v29, :cond_2

    move-object/from16 v29, v4

    :cond_2
    if-eqz v4, :cond_3

    if-nez v29, :cond_5

    :cond_3
    const/16 v35, 0x0

    :cond_4
    :goto_0
    return-object v35

    :cond_5
    const-string/jumbo v39, ""

    const-string/jumbo v38, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v40

    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mFeatureIsChn:Z

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mFeatureUseAutoNaviNLP:Z

    if-nez v5, :cond_8

    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    :goto_1
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_6
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v42, v33

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v42, v30

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    :cond_7
    move-object/from16 v33, v28

    move-object/from16 v30, v25

    move-object/from16 v32, v27

    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_b

    const-string/jumbo v5, "null"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_1

    :cond_9
    move-object/from16 v42, v28

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v42, v25

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    :cond_a
    move-object/from16 v28, v33

    move-object/from16 v25, v30

    move-object/from16 v27, v32

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_c

    const-string/jumbo v5, "null"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_10

    const-string/jumbo v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v34, v25

    move-object/from16 v37, v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0a0446

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    if-eqz v34, :cond_4

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "JP"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string/jumbo v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v28, v33

    :cond_11
    const-string/jumbo v5, ""

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v33, v28

    :cond_12
    const-string/jumbo v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string/jumbo v5, "JP"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x1

    new-array v0, v5, [F

    move-object/from16 v24, v0

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    invoke-static/range {v16 .. v24}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v5, 0x0

    aget v5, v24, v5

    float-to-double v10, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->toMile(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v41, v0

    const/16 v5, 0x14

    move/from16 v0, v41

    if-ge v0, v5, :cond_16

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v35

    if-nez v35, :cond_4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v35

    if-nez v35, :cond_4

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_17

    const-string/jumbo v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    move-object/from16 v37, v27

    if-eqz v37, :cond_4

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_18

    const-string/jumbo v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_18
    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v31

    if-nez v26, :cond_19

    move-object/from16 v26, v27

    :cond_19
    if-nez v31, :cond_1a

    move-object/from16 v31, v32

    :cond_1a
    if-eqz v26, :cond_1b

    if-nez v31, :cond_1c

    :cond_1b
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_1c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v10, 0x8

    if-gt v5, v10, :cond_1d

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v10, 0x8

    if-le v5, v10, :cond_1e

    :cond_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0
.end method

.method public computeAddressOverLocality(Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;
    .locals 32

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-wide/from16 v28, v0

    sub-double v10, v10, v28

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    cmpg-double v5, v10, v28

    if-gez v5, :cond_0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    :cond_0
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v4

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v21

    if-nez v4, :cond_1

    move-object/from16 v4, v21

    :cond_1
    if-nez v21, :cond_2

    move-object/from16 v21, v4

    :cond_2
    if-eqz v4, :cond_3

    if-nez v21, :cond_5

    :cond_3
    const/16 v26, 0x0

    :cond_4
    :goto_0
    return-object v26

    :cond_5
    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mFeatureIsChn:Z

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->mFeatureUseAutoNaviNLP:Z

    if-nez v5, :cond_b

    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_6

    const-string/jumbo v5, ""

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_7

    const-string/jumbo v5, ""

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_7
    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v23

    if-nez v18, :cond_8

    move-object/from16 v18, v19

    :cond_8
    if-nez v23, :cond_9

    move-object/from16 v23, v24

    :cond_9
    if-eqz v18, :cond_a

    if-nez v23, :cond_c

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_d

    const-string/jumbo v5, ""

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0
.end method

.method public getLocality(DD)Ljava/lang/String;
    .locals 15

    const-wide/16 v4, 0x0

    cmpl-double v3, p1, v4

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmpl-double v3, p3, v4

    if-nez v3, :cond_1

    const/4 v12, 0x0

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    new-instance v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v14}, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    iget-wide v4, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v3, v4, p1

    if-lez v3, :cond_2

    move-wide/from16 v0, p1

    iput-wide v0, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-wide/from16 v0, p3

    iput-wide v0, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    :cond_2
    iget-wide v4, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v3, v4, p1

    if-gez v3, :cond_3

    move-wide/from16 v0, p1

    iput-wide v0, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-wide/from16 v0, p3

    iput-wide v0, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    :cond_3
    iget-wide v4, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v3, v4, p3

    if-lez v3, :cond_4

    move-wide/from16 v0, p1

    iput-wide v0, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    move-wide/from16 v0, p3

    iput-wide v0, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    :cond_4
    iget-wide v4, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v3, v4, p3

    if-gez v3, :cond_5

    move-wide/from16 v0, p1

    iput-wide v0, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    move-wide/from16 v0, p3

    iput-wide v0, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    :cond_5
    iget-wide v4, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    iget-wide v6, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZZZ)Landroid/location/Address;

    move-result-object v2

    iget-wide v4, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    iget-wide v6, v14, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZZZ)Landroid/location/Address;

    move-result-object v11

    if-nez v2, :cond_6

    move-object v2, v11

    :cond_6
    if-nez v11, :cond_7

    move-object v11, v2

    :cond_7
    if-eqz v2, :cond_8

    if-nez v11, :cond_9

    :cond_8
    const/4 v12, 0x0

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v3, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v12, v13

    goto :goto_0
.end method

.method public lookupAddress(DDZ)Landroid/location/Address;
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZZZ)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method
