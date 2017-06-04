.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;
.super Ljava/lang/Object;
.source "CursorTagviewLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;
    }
.end annotation


# static fields
.field private static final DATE_TAKEN_HAVING:Ljava/lang/String; = " HAVING datetaken=max(datetaken)"

.field private static final INDEX_TAG_VIEW_FIELD_CLOUD_THUMB_PATH:I = 0xa

.field private static final INDEX_TAG_VIEW_FIELD_DATA:I = 0x3

.field private static final INDEX_TAG_VIEW_FIELD_FIELD_DATE_TAKEN:I = 0x0

.field private static final INDEX_TAG_VIEW_FIELD_FIELD_ID:I = 0x1

.field private static final INDEX_TAG_VIEW_FIELD_IS_CLOUD:I = 0x9

.field private static final INDEX_TAG_VIEW_FIELD_MEDIA_COUNT:I = 0x8

.field private static final INDEX_TAG_VIEW_FIELD_MEDIA_TYPE:I = 0x4

.field private static final INDEX_TAG_VIEW_FIELD_ORIENTATION:I = 0x5

.field private static final INDEX_TAG_VIEW_FIELD_TAGS_TYPE:I = 0x7

.field private static final INDEX_TAG_VIEW_FIELD_TAG_DATA:I = 0x2

.field private static final INDEX_TAG_VIEW_SCENE_REGION:I = 0x6

.field private static final IS_SUBSCENE:Ljava/lang/String; = "is_subscene"

.field private static final LANDMARK_FROM:Ljava/lang/String; = " FROM tag_map INNER JOIN landmark ON fk_tag_id=tag_id JOIN files ON _id = fk_file_id "

.field private static final LANDMARK_GROUP_BY:Ljava/lang/String; = " GROUP BY landmark_name "

.field private static final LANDMARK_PROJECTION:[Ljava/lang/String;

.field private static final LANDMARK_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

.field private static final LANDMARK_WHERE:Ljava/lang/String; = " WHERE is_locality = 1 AND landmark_name IS NOT null "

.field private static final LOCATION_FROM:Ljava/lang/String; = " FROM files LEFT OUTER JOIN location ON (files.latitude=location.latitude AND files.longitude=location.longitude) "

.field private static final LOCATION_GROUP_BY:Ljava/lang/String; = " GROUP BY locality "

.field static final LOCATION_PROJECTION:[Ljava/lang/String;

.field static final LOCATION_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

.field private static final LOCATION_WHERE:Ljava/lang/String; = " WHERE locality IS NOT null "

.field private static final MY_TAG_WHERE:Ljava/lang/String; = " WHERE tag_type = 0 "

.field private static final OTHER_CATEGORY_ORDER_BY:Ljava/lang/String; = " ORDER BY tag_type DESC"

.field private static final OTHER_DOCUMENT_WHERE_IN:Ljava/lang/String; = " AND _id NOT IN ( SELECT _id FROM tagview WHERE tag_data IN "

.field private static final POI_FROM:Ljava/lang/String; = " FROM files LEFT OUTER JOIN poi ON (files.latitude=poi.latitude AND files.longitude=poi.longitude) "

.field private static final POI_GROUP_BY:Ljava/lang/String; = " GROUP BY poi_name "

.field private static final POI_PROJECTION:[Ljava/lang/String;

.field private static final POI_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

.field private static final POI_WHERE:Ljava/lang/String; = " WHERE poi_name IS NOT null "

.field private static final RELATED_SEARCH_PROJECTION:[Ljava/lang/String;

.field private static final RELATED_SEARCH_TYPE_LOCATION:Ljava/lang/String; = "1"

.field private static final RELATED_SEARCH_TYPE_SCENE:Ljava/lang/String; = "4"

.field private static final SCENE_REGION:Ljava/lang/String; = "scene_region"

.field private static final SCENE_SCORE_HAVING:Ljava/lang/String; = " HAVING scene_score=max(scene_score)"

.field private static final TAG:Ljava/lang/String; = "CursorTagViewLoader"

.field private static final TAG_CATEGORY_MIN_COUNT:I = 0xa

.field private static final TAG_FROM:Ljava/lang/String; = " FROM files INNER JOIN tag_map ON _id = fk_file_id INNER JOIN tags ON fk_tag_id = tags_id "

.field private static final TAG_GROUP_BY:Ljava/lang/String; = " GROUP BY tag_data "

.field private static final TAG_TYPE_LANDMARK_LOCALITY:I = 0xb

.field private static final TAG_TYPE_LOCATION:I = 0x2

.field private static final TAG_TYPE_POI:I = 0x7

.field static final TAG_VIEW_PROJECTION:[Ljava/lang/String;

.field private static final TAG_VIEW_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

.field private static final TAG_WHERE:Ljava/lang/String; = " WHERE (tag_type = 4 OR tag_type = 5 OR tag_type = 104 OR tag_type = 105) "

.field private static final TAG_WHERE_IN:Ljava/lang/String; = " tag_data IN "

.field private static final TAG_WHERE_NOT_IN:Ljava/lang/String; = " tag_data NOT IN "


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDocumentCategory:[Ljava/lang/String;

.field private final mMediaId:I

.field private final mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;


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

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "locality AS tag_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "null AS scene_region"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "2 AS tag_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->LOCATION_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "locality AS tag_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "null AS scene_region"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "2 AS tag_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->LOCATION_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "poi_name AS tag_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "null AS scene_region"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7 AS tag_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->POI_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "poi_name AS tag_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "null AS scene_region"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7 AS tag_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->POI_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "landmark_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "null AS scene_region"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "11 AS tag_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->LANDMARK_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "landmark_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "null AS scene_region"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "11 AS tag_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->LANDMARK_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "tag_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "scene_region"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "tag_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "scene_position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "tag_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "scene_region"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "tag_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "scene_position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "tag_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tag_value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->RELATED_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mMediaId:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_EXPAND_DOCUMENT_CATEGORY:[Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mDocumentCategory:[Ljava/lang/String;

    instance-of v0, p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_DOCUMENT_CATEGORY:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-object v0
.end method

.method private getAllOtherCategorySQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " FROM files INNER JOIN tag_map ON _id = fk_file_id INNER JOIN tags ON fk_tag_id = tags_id  WHERE (tag_type = 4 OR tag_type = 5 OR tag_type = 104 OR tag_type = 105)  AND  tag_data NOT IN  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (media_type IS NOT null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY tag_data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " HAVING scene_score=max(scene_score)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCategoryName([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    const-string/jumbo v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\',"

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

.method private getDocumentCategory()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getDocumentCategoryUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorTagViewLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getDocumentCategoryUri()Landroid/net/Uri;
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mDocumentCategory:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getCategoryName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getTagCategorySQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    :cond_0
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getLocationCategory()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getLocationCategoryUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorTagViewLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getLocationCategorySQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " FROM files LEFT OUTER JOIN location ON (files.latitude=location.latitude AND files.longitude=location.longitude) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE locality IS NOT null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (media_type IS NOT null) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " GROUP BY locality "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " HAVING datetaken=max(datetaken)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_POI_FOR_VISUAL_SEARCH:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " UNION ALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->POI_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " FROM files LEFT OUTER JOIN poi ON (files.latitude=poi.latitude AND files.longitude=poi.longitude) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE poi_name IS NOT null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (media_type IS NOT null) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " GROUP BY poi_name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " HAVING datetaken=max(datetaken)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " UNION ALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->LANDMARK_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_1
    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " FROM tag_map INNER JOIN landmark ON fk_tag_id=tag_id JOIN files ON _id = fk_file_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE is_locality = 1 AND landmark_name IS NOT null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (media_type IS NOT null) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " GROUP BY landmark_name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " HAVING datetaken=max(datetaken)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->POI_PROJECTION:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->LANDMARK_PROJECTION:[Ljava/lang/String;

    goto :goto_1
.end method

.method private getLocationCategoryUri()Landroid/net/Uri;
    .locals 3

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->LOCATION_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getLocationCategorySQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->LOCATION_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getMyTagCategory()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getMyTagCategoryUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorTagViewLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMyTagCategorySQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " FROM files INNER JOIN tag_map ON _id = fk_file_id INNER JOIN tags ON fk_tag_id = tags_id  WHERE tag_type = 0  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (media_type IS NOT null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY tag_data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " HAVING datetaken=max(datetaken)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMyTagCategoryUri()Landroid/net/Uri;
    .locals 4

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getMyTagCategorySQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getOtherCategory()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getOtherCategoryUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorTagViewLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getOtherCategoryUri()Landroid/net/Uri;
    .locals 5

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_ALL_OTHER_CATEGORY:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getCategoryName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getAllOtherCategorySQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ORDER BY tag_type DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    :cond_0
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_OTHERS_CATEGORY:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getCategoryName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_2
    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getTagCategorySQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION:[Ljava/lang/String;

    goto :goto_2
.end method

.method private getOtherDocumentCategorySQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " FROM files INNER JOIN tag_map ON _id = fk_file_id INNER JOIN tags ON fk_tag_id = tags_id  WHERE (tag_type = 4 OR tag_type = 5 OR tag_type = 104 OR tag_type = 105)  AND  tag_data IN  (\'Documents\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (media_type IS NOT null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND _id NOT IN ( SELECT _id FROM tagview WHERE tag_data IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY tag_data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " HAVING scene_score=max(scene_score)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOtherDocumentCategoryUri()Landroid/net/Uri;
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mDocumentCategory:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getCategoryName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getOtherDocumentCategorySQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    :cond_0
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getOtherDocumentItems()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getOtherDocumentCategoryUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorTagViewLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
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

.method private getRelatedCategory(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCmhIdFromMediaId(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string/jumbo v0, "4"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->queryDetailCategorySearchInfo(I)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\',"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    :goto_0
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string/jumbo v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->TAGVIEW_TABLE_URI:Landroid/net/Uri;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_7

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tag_data IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ") AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " (media_type IS NOT null) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " GROUP BY tag_data "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " HAVING datetaken=max(datetaken)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string/jumbo v0, "4"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v5, "tag_type ASC"

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string/jumbo v6, "CursorTagViewLoader"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string/jumbo v0, "CursorTagViewLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " RELATED LOCATION : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v8

    :cond_4
    :try_start_1
    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->queryRelatedSearchInfo(I)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\',"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v0, "CursorTagViewLoader"

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v8, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v8, 0x0

    throw v0

    :cond_7
    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->TAG_VIEW_PROJECTION:[Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private getRelatedLocationCategory(I)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "1"

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRelatedCategory(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getRelatedSceneCategory(I)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "4"

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRelatedCategory(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getTagCategorySQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " FROM files INNER JOIN tag_map ON _id = fk_file_id INNER JOIN tags ON fk_tag_id = tags_id  WHERE (tag_type = 4 OR tag_type = 5 OR tag_type = 104 OR tag_type = 105)  AND  tag_data IN  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (media_type IS NOT null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY tag_data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " HAVING scene_score=max(scene_score)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private queryDetailCategorySearchInfo(I)Landroid/database/Cursor;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v3, "scene_name NOT IN (SELECT scene_name WHERE scene_name = ?) AND _id = ? "

    const-string/jumbo v5, "is_subscene ASC"

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v4, "scene_name"

    aput-object v4, v2, v7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "People"

    aput-object v6, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const-string/jumbo v6, "CursorTagViewLoader"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryRelatedSearchInfo(I)Landroid/database/Cursor;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.cmh"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "relatedsearchview"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->RELATED_SEARCH_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "CursorTagViewLoader"

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader$CategoryTagViewExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryCursor()Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v1, "Location"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getLocationCategory()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "Documents"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getDocumentCategory()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Other Documents"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getOtherDocumentItems()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Related locations"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mMediaId:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRelatedLocationCategory(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "Related Category"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mMediaId:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getRelatedSceneCategory(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "My tags"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getMyTagCategory()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;->getOtherCategory()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
