.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;
.source "CursorKeyTagSuggestionLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;
    }
.end annotation


# static fields
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

.field private static final TAG:Ljava/lang/String; = "CursorKeyTagSuggestionLoader"

.field private static final TAG_DATA_PROJECTION:[Ljava/lang/String;

.field private static final TAG_DATA_PROJECTION_CLOUD:[Ljava/lang/String;

.field private static final TAG_FROM:Ljava/lang/String; = " FROM files INNER JOIN tag_map ON _id = fk_file_id INNER JOIN tags ON fk_tag_id = tags_id "

.field private static final TAG_GROUP_BY:Ljava/lang/String; = " GROUP BY tag_data "

.field private static final TAG_HAVING:Ljava/lang/String; = " HAVING scene_score=max(scene_score)"

.field private static final TAG_TYPE_LANDMARK:I = 0x9

.field private static final TAG_TYPE_LANDMARK_COUNTRY:I = 0xa

.field private static final TAG_TYPE_LANDMARK_LOCALITY:I = 0xb

.field private static final TAG_TYPE_LANDMARK_NAME:I = 0xc

.field private static final TAG_TYPE_MY_TAG:I = 0x0

.field private static final TAG_WHERE:Ljava/lang/String; = " WHERE scene_score IS NOT null "


# instance fields
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

    const-string/jumbo v1, "tag_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "tag_type"

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

    const-string/jumbo v2, "scene_position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->TAG_DATA_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tag_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "tag_type"

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

    const-string/jumbo v2, "scene_position"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->TAG_DATA_PROJECTION_CLOUD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

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

.method private getTagListSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " FROM files INNER JOIN tag_map ON _id = fk_file_id INNER JOIN tags ON fk_tag_id = tags_id  WHERE scene_score IS NOT null  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

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

.method private getTagListUri()Landroid/net/Uri;
    .locals 4

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->TAG_DATA_PROJECTION_CLOUD:[Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getTagCategoryProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->getTagListSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->getRawQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->TAG_DATA_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader$CursorKeyTagSuggestionExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->mKeyword:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;->getTagListUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorKeyTagSuggestionLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
