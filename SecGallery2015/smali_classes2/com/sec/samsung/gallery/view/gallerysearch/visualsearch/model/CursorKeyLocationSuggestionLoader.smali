.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;
.source "CursorKeyLocationSuggestionLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;
    }
.end annotation


# static fields
.field private static final DATE_TAKEN_HAVING:Ljava/lang/String; = " HAVING datetaken=max(datetaken)"

.field private static final INDEX_CATEGORY_NAME:I = 0x1

.field private static final INDEX_CATEGORY_TYPE:I = 0x2

.field private static final INDEX_DATA:I = 0x4

.field private static final INDEX_ID:I = 0x5

.field private static final INDEX_MEDIA_COUNT:I = 0x3

.field private static final INDEX_MEDIA_TYPE:I = 0x6

.field private static final INDEX_ORIENTATION:I = 0x7

.field private static final INDEX_SCENE_POSITION:I = 0x8

.field private static final INDEX_VIEW_FIELD_CLOUD_THUMB_PATH:I = 0xa

.field private static final INDEX_VIEW_FIELD_IS_CLOUD:I = 0x9

.field private static final LOCATION_FROM:Ljava/lang/String; = " FROM files LEFT OUTER JOIN location ON (files.latitude=location.latitude AND files.longitude=location.longitude) "

.field private static final LOCATION_GROUP_BY:Ljava/lang/String; = " GROUP BY locality "

.field private static final LOCATION_PROJECTION:[Ljava/lang/String;

.field private static final LOCATION_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

.field private static final LOCATION_WHERE:Ljava/lang/String; = " WHERE locality IS NOT null "

.field private static final POI_FROM:Ljava/lang/String; = " FROM files LEFT OUTER JOIN poi ON (files.latitude=poi.latitude AND files.longitude=poi.longitude) "

.field private static final POI_GROUP_BY:Ljava/lang/String; = " GROUP BY poi_name "

.field private static final POI_PROJECTION:[Ljava/lang/String;

.field private static final POI_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

.field private static final POI_WHERE:Ljava/lang/String; = " WHERE poi_name IS NOT null "

.field private static final TAG:Ljava/lang/String; = "CursorKeyLocationSuggestionLoader"

.field private static final TAG_TYPE_LOCATION:I = 0x2

.field private static final TAG_TYPE_POI:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "locality AS tag_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2 AS tag_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "null AS scene_position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->LOCATION_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "locality AS tag_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2 AS tag_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "null AS scene_position"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->LOCATION_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "poi_name AS tag_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "7 AS tag_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "null AS scene_position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->POI_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "poi_name AS tag_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "7 AS tag_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "null AS scene_position"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->POI_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getLocationCategoryProjection([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLocationListSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " FROM files LEFT OUTER JOIN location ON (files.latitude=location.latitude AND files.longitude=location.longitude) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " WHERE locality IS NOT null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (media_type IS NOT null) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " GROUP BY locality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " HAVING datetaken=max(datetaken)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->FEATURE_USE_POI_FOR_VISUAL_SEARCH:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " UNION ALL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->POI_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->getLocationCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " FROM files LEFT OUTER JOIN poi ON (files.latitude=poi.latitude AND files.longitude=poi.longitude) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " WHERE poi_name IS NOT null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (media_type IS NOT null) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " GROUP BY poi_name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " HAVING datetaken=max(datetaken)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->POI_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getLocationListUri()Landroid/net/Uri;
    .locals 3

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->LOCATION_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->getLocationCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->getLocationListSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->LOCATION_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "rawquery"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "rawquery"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader$CategoryKeyLocationSuggestionExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryCursor()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;->getLocationListUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorKeyLocationSuggestionLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
