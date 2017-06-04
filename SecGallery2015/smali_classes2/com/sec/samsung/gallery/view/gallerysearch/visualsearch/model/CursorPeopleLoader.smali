.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;
.super Ljava/lang/Object;
.source "CursorPeopleLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;
    }
.end annotation


# static fields
.field private static final ENCODED_PATH_RELATED:Ljava/lang/String; = "relatedsearchview"

.field private static final INCLUDE_VALID_BURST_IMAGE_ONLY_PEOPLE:Ljava/lang/String; = "(files.group_id = 0 OR (files.group_id != 0 AND best_image = 1))"

.field private static final INDEX_PEOPLE_COUNT:I = 0x9

.field private static final INDEX_PEOPLE_DATA:I = 0x1

.field private static final INDEX_PEOPLE_DATETAKEN:I = 0x8

.field private static final INDEX_PEOPLE_FACE_DATA:I = 0x2

.field private static final INDEX_PEOPLE_FIELD_CLOUD_THUMB_PATH:I = 0xb

.field private static final INDEX_PEOPLE_FIELD_IS_CLOUD:I = 0xa

.field private static final INDEX_PEOPLE_FIELD_MEDIA_ID:I = 0x4

.field private static final INDEX_PEOPLE_FIELD_ORIENTATION:I = 0x3

.field private static final INDEX_PEOPLE_GROUP_ID:I = 0x0

.field private static final INDEX_PEOPLE_PERSON_ID:I = 0x6

.field private static final INDEX_PEOPLE_PERSON_NAME:I = 0x7

.field private static final INDEX_PEOPLE_POS_RATIO:I = 0x5

.field private static final INNER_PEOPLE_PROJECTION:[Ljava/lang/String;

.field private static final INNER_PEOPLE_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

.field private static final PEOPLE_CATEGORY_MIN_COUNT:I = 0x5

.field private static final PEOPLE_PROJECTION:[Ljava/lang/String;

.field private static final PEOPLE_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

.field private static final PRE_FIX_FACES:Ljava/lang/String; = "faces."

.field private static final RELATED_SEARCH_ORDER_BY:Ljava/lang/String; = "datetaken DESC"

.field private static final RELATED_SEARCH_PROJECTION:[Ljava/lang/String;

.field private static final RELATED_SEARCH_TYPE_PEOPLE:Ljava/lang/String; = "0"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SEARCH_FACE_ITEM_PATH:Ljava/lang/String; = "/searchfaceitem/"

.field private static final SEARCH_FROM:Ljava/lang/String; = " FROM faces INNER JOIN files ON faces.image_id=files._id INNER JOIN persons ON faces.person_id=persons._id "

.field private static final SEARCH_GROUP_BY_GROUP_ID:Ljava/lang/String; = " GROUP BY group_id "

.field private static final SEARCH_GROUP_BY_PERSON_ID:Ljava/lang/String; = " GROUP BY person_id "

.field private static final SEARCH_ORDER_BY:Ljava/lang/String; = " ORDER BY datetaken ASC, faces.media_id ASC, faces._id DESC "

.field private static final SEARCH_UNION_WHERE:Ljava/lang/String; = " WHERE faces.group_id != 0 AND person_id = 1 "

.field private static final SEARCH_WHERE:Ljava/lang/String; = " WHERE person_id > 1 "

.field private static final TAG:Ljava/lang/String; = "CursorPeopleLoader"


# instance fields
.field private final INNER_PROJECTION_STR:Ljava/lang/String;

.field private final INNER_PROJECTION_WITH_SCLOUD_STR:Ljava/lang/String;

.field private final PROJECTION_STR:Ljava/lang/String;

.field private final PROJECTION_WITH_SCLOUD_STR:Ljava/lang/String;

.field private final mCategory:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mMediaId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "group_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "face_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "pos_ratio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PEOPLE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "faces.group_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "face_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v6

    const-string/jumbo v1, "faces.media_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "pos_ratio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INNER_PEOPLE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "group_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "face_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v6

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "pos_ratio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PEOPLE_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "faces.group_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "face_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v6

    const-string/jumbo v1, "faces.media_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "pos_ratio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INNER_PEOPLE_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "tag_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tag_value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->RELATED_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PEOPLE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, ", "

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PROJECTION_STR:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INNER_PEOPLE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, ", "

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INNER_PROJECTION_STR:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PEOPLE_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    const-string/jumbo v1, ", "

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PROJECTION_WITH_SCLOUD_STR:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INNER_PEOPLE_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    const-string/jumbo v1, ", "

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INNER_PROJECTION_WITH_SCLOUD_STR:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mCategory:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mMediaId:I

    return-void
.end method

.method private getPeopleCategory()Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PROJECTION_WITH_SCLOUD_STR:Ljava/lang/String;

    :goto_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INNER_PROJECTION_WITH_SCLOUD_STR:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM ( SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM faces INNER JOIN files ON faces.image_id=files._id INNER JOIN persons ON faces.person_id=persons._id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE person_id > 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(files.group_id = 0 OR (files.group_id != 0 AND best_image = 1))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (media_type IS NOT null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY datetaken ASC, faces.media_id ASC, faces._id DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY person_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " UNION ALL SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM ( SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM faces INNER JOIN files ON faces.image_id=files._id INNER JOIN persons ON faces.person_id=persons._id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE faces.group_id != 0 AND person_id = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(files.group_id = 0 OR (files.group_id != 0 AND best_image = 1))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (media_type IS NOT null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY datetaken ASC, faces.media_id ASC, faces._id DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY group_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorPeopleLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PROJECTION_STR:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INNER_PROJECTION_STR:Ljava/lang/String;

    goto/16 :goto_1
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

.method private getRelatedPeopleCategory(I)Landroid/database/Cursor;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCmhIdFromMediaId(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v1, :cond_5

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PEOPLE_PROJECTION_WITH_SCLOUD:[Ljava/lang/String;

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->queryRelatedSearchInfo(I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    const/4 v2, 0x0

    if-eqz v12, :cond_2

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v1, "0"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\'"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\',"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-eqz v12, :cond_3

    if-eqz v2, :cond_6

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string/jumbo v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND group_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " GROUP BY group_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->FACES_VIEW_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string/jumbo v6, "datetaken DESC"

    const-string/jumbo v7, "CursorPeopleLoader"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-string/jumbo v1, "CursorPeopleLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " RELATED PEOPLE : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v9

    :cond_5
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->PEOPLE_PROJECTION:[Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    const-string/jumbo v1, "CursorPeopleLoader"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    :goto_2
    if-eqz v12, :cond_7

    if-eqz v2, :cond_8

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_7
    :goto_3
    :try_start_7
    throw v1

    :catch_3
    move-exception v5

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->RELATED_SEARCH_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "CursorPeopleLoader"

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader$CategoryPeopleExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryCursor()Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "People"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->getPeopleCategory()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Related people"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->mMediaId:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;->getRelatedPeopleCategory(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
