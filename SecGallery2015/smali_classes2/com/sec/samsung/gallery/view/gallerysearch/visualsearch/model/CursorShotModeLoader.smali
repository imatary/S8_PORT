.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;
.super Ljava/lang/Object;
.source "CursorShotModeLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;
    }
.end annotation


# static fields
.field private static final BURST_SHOT_PROJECTION:[Ljava/lang/String;

.field private static final BURST_SHOT_WHERE:Ljava/lang/String; = "(group_id != 0 AND (file_status = 0 OR file_status = 4) AND _id NOT IN ( SELECT _id FROM files WHERE is_hide = 1 )) GROUP BY group_id HAVING 1 < count(group_id)"

.field private static final FEATURE_USE_360_CONTENTS:Z

.field private static final FILTER_MEDIA_TYPE:Ljava/lang/String; = "(media_type = 1 OR media_type = 3)"

.field private static final INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String; = "(file_status = 0 OR file_status = 4) AND _id NOT IN ( SELECT _id FROM files WHERE is_hide = 1 )"

.field private static final INDEX_IMAGE_VIEW_FIELD_CLOUD_THUMB_PATH:I = 0x4

.field private static final INDEX_IMAGE_VIEW_FIELD_DATA:I = 0x0

.field private static final INDEX_IMAGE_VIEW_FIELD_ID:I = 0x2

.field private static final INDEX_IMAGE_VIEW_FIELD_IS_360_VIDEO:I = 0x8

.field private static final INDEX_IMAGE_VIEW_FIELD_IS_CLOUD:I = 0x3

.field private static final INDEX_IMAGE_VIEW_FIELD_MEDIA_TYPE:I = 0x6

.field private static final INDEX_IMAGE_VIEW_FIELD_ORIENTATION:I = 0x1

.field private static final INDEX_IMAGE_VIEW_FIELD_RECODING_MODE:I = 0x7

.field private static final INDEX_IMAGE_VIEW_FIELD_SEF_FILE_TYPE:I = 0x5

.field private static final ORDER_BY:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field private static final POSTFIX_360:Ljava/lang/String; = "),(is_360_video"

.field private static final POSTFIX_WHERE:Ljava/lang/String; = " GROUP BY (sef_file_type),(recording_mode"

.field private static final PREFIX_360:Ljava/lang/String; = " OR is_360_video = 1 "

.field private static final PREFIX_WHERE:Ljava/lang/String;

.field private static final SEF_SHOT_PROJECTION:[Ljava/lang/String;

.field private static final SEF_SHOT_WHERE:Ljava/lang/String;

.field private static final SELFIE_SHOT_PROJECTION:[Ljava/lang/String;

.field private static final SELFIE_SHOT_WHERE:Ljava/lang/String;

.field private static final SHOT_MODE_RECORD_FILTER:Ljava/lang/StringBuffer;

.field private static final SHOT_MODE_SEF_FILTER:Ljava/lang/StringBuffer;

.field private static final SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

.field private static final TAG:Ljava/lang/String; = "CursorShotModeLoader"


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Contents:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    sput-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->FEATURE_USE_360_CONTENTS:Z

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SEF_FILTER:Ljava/lang/StringBuffer;

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SEF_FILTER:Ljava/lang/StringBuffer;

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SEF_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v6, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SEF_FILTER:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->VIDEO_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v6, :cond_3

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->SELFIE_SHOT_MODE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    const/16 v5, 0x27

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v5, "\', "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v6, :cond_5

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(sef_file_type IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SEF_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recording_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->PREFIX_WHERE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(file_status = 0 OR file_status = 4) AND _id NOT IN ( SELECT _id FROM files WHERE is_hide = 1 ) AND (media_type = 1 OR media_type = 3) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->PREFIX_WHERE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->FEATURE_USE_360_CONTENTS:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, " OR is_360_video = 1 "

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " GROUP BY (sef_file_type),(recording_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->FEATURE_USE_360_CONTENTS:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "),(is_360_video"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SEF_SHOT_WHERE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(file_status = 0 OR file_status = 4) AND _id NOT IN ( SELECT _id FROM files WHERE is_hide = 1 ) AND sef_file_type IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SELFIE_SHOT_WHERE:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_data"

    aput-object v4, v3, v7

    const-string/jumbo v4, "orientation"

    aput-object v4, v3, v8

    const-string/jumbo v4, "_id"

    aput-object v4, v3, v6

    const-string/jumbo v4, "is_cloud"

    aput-object v4, v3, v9

    const-string/jumbo v4, "cloud_thumb_path"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "group_id"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "datetaken"

    aput-object v5, v3, v4

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->BURST_SHOT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_data"

    aput-object v4, v3, v7

    const-string/jumbo v4, "orientation"

    aput-object v4, v3, v8

    const-string/jumbo v4, "_id"

    aput-object v4, v3, v6

    const-string/jumbo v4, "is_cloud"

    aput-object v4, v3, v9

    const-string/jumbo v4, "cloud_thumb_path"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "sef_file_type"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "media_type"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "recording_mode"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "is_360_video"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "datetaken"

    aput-object v5, v3, v4

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SEF_SHOT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_data"

    aput-object v4, v3, v7

    const-string/jumbo v4, "orientation"

    aput-object v4, v3, v8

    const-string/jumbo v4, "_id"

    aput-object v4, v3, v6

    const-string/jumbo v4, "is_cloud"

    aput-object v4, v3, v9

    const-string/jumbo v4, "cloud_thumb_path"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "sef_file_type"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "datetaken"

    aput-object v5, v3, v4

    sput-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SELFIE_SHOT_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_6
    const-string/jumbo v3, ""

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v3, ""

    goto/16 :goto_4
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getBurstShotCategory()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->BURST_SHOT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "(group_id != 0 AND (file_status = 0 OR file_status = 4) AND _id NOT IN ( SELECT _id FROM files WHERE is_hide = 1 )) GROUP BY group_id HAVING 1 < count(group_id)"

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC, _id DESC limit 1"

    const-string/jumbo v6, "CursorShotModeLoader"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSefShotCategory()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SEF_SHOT_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SEF_SHOT_WHERE:Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC, _id DESC"

    const-string/jumbo v6, "CursorShotModeLoader"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSelfieShotCategory()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SELFIE_SHOT_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->SELFIE_SHOT_WHERE:Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC, _id DESC limit 1"

    const-string/jumbo v6, "CursorShotModeLoader"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader$CategoryTypeExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryCursor()Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "Burst Shot Modes"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->getBurstShotCategory()Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "SEF Shot Modes"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->getSefShotCategory()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Selfie Shot Modes"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;->getSelfieShotCategory()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
