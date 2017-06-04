.class public Lcom/sec/samsung/gallery/access/cmh/CMHInterface;
.super Ljava/lang/Object;
.source "CMHInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;,
        Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;,
        Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;,
        Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;,
        Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;,
        Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;,
        Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CategoryColumns;
    }
.end annotation


# static fields
.field static final BUCKET_GROUP_BY:Ljava/lang/String; = "GROUP BY story_id"

.field public static final CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/samsung/gallery/core/TabTagType;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHANNEL_INFO_PROJECTION:[Ljava/lang/String;

.field private static final CHANNEL_SELECTION:Ljava/lang/String; = "story_id = ?"

.field public static final CMH_CATEGORY_TABLE_URI:Landroid/net/Uri;

.field private static final CMH_DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

.field private static final CMH_DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

.field public static final CMH_STORY_TABLE_URI:Landroid/net/Uri;

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final DAY_UNIT:J = 0x5265c00L

.field private static final EVENT_CONTACT_FULL_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_CONTACT_NAME_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_CONTACT_SELECTION:Ljava/lang/String; = "ugci = ?"

.field private static final EVENT_CONTACT_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

.field private static final EVENT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final EXPIRATION_UNIT:J = 0x1eL

.field private static final FEATURE_UNION_CMH:Z

.field static final FEATURE_USE_ALBUM_HIDE:Z

.field private static final FIELD_FILE_ID:Ljava/lang/String; = "_id"

.field private static final FIELD_IGNORE_NOTIFY:Ljava/lang/String; = "ignore_notify"

.field private static final FIELD_TAG_TYPE:Ljava/lang/String; = "tag_type"

.field private static final FIELD_USER_TAG_DATA:Ljava/lang/String; = "user_tag_data"

.field private static final HIDDEN_FOLDER_CLEAR_PERIOD:J = 0x240c8400L

.field private static final ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDEX_CHANNEL_END_TIME:I = 0x5

.field private static final INDEX_CHANNEL_FILE_ID:I = 0xf

.field private static final INDEX_CHANNEL_FILE_SYNC_TIME:I = 0xd

.field private static final INDEX_CHANNEL_ID:I = 0x0

.field private static final INDEX_CHANNEL_IS_SHARED:I = 0x7

.field private static final INDEX_CHANNEL_IS_SUGGESTION:I = 0xb

.field private static final INDEX_CHANNEL_IS_VISIBLE:I = 0xa

.field private static final INDEX_CHANNEL_MASTER_INFO:I = 0xe

.field private static final INDEX_CHANNEL_MEDIA_COUNT:I = 0x9

.field private static final INDEX_CHANNEL_OWNER:I = 0x6

.field private static final INDEX_CHANNEL_RESOLUTION:I = 0x10

.field private static final INDEX_CHANNEL_START_TIME:I = 0x4

.field private static final INDEX_CHANNEL_TITLE:I = 0x1

.field private static final INDEX_CHANNEL_TYPE:I = 0x2

.field private static final INDEX_CHANNEL_UGCI:I = 0x8

.field private static final INDEX_FIELD_MEDIA_ID:I = 0x0

.field private static final INDEX_FILE_CLOUD_ID:I = 0x2

.field private static final INDEX_FILE_ID:I = 0x1

.field public static final LOCAL_CHANNEL:I = 0x0

.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static final MAP_PROJECTION:[Ljava/lang/String;

.field private static final MAP_SCLOUD_PROJECTION:[Ljava/lang/String;

.field private static final MAX_DATE_PROJECTION:[Ljava/lang/String;

.field private static final MSG_REQUEST_DELAY_TIME_MS:I = 0x3e8

.field private static final MSG_REQUEST_UPDATE_CMH:I = 0x0

.field private static final MSG_REQUEST_UPDATE_CMH_STORY:I = 0x1

.field public static final OWNER_TYPE_GUEST:I = 0x2

.field public static final OWNER_TYPE_HOST:I = 0x1

.field public static final OWNER_TYPE_NOT_SHARED:I = 0x0

.field public static final SCLOUD_START_INDEX:I = 0xf4240

.field public static final SHARED_CHANNEL:I = 0x1

.field public static final SHARE_DEVICE_ID:I = 0x3e8

.field public static final SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CMHInterface"

.field private static final TAGVIEW_TABLE_NAME:Ljava/lang/String; = "tagview"

.field private static final TAG_DATA:Ljava/lang/String; = "tag_data"

.field private static final TAG_VIEW_URI:Landroid/net/Uri;

.field private static final USERTAG_TABLE_NAME:Ljava/lang/String; = "usertag"

.field private static final USERTAG_TABLE_URI:Landroid/net/Uri;

.field private static final VIDEO_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISUAL_SEARCH_ALL_OTHER_CATEGORY:[Ljava/lang/String;

.field public static final VISUAL_SEARCH_DOCUMENT_CATEGORY:[Ljava/lang/String;

.field public static final VISUAL_SEARCH_EXPAND_DOCUMENT_CATEGORY:[Ljava/lang/String;

.field public static final VISUAL_SEARCH_OTHERS_CATEGORY:[Ljava/lang/String;

.field public static final VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHERE_HIDE:Ljava/lang/String; = "((bucket_id is null) OR (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)))"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_USE_ALBUM_HIDE:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "usertag"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "tagview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->TAG_VIEW_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->COUNT_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "MAX(datetaken)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAX_DATE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "story_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "creation_time"

    aput-object v1, v0, v6

    const-string/jumbo v1, "start_time"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "is_shared"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ugci"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "media_count"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "is_visible"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "is_suggestion"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "highlight_video"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "master_info"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "is_recommended"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "fileid"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "expiration_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "max_member"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "max_number_file"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "max_file_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CHANNEL_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string/jumbo v1, "status"

    aput-object v1, v0, v4

    const-string/jumbo v1, "name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "expire_time"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ugci"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_FULL_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_NAME_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "status"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "story_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ugci"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string/jumbo v1, "owner"

    aput-object v1, v0, v6

    const-string/jumbo v1, "is_shared"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "sync_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_INFO_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAP_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "cloud_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAP_SCLOUD_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAIN_HANDLER:Landroid/os/Handler;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->CATEGORY_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_CATEGORY_TABLE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "People"

    const v2, 0x7f0a031f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Scenery"

    const v2, 0x7f0a038d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Documents"

    const v2, 0x7f0a012d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Food"

    const v2, 0x7f0a01be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Pets"

    const v2, 0x7f0a0327

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Vehicles"

    const v2, 0x7f0a04b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Flower"

    const v2, 0x7f0a01bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Others"

    const v2, 0x7f0a0318

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Location"

    const v2, 0x7f0a039c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Time"

    const v2, 0x7f0a0453

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Recent"

    const v2, 0x7f0a034b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Related people"

    const v2, 0x7f0a0355

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Related locations"

    const v2, 0x7f0a0354

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Fashion"

    const v2, 0x7f0a019f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Camera mode"

    const v2, 0x7f0a0072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "My tags"

    const v2, 0x7f0a028c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Smile pictures"

    const v2, 0x7f0a03f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Blurry pictures"

    const v2, 0x7f0a0066

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Recently Added"

    const v2, 0x7f0a034d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "People"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Scenery"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Documents"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Food"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Pets"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Vehicles"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Flower"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Coast"

    const v2, 0x7f0a0061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Forest"

    const v2, 0x7f0a01bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Mountain"

    const v2, 0x7f0a026d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Night scene"

    const v2, 0x7f0a02d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Open country"

    const v2, 0x7f0a0314

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Building"

    const v2, 0x7f0a0069

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Snow"

    const v2, 0x7f0a03fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Street"

    const v2, 0x7f0a0434

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Dogs"

    const v2, 0x7f0a012e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cats"

    const v2, 0x7f0a0092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cars"

    const v2, 0x7f0a0088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Bikes"

    const v2, 0x7f0a0064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Waterfall"

    const v2, 0x7f0a04de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Airplanes"

    const v2, 0x7f0a0037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Trains"

    const v2, 0x7f0a0460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Boats"

    const v2, 0x7f0a0067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "City overlook"

    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Sport"

    const v2, 0x7f0a0428

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Plants"

    const v2, 0x7f0a0334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Anniversaries"

    const v2, 0x7f0a004f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Holidays"

    const v2, 0x7f0a01f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Clouds"

    const v2, 0x7f0a00a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Deserts"

    const v2, 0x7f0a0115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Fountains"

    const v2, 0x7f0a01c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Railways"

    const v2, 0x7f0a0346

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Sunsets"

    const v2, 0x7f0a0439

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Business card"

    const v2, 0x7f0a006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cartoon"

    const v2, 0x7f0a0089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Plant"

    const v2, 0x7f0a0333

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Receipt"

    const v2, 0x7f0a0347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Signage"

    const v2, 0x7f0a03df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Website"

    const v2, 0x7f0a04e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Eye-glasses"

    const v2, 0x7f0a0193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Bags"

    const v2, 0x7f0a005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Animals"

    const v2, 0x7f0a004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Barcode"

    const v2, 0x7f0a0060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Business card"

    const v2, 0x7f0a006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Map"

    const v2, 0x7f0a024c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "QR"

    const v2, 0x7f0a0344

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Hats"

    const v2, 0x7f0a01ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Watch"

    const v2, 0x7f0a04dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Shoes"

    const v2, 0x7f0a03d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Christmas"

    const v2, 0x7f0a0099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Wedding"

    const v2, 0x7f0a04e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Newspaper"

    const v2, 0x7f0a02d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Docs"

    const v2, 0x7f0a0861

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Whiteboard"

    const v2, 0x7f0a04e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Documents"

    const v2, 0x7f0a012d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Fashion"

    const v2, 0x7f0a019f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Food"

    const v2, 0x7f0a01be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Flower"

    const v2, 0x7f0a01bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "People"

    const v2, 0x7f0a031f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Pets"

    const v2, 0x7f0a0327

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Scenery"

    const v2, 0x7f0a038d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Vehicles"

    const v2, 0x7f0a04b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Airplanes"

    const v2, 0x7f0a0037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Animals"

    const v2, 0x7f0a004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Anniversaries"

    const v2, 0x7f0a004f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Bags"

    const v2, 0x7f0a005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Barcode"

    const v2, 0x7f0a0060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Bikes"

    const v2, 0x7f0a0064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Boats"

    const v2, 0x7f0a0067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Building"

    const v2, 0x7f0a0069

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Business card"

    const v2, 0x7f0a006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cars"

    const v2, 0x7f0a0088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cartoon"

    const v2, 0x7f0a0089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cats"

    const v2, 0x7f0a0092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Christmas"

    const v2, 0x7f0a0099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "City overlook"

    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Clouds"

    const v2, 0x7f0a00a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Coast"

    const v2, 0x7f0a0061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Deserts"

    const v2, 0x7f0a0115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Docs"

    const v2, 0x7f0a0861

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Dogs"

    const v2, 0x7f0a012e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Eye-glasses"

    const v2, 0x7f0a0193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Forest"

    const v2, 0x7f0a01bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Fountains"

    const v2, 0x7f0a01c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Hats"

    const v2, 0x7f0a01ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Holidays"

    const v2, 0x7f0a01f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Map"

    const v2, 0x7f0a024c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Mountain"

    const v2, 0x7f0a026d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Newspaper"

    const v2, 0x7f0a02d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Night scene"

    const v2, 0x7f0a02d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Open country"

    const v2, 0x7f0a0314

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "QR"

    const v2, 0x7f0a0344

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Railways"

    const v2, 0x7f0a0346

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Receipt"

    const v2, 0x7f0a0347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Shoes"

    const v2, 0x7f0a03d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Signage"

    const v2, 0x7f0a03df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Snow"

    const v2, 0x7f0a03fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Sport"

    const v2, 0x7f0a0428

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Street"

    const v2, 0x7f0a0434

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Sunsets"

    const v2, 0x7f0a0439

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Trains"

    const v2, 0x7f0a0460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Watch"

    const v2, 0x7f0a04dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Waterfall"

    const v2, 0x7f0a04de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Website"

    const v2, 0x7f0a04e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Wedding"

    const v2, 0x7f0a04e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Whiteboard"

    const v2, 0x7f0a04e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Today"

    const v2, 0x7f0a045f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Last 7 days"

    const v2, 0x7f0a0090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Last 30 days"

    const v2, 0x7f0a008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Last 6 months"

    const v2, 0x7f0a008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Last 12 months"

    const v2, 0x7f0a008d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Other Documents"

    const v2, 0x7f0a0317

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "Barcode"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Map"

    aput-object v1, v0, v4

    const-string/jumbo v1, "QR"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_DOCUMENT_CATEGORY:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Business card"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Barcode"

    aput-object v1, v0, v4

    const-string/jumbo v1, "QR"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Website"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Cartoon"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Map"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Receipt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Signage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Newspaper"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Docs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Whiteboard"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_EXPAND_DOCUMENT_CATEGORY:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Flower"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Food"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Eye-glasses"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Bags"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Hats"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Shoes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Watch"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Animals"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Pets"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Cars"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Bikes"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Christmas"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Wedding"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_OTHERS_CATEGORY:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "People"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Business card"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Barcode"

    aput-object v1, v0, v5

    const-string/jumbo v1, "QR"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Website"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Cartoon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Map"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Receipt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Signage"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Newspaper"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Docs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Whiteboard"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Documents"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_ALL_OTHER_CATEGORY:[Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Coast"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Forest"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Mountain"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Night scene"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Open country"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Building"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Snow"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Street"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Dogs"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cats"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cars"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Bikes"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Waterfall"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Airplanes"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Trains"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Boats"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "City overlook"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Sport"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Plants"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Anniversaries"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Holidays"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Clouds"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Deserts"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Fountains"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Railways"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Sunsets"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cartoon"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Plant"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Receipt"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Signage"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Website"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Eye-glasses"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Bags"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Animals"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Barcode"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Business card"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Map"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "QR"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Hats"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Watch"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Shoes"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Christmas"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Wedding"

    const-string/jumbo v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Newspaper"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Docs"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUBCATEGORY_TO_CATEGORY_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Whiteboard"

    const-string/jumbo v2, "Documents"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Panorama"

    const v2, 0x7f0a031c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Selective focus"

    const v2, 0x7f0a03b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Selfie"

    const v2, 0x7f0a03b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Animated GIF"

    const v2, 0x7f0a004c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Virtual shot"

    const v2, 0x7f0a04d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Dual Camera"

    const v2, 0x7f0a014c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Shot & more"

    const v2, 0x7f0a03d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Sound & shot"

    const v2, 0x7f0a0403

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Surround shot"

    const v2, 0x7f0a043a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "360\u00b0 image"

    const v2, 0x7f0a01fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->IMAGE_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VIDEO_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VIDEO_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Slow motion"

    const v2, 0x7f0a03f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VIDEO_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Hyperlapse"

    const v2, 0x7f0a01fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VIDEO_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Fast motion"

    const v2, 0x7f0a01a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VIDEO_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Video collage"

    const v2, 0x7f0a009b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VIDEO_SHOT_MODE_NAME:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getAvailableFolderNameList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getHiddenFolderList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteFolder(Ljava/lang/String;)V

    return-void
.end method

.method public static addChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/ChannelAlbum;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Lcom/sec/android/gallery3d/data/ChannelAlbum;",
            ")I"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string/jumbo v4, "CMHInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid parameter. (items = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " , channelAlbum = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ") in addChannelItems."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v4, :cond_7

    invoke-static {p0, p1, v12}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->insertSharedItemsAndExtractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getStartTime()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-gez v4, :cond_4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setStartTime(J)V

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEndTime()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-lez v4, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setEndTime(J)V

    :cond_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "story_id"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_9

    const-string/jumbo v4, "media_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v4, "new_content"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "is_recommended"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "title"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "start_time"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getStartTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "end_time"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEndTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "creation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "owner"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "is_manual"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelType()I

    move-result v4

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v8

    if-ne v4, v8, :cond_a

    move v4, v5

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "ugci"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "media_count"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItemCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "cover"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "is_visible"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isVisible()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "is_suggestion"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isSuggestion()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "master_info"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "story_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v1, v5, v12}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_7
    sget-boolean v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getFileIdsExist()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getFileIdsExist()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v0, "dummy"

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v4, "fileid"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    move v4, v6

    goto/16 :goto_3
.end method

.method public static addChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v7, "CMHInterface"

    const-string/jumbo v8, "createChannel() : values is null !!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v7, "CMHInterface"

    const-string/jumbo v8, "createChannel() : channelInfo is null !!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v3, v7, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getOwner()I

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    invoke-static {p0, p1, p3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->insertSharedItemsAndExtractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_4

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v7, :cond_3

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getFileIdList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p0, p1, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getFileIdList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p0, p1, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const-string/jumbo v0, "dummy"

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getItemCount()I

    move-result v8

    add-int v6, v7, v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getStartTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-ltz v7, :cond_6

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getStartTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setStartTime(J)V

    :cond_7
    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getItemCount()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getEndTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_9

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setEndTime(J)V

    :cond_9
    const-string/jumbo v7, "story_id"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v4, :cond_b

    const-string/jumbo v7, "media_id"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v7, "new_content"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "is_recommended"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "title"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "type"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getChannelType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "start_time"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getStartTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "end_time"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getEndTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "creation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "owner"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getOwner()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "is_manual"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getChannelType()I

    move-result v7

    sget-object v9, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v9

    if-ne v7, v9, :cond_c

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "ugci"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "media_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "cover"

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "is_visible"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getIsVisible()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v7, "is_suggestion"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getIsSuggestion()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getMasterInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "master_info"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getMasterInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "story_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v7, v1, v8, v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_d

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v7, "fileid"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const/4 v7, 0x0

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static addSuggestionChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/ChannelAlbum;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Lcom/sec/android/gallery3d/data/ChannelAlbum;",
            ")I"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v3, "CMHInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid parameter. (items = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , channelAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") in addChannelItems."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_0
    return v3

    :cond_1
    sget-boolean v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v3, :cond_2

    invoke-static {p0, p1, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getStartTime()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gez v3, :cond_5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setStartTime(J)V

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEndTime()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setEndTime(J)V

    :cond_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "story_id"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "start_time"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "end_time"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "creation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "story_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v0, v5, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const-string/jumbo v3, "new_content"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, " AND fileid in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v0, v4, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, " AND media_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static categoryNotify(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public static changeCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "scene_name"

    invoke-virtual {v5, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    :goto_0
    return v8

    :cond_0
    if-ne v4, v7, :cond_1

    const-string/jumbo v9, "uri =? AND scene_name = ?"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    :try_start_0
    sget-object v9, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v5, v10, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-lez v2, :cond_4

    :goto_3
    move v8, v7

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "( "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v4, :cond_3

    add-int/lit8 v9, v4, -0x1

    if-ne v1, v9, :cond_2

    const-string/jumbo v9, "uri =? "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    const-string/jumbo v9, "uri =? OR "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_3
    const-string/jumbo v9, ") AND scene_name =?"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v9, "CMHInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v7, v8

    goto :goto_3
.end method

.method private static checkChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ugci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_FULL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    move-object v8, p2

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static checkChannelContactExpired(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CMHInterface"

    const-string/jumbo v3, "ugci is invalid in getChannelContact."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v15

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ugci = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_FULL_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :cond_2
    const-string/jumbo v2, "status"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string/jumbo v2, "expire_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    cmp-long v2, v8, v12

    if-lez v2, :cond_3

    const-string/jumbo v2, "CMHInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currentTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > expire : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string/jumbo v2, "CMHInterface"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public static checkContentItems(Landroid/content/Context;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v3, " ( file_status = 0 or file_status = 4 ) "

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAX_DATE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    :cond_1
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static checkFileIdAvailability(Landroid/content/Context;I)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const-string/jumbo v3, "_id =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    move v8, v9

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v8

    :cond_1
    move v8, v10

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static checkMediaItemExists(Landroid/content/Context;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v0, "count(_id)"

    aput-object v0, v2, v9

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v3, "media_id != -1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    const-string/jumbo v0, "CMHInterface"

    const-string/jumbo v3, "query fail"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_1

    if-eqz v10, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return v9

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-lez v0, :cond_5

    move v0, v8

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v10, :cond_6

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_2
    move v9, v0

    goto :goto_0

    :cond_5
    move v0, v9

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_7
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_3
    if-eqz v6, :cond_7

    if-eqz v1, :cond_8

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    :goto_4
    :try_start_a
    throw v0

    :catch_4
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_3
.end method

.method public static checkSharedAlbumExist(Landroid/content/Context;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "is_shared"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "is_visible"

    aput-object v3, v2, v0

    const-string/jumbo v3, "is_shared = 1 AND is_visible = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v8

    :cond_0
    move v8, v10

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static clearGarbageHiddenFolder(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$3;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "clearGarbageHiddenFolder"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "Gallery_Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "It takes  %d ms in cmhDelete of CMHInterface with CMH story,"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " deleted count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static cmhInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "CMH_log"

    const-string/jumbo v4, "It takes  %d ms in cmhInsert of CMHInterface with CMH story."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static cmhNotify(Landroid/content/Context;Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAIN_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAIN_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAIN_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAIN_HANDLER:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "CMHInterface"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "It takes  %d ms in query of CMHInterface with CMH story."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method static cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "Gallery_Performance"

    const-string/jumbo v5, "It takes  %d ms in cmhUpdate of CMHInterface with CMH story."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "CMHInterface"

    const-string/jumbo v5, "cmhUpdate : NPE has been occurred!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static createChannel(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v8, "CMHInterface"

    const-string/jumbo v9, "createChannel() : values is null !!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    const/4 v5, 0x0

    const/4 v8, 0x2

    if-ne p3, v8, :cond_4

    const/4 v8, 0x0

    invoke-static {p0, p1, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->insertSharedItemsAndExtractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v5, :cond_6

    const-string/jumbo v8, "media_id"

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    move-object/from16 v0, p4

    if-ne v0, v8, :cond_2

    const-string/jumbo v8, "is_recommended"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "type"

    invoke-virtual/range {p4 .. p4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "start_time"

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "end_time"

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "creation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "owner"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "is_manual"

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    move-object/from16 v0, p4

    if-ne v0, v8, :cond_7

    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "ugci"

    move-object/from16 v0, p5

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "media_count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "cover"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "is_visible"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v8, "is_suggestion"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v8, "new_content"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p6, :cond_3

    const-string/jumbo v8, "master_info"

    move-object/from16 v0, p6

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6, v8, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_8

    const-string/jumbo v8, "CMHInterface"

    const-string/jumbo v9, "createChannel() : insertUri is null !!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_4
    sget-boolean v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    invoke-static {p0, p1, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    invoke-static {p0, p1, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v8, "fileid"

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_0
.end method

.method public static createChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v5, v6

    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v0, 0x0

    const-string/jumbo v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_6

    aget-object v3, v1, v7

    if-eqz v3, :cond_4

    invoke-static {p0, v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {p0, v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v4, 0x3

    :goto_3
    invoke-static {p0, p1, v3, v4, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v2, ""

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3

    :cond_6
    invoke-static {p0, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    if-lez v0, :cond_1

    move v5, v6

    goto :goto_0
.end method

.method public static createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 14

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const-string/jumbo v8, "CMHInterface"

    const-string/jumbo v9, "invalid parameter in createChannelContact"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_1
    invoke-static/range {p0 .. p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v5, p2

    const-string/jumbo v8, "+"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const-string/jumbo v8, "ugci"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "number"

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "expire_time"

    invoke-static {}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->setInitUrlExpiredTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x11

    if-eq v8, v9, :cond_6

    const/4 v6, 0x3

    :goto_1
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    move/from16 v6, p3

    :cond_4
    const-string/jumbo v8, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "name"

    move-object/from16 v0, p4

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v8, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "jointime"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    :try_start_0
    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_7

    const-string/jumbo v8, "CMHInterface"

    const-string/jumbo v9, "createChannelContact : insertUri is null !!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    move/from16 v6, p3

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v8, "CMHInterface"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public static createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)Z
    .locals 10

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string/jumbo v6, "CMHInterface"

    const-string/jumbo v7, "invalid parameter in createChannelContact"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v3, p2

    const-string/jumbo v6, "+"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string/jumbo v6, "ugci"

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "number"

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "expire_time"

    invoke-static {}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->setInitUrlExpiredTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_6

    const/4 v4, 0x3

    :goto_1
    invoke-static {p0, p2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    move v4, p3

    :cond_4
    const-string/jumbo v6, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "name"

    invoke-virtual {v0, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_5

    const-string/jumbo v6, "is_new_member"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    :try_start_0
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_7

    const-string/jumbo v6, "CMHInterface"

    const-string/jumbo v7, "createChannelContact : insertUri is null !!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_6
    move v4, p3

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v6, "CMHInterface"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public static createEmptyChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "creation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "is_manual"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "ugci"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    if-eqz p5, :cond_1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "is_visible"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_0
    const-string/jumbo v5, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "is_shared"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "is_suggestion"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "cover"

    const-string/jumbo v6, "dummy"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string/jumbo v5, "master_info"

    invoke-virtual {v1, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v5, "owner"

    invoke-virtual {v1, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v5, "CMHInterface"

    const-string/jumbo v6, "createLiveChannel() : insertUri is null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    const-string/jumbo v5, "is_visible"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private static createWhereForNewEventCount()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_USE_ALBUM_HIDE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "((bucket_id is null) OR (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is_visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != ? ))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " GROUP BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "story_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is_visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != ? )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " GROUP BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "story_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static deleteCategoryType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "scene_name"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v6, "scene_name = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v5, v2, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CMHInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static deleteCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-gtz v4, :cond_0

    :goto_0
    return v8

    :cond_0
    if-ne v4, v7, :cond_1

    const-string/jumbo v6, "uri =? AND scene_name = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v6, "( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_3

    add-int/lit8 v6, v4, -0x1

    if-ne v1, v6, :cond_2

    const-string/jumbo v6, "uri =? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const-string/jumbo v6, "uri =? OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    const-string/jumbo v6, ") AND scene_name =?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    aput-object p2, v3, v6

    :try_start_0
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v6, v9, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_5

    move v6, v7

    :goto_5
    move v8, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "CMHInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v6, v8

    goto :goto_5
.end method

.method public static deleteChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)Z
    .locals 18

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v9

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_3

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v14, :cond_1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v14, :cond_0

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v14}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateItemList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v14, v7, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v14, :cond_4

    move-object v14, v7

    check-cast v14, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v7, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v4, v13}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeChannel(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContact(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v2

    :cond_6
    :goto_3
    return v2

    :cond_7
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v14, p0

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v11

    instance-of v14, v11, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v14, :cond_9

    check-cast v11, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getCurrentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    instance-of v14, v7, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v14, :cond_8

    check-cast v7, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getBaseSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    :cond_8
    instance-of v14, v7, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v14, :cond_6

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v7, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v14, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v2

    goto :goto_3

    :cond_9
    const/4 v3, -0x1

    const/4 v7, 0x0

    move-object/from16 v14, p0

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    instance-of v14, v10, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v14, :cond_b

    check-cast v10, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getCurrentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    instance-of v14, v7, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v14, :cond_a

    check-cast v7, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getBaseSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    :cond_a
    instance-of v14, v7, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v14, :cond_b

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v7, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v14, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v2

    goto :goto_3
.end method

.method public static deleteChannel(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeChannel(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public static deleteChannelContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "CMHInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteChannelContact[fail] : ugci = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ugci = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {p0, v4, v2, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    invoke-static {p0, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    :cond_2
    move v3, v0

    goto :goto_0
.end method

.method private static deleteChannelContact(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static deleteChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ugci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " AND number = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteChannelItem(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 14

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    instance-of v9, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_2

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v10, v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v10, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    instance-of v9, p1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v9, :cond_0

    move-object v9, p1

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateItemList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {p0, v2, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeChannel(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContact(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v0

    :cond_5
    :goto_2
    return v0

    :cond_6
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    move-object v9, p0

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v6

    instance-of v9, v6, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v9, :cond_8

    check-cast v6, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getCurrentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    instance-of v9, v4, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v9, :cond_7

    check-cast v4, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getBaseSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    :cond_7
    instance-of v9, v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-static {p0, v3, v9, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v0

    goto :goto_2

    :cond_8
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v3, v9, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v0

    goto :goto_2
.end method

.method public static deleteChannelItems(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "CMHInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" was deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static deleteFolder(Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/.face/.shareEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rm -r "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHInterface"

    const-string/jumbo v6, "deleteFolder : IOException has been occurred!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteTag(Landroid/content/Context;Ljava/lang/String;IZ)I
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    invoke-static {p0, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCmhIdFromMediaId(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v8, "_id = ?  and ignore_notify = ?  and user_tag_data = ? "

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v6, "Gallery_Performance"

    const-string/jumbo v7, "It takes  %d ms in deleteTag of CMHInterface with MoreInfo."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v6, "CMHInterface"

    const-string/jumbo v7, "deleteTag : NPE has been occurred!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static extractFileId(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 8

    const/4 v6, -0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->refreshMediaID2FileIdMap(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    move v0, v6

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private static extractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->refreshMediaID2FileIdMap(Landroid/content/Context;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_4

    sget-boolean v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    if-eqz v4, :cond_3

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-boolean v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    if-eqz v4, :cond_6

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_6

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    if-nez v1, :cond_8

    const/4 v8, 0x0

    :goto_2
    return-object v8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method private static extractIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->refreshMediaID2FileIdMap(Landroid/content/Context;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v3, :cond_2

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v3, :cond_4

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    if-nez v7, :cond_6

    const/4 v8, 0x0

    :goto_2
    return-object v8

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method private static extractSharedFileIdList(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v6, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "( device_id"

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "=1000"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ) AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_3

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string/jumbo v0, "story_id"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v12, v2, :cond_2

    if-ltz v9, :cond_2

    add-int/lit8 v0, v12, -0x1

    if-ge v9, v0, :cond_2

    const-string/jumbo v0, " OR "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "fileid"

    aput-object v3, v2, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :cond_5
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getAvailableFolderNameList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v3, "ugci IS NOT NULL GROUP BY story_id"

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "ugci"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v9

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getBitmap(Landroid/content/Context;Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;Lcom/sec/android/gallery3d/data/Path;)Landroid/graphics/Bitmap;
    .locals 31

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileId:I

    move/from16 v19, v0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mIsCloudItem:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mCloudCachedPath:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    move-object/from16 v25, v0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaObject;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v7

    :try_start_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mTimeModified:J

    const/4 v6, 0x1

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v23

    if-eqz v23, :cond_1

    new-instance v24, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;

    invoke-direct/range {v24 .. v24}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;-><init>()V

    new-instance v26, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v3, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v4, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v5, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v3, v4, v5, v1}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v3, 0x1

    move/from16 v0, v27

    invoke-static {v14, v0, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v15, v14

    :goto_2
    return-object v15

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileLocalPath:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->access$000(Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;)Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    :catch_0
    move-exception v17

    const-string/jumbo v3, "CMHInterface"

    const-string/jumbo v4, "orientation is not exist!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    const-string/jumbo v3, "image"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v16, 0x0

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_id"

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "="

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "orientation"

    aput-object v4, v10, v3

    :try_start_2
    sget-object v9, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v27

    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    const/16 v21, 0x0

    :try_start_3
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v18

    new-instance v26, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v3, v0

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v28, v3, v4

    invoke-static/range {v28 .. v28}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v3, 0x1

    move/from16 v0, v27

    invoke-static {v14, v0, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v3, 0x1

    move/from16 v0, v29

    invoke-static {v14, v0, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v14

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v15, v14

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3

    :catch_1
    move-exception v17

    :try_start_5
    const-string/jumbo v3, "CMHInterface"

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3

    :catch_2
    move-exception v17

    :goto_4
    :try_start_6
    const-string/jumbo v3, "CMHInterface"

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_3
    :goto_5
    move-object v15, v14

    goto/16 :goto_2

    :catchall_2
    move-exception v3

    :goto_6
    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    :cond_4
    const-string/jumbo v3, "video"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_7
    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/16 v29, 0x2f8

    if-eqz v14, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v29

    invoke-static {v14, v0, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v14

    goto :goto_5

    :catch_3
    move-exception v17

    const-string/jumbo v3, "CMHInterface"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object/from16 v21, v22

    goto :goto_6

    :catch_4
    move-exception v17

    move-object/from16 v21, v22

    goto :goto_4
.end method

.method public static getCMHFileId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v1, "fileid"

    invoke-static {p0, v0, p1, p2, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemIntColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCategoryType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "scene_name"

    aput-object v3, v2, v0

    const-string/jumbo v3, "uri = ? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelAllArticleInfo(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "article_id"

    aput-object v0, v2, v1

    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v3, "story_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    const-string/jumbo v0, "Gallery_Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CMHInterface : getChannelAllInfo()\'s elapsed time : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;
    .locals 16

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CHANNEL_INFO_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "story_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move-object v10, v9

    if-nez v8, :cond_4

    :try_start_1
    new-instance v9, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    invoke-direct {v9}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setId(I)V

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setChannelType(I)V

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setStartTime(J)V

    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setEndTime(J)V

    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setOwner(I)V

    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setShared(I)V

    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setUGCI(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setItemCount(I)V

    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setIsVisible(I)V

    const/16 v0, 0xb

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setIsSuggestion(I)V

    const/16 v0, 0xd

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setSyncTime(J)V

    const/16 v0, 0xe

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setMasterInfo(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getShared()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CMHInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getChannelAllInfo :  eventID [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] isVisible [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getIsVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] owner [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getOwner()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x10

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v9, v11}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setFileIdList(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const-string/jumbo v0, "Gallery_Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CMHInterface : getChannelAllInfo()\'s elapsed time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :catch_0
    move-exception v7

    :goto_2
    :try_start_3
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v10

    goto :goto_3

    :catch_1
    move-exception v7

    move-object v9, v10

    goto :goto_2

    :cond_4
    move-object v9, v10

    goto :goto_0
.end method

.method public static getChannelContact(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const-string/jumbo v5, "number ASC"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "number"

    aput-object v0, v2, v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "CMHInterface"

    const-string/jumbo v1, "ugci is invalid in getChannelContact."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v9

    :cond_1
    const-string/jumbo v0, "ugci = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "CMHInterface"

    const-string/jumbo v1, "invalid parameter in getChannelContactName"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v8

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "ugci = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string/jumbo v0, " AND number = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_NAME_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_3
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelContactStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v8, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "ugci = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string/jumbo v0, " AND number = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_STATUS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_1
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelExpireTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ugci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "expiration_time"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "expiration_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    :cond_0
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-wide v6

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    const/4 v6, -0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ugci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "story_id"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "story_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;
    .locals 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v9, 0x0

    const/4 v11, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "story_id"

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "story_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    aput-object p2, v4, v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getType(I)I

    move-result v14

    const/4 v2, 0x2

    if-ne v14, v2, :cond_1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :cond_0
    :goto_0
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CMHInterface : getChannelColumnValue()["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_1
    const/4 v2, 0x4

    if-ne v14, v2, :cond_2

    :try_start_1
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v14, v2, :cond_3

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v14, v2, :cond_4

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_4
    if-nez v14, :cond_0

    const-string/jumbo v2, "CMHInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " column is empty1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v2, "CMHInterface"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public static getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v1, "fileid"

    const-string/jumbo v2, "_data"

    invoke-static {p0, v0, v1, p1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemStringColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getChannelItemIntColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelItemStringColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getChannelMaxFileSize(Landroid/content/Context;IJ)J
    .locals 10

    move-wide v8, p2

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "story_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "max_file_size"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "max_file_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-wide v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getCloudBucketIds(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "count(_id)"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v2, v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v3, "is_cloud = 2 and (file_status = 0 or file_status = 4) GROUP BY bucket_id"

    const-string/jumbo v6, "CMHInterface"

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_1

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v11, :cond_3

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    return-object v9

    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    if-eqz v11, :cond_5

    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getCmhIdFromMediaId(Landroid/content/Context;I)I
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0xf4240

    if-lt p1, v0, :cond_1

    const-string/jumbo v8, "cloud_id"

    :goto_0
    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " =?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v9

    :cond_1
    const-string/jumbo v8, "media_id"

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "media_id"

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getContactCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v6, v9

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "ugci = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_2

    const-string/jumbo v0, "CMHInterface"

    const-string/jumbo v1, "getContactCount query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v6, v9

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-object v10

    :cond_0
    const/4 v8, 0x0

    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ugci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " ORDER BY name"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v2

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string/jumbo v0, "number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "status"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v0, "expire_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "+"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v1 .. v7}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;-><init>(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;ILjava/lang/String;J)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "CMHInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getContactList : count = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getEventShareData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/EventShareData;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "story_id"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ">0"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_INFO_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v12

    :cond_1
    :try_start_1
    const-string/jumbo v2, "ugci"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;

    invoke-direct {v11}, Lcom/sec/android/gallery3d/eventshare/EventShareData;-><init>()V

    const-string/jumbo v2, "story_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->id:I

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->ugci:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->name:Ljava/lang/String;

    const-string/jumbo v2, "owner"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    :goto_1
    const-string/jumbo v2, "is_shared"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string/jumbo v2, "sync_time"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v2, 0x1

    if-ne v14, v2, :cond_5

    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-eqz v2, :cond_4

    :cond_2
    const-string/jumbo v2, "SharedState"

    iput-object v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->contactList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_7

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v0, v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactIDByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->contactList:Ljava/util/ArrayList;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :pswitch_0
    const/4 v2, 0x1

    iput v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v2, "CMHInterface"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x2

    :try_start_3
    iput v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->type:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_4
    :try_start_4
    const-string/jumbo v2, "GuestIdleState"

    iput-object v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget v2, v11, Lcom/sec/android/gallery3d/eventshare/EventShareData;->id:I

    const-string/jumbo v3, "ugci"

    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelStringColumn(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    :cond_6
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_7
    :try_start_5
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEventValidInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const-string/jumbo v5, "ugci DESC"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "ugci"

    aput-object v1, v2, v0

    :try_start_0
    const-string/jumbo v3, " 1=1 GROUP BY story_id"

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "ugci"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v9

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getExpiredTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 16

    const-wide/16 v10, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CMHInterface"

    const-string/jumbo v3, "ugci is invalid in getChannelContact."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v10

    :goto_0
    return-wide v12

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ugci = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " AND number = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->EVENT_CONTACT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "status"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v2, 0x3

    if-ne v14, v2, :cond_2

    const-string/jumbo v2, "expire_time"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    :cond_2
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    move-wide v12, v10

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v2, "CMHInterface"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public static getFilePathString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v0

    const-string/jumbo v3, "_id =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getHiddenFolderList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/.face/.shareEvent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v8, "CMHInterface"

    const-string/jumbo v9, "listFiles() returns null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    array-length v7, v4

    if-lez v7, :cond_0

    array-length v9, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v0, v4, v8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static getLocationPOI(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    :goto_0
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "poi_name"

    aput-object v3, v2, v0

    const-string/jumbo v3, "uri = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "null"

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v8

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getMediaIdFromFileId(Landroid/content/Context;I)I
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "media_id"

    aput-object v3, v2, v0

    const-string/jumbo v3, "_id =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getMediaORSCloudIdFromFileId(Landroid/content/Context;I)I
    .locals 12

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "is_cloud"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "media_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "cloud_id"

    aput-object v3, v2, v0

    const-string/jumbo v3, "_id =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_1

    :goto_0
    if-eqz v8, :cond_2

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_0
    :goto_1
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    return v9

    :cond_1
    move v8, v10

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getNewEventCount(Landroid/content/Context;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createWhereForNewEventCount()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "story_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getOriginalFileId(Landroid/content/Context;I)I
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "original_fileid"

    aput-object v3, v2, v0

    const-string/jumbo v3, "_id =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getSearchEventTag(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_USE_ALBUM_HIDE:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "((bucket_id is null) OR (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)))"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and is_shared != ? )  GROUP BY story_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "title"

    aput-object v3, v2, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v9

    :cond_3
    :try_start_1
    const-string/jumbo v0, "( is_shared != ? )  GROUP BY story_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getSharedChannelCount(Landroid/content/Context;)I
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v3, "is_shared = 1 AND 1=1 GROUP BY story_id"

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "story_id"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getTotalBucketIds(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "count(bucket_id)"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v3, "(file_status = 0 or file_status = 4) GROUP BY bucket_id"

    const-string/jumbo v6, "CMHInterface"

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v12, :cond_2

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return-object v10

    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    if-eqz v12, :cond_4

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static insertAndMakeFileId(Landroid/content/Context;Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;)Landroid/net/Uri;
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "media_id"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "uri"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "cloudCachePath"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "device_id"

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "mime_type"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "width"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "height"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "datetaken"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getDateInMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "mime_type"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "_data"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v1, v2, [D

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getLatLong([D)V

    const-string/jumbo v2, "latitude"

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v2, "longitude"

    aget-wide v4, v1, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v2, "original_fileid"

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getOriginalFileId(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "original_size"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getOriginalFileSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "original_filepath"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getOriginalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "orientation"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getRotation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    const-string/jumbo v2, "item_owner_name"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "item_owner_number"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static insertSharedItemsAndExtractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string/jumbo v6, "CMHInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid parameter. (items = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") in setShareFileIdList."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    :goto_0
    return-object v6

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->refreshMediaID2FileIdMap(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_4

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {p0, v6, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->insertAndMakeFileId(Landroid/content/Context;Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "-1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    move-object v6, v7

    goto :goto_0
.end method

.method public static insertTag(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/net/Uri;
    .locals 12

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    invoke-static {p0, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCmhIdFromMediaId(Landroid/content/Context;I)I

    move-result v0

    const-string/jumbo v6, "user_tag_data"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "ignore_notify"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v6, "Gallery_Performance"

    const-string/jumbo v7, "It takes  %d ms in insertTag of CMHInterface with MoreInfo."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    const-string/jumbo v6, "CMHInterface"

    const-string/jumbo v7, "insertTag : NPE has been occurred!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isCheckAddMember(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v4, -0x1

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string/jumbo v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v3, v2, v5

    invoke-static {p0, v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_1

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public static isIncludeCloudOnlyContents(Landroid/content/Context;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v0, "distinct 1 _id"

    aput-object v0, v2, v9

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v3, "is_cloud = 2 and (file_status = 0 or file_status = 4)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "CMHInterface"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v9

    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    move v0, v8

    :goto_1
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v9, v0

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static loadShareAlbumSmallItems(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "( story_id"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ) AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "device_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "fileid"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "original_fileid"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "is_recommended"

    aput-object v3, v2, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CMHInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "is_recommended"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const-string/jumbo v0, "Gallery_Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CMHInterface : loadShareAlbumSmallItems() CMH query End : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_2
    :try_start_1
    new-instance v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;-><init>(Lcom/sec/samsung/gallery/access/cmh/CMHInterface$1;)V

    const-string/jumbo v0, "fileid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;->mFileId:I

    const-string/jumbo v0, "original_fileid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;->mOriginalFileId:I

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static makeFileSelection(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string/jumbo v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ") OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static makeStorySelection(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string/jumbo v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "fileid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const-string/jumbo v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "story_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v3, ") OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeStringForType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static queryAllTag(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_CATEGORY_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "category_name"

    aput-object v4, v2, v3

    const-string/jumbo v3, "category_type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "CMHInterface"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "It takes  %d ms in queryAllTag of CMHInterface with MoreInfo."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v9

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static queryTag(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCmhIdFromMediaId(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->TAG_VIEW_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tag_data"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "tag_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "CMHInterface"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "It takes  %d ms in queryTag of CMHInterface with MoreInfo."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v10

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static refreshMediaID2FileIdMap(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v15, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v11, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v16

    if-lez v16, :cond_2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v1, :cond_7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_a

    if-nez v17, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    const-string/jumbo v1, "(media_id="

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " OR cloud_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-le v15, v1, :cond_6

    add-int/lit8 v1, v15, -0x1

    if-ge v10, v1, :cond_6

    const-string/jumbo v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v15, :cond_a

    if-nez v17, :cond_8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    :cond_8
    const-string/jumbo v1, "(media_id="

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-le v15, v1, :cond_9

    add-int/lit8 v1, v15, -0x1

    if-ge v10, v1, :cond_9

    const-string/jumbo v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    :try_start_0
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v1, :cond_f

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAP_SCLOUD_PROJECTION:[Ljava/lang/String;

    :goto_5
    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_b
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-lez v13, :cond_c

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    const v1, 0xf4240

    if-lt v14, v1, :cond_d

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_b

    :cond_e
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_f
    :try_start_1
    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->MAP_PROJECTION:[Ljava/lang/String;

    goto :goto_5

    :cond_10
    const/4 v4, 0x0

    goto :goto_6

    :cond_11
    if-lez v13, :cond_d

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->ID_TO_FILE_ID_MAP:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v1, "CMHInterface"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static removeChannel(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    return v4

    :cond_1
    const/4 v4, 0x0

    const/4 v15, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static/range {p0 .. p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractSharedFileIdList(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v17, "story_id = "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "event_id = "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ge v10, v0, :cond_3

    const-string/jumbo v17, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    sget-object v17, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_8

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    const-string/jumbo v17, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " IN ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_7

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v17, v16, -0x1

    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v17, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    if-eqz v4, :cond_9

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/GalleryOpaqueActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    check-cast p0, Lcom/sec/android/gallery3d/app/GalleryOpaqueActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryOpaqueActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v11

    :goto_2
    const-string/jumbo v17, "event_share_operation"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteFolder(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v11

    goto :goto_2
.end method

.method public static removeChannelItems(Landroid/content/Context;Ljava/util/ArrayList;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const/16 v17, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->makeStorySelection(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->makeFileSelection(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v2, "CMHInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the count of story is \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CMHInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the count of file is \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v15, :cond_7

    if-eq v15, v14, :cond_2

    const-string/jumbo v2, "CMHInterface"

    const-string/jumbo v3, "Different count between story and file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move/from16 v17, v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v12

    if-eqz v12, :cond_6

    const/4 v13, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "story_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "datetaken"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const-string/jumbo v7, "datetaken ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_4
    move-object/from16 v6, p0

    move/from16 v7, p2

    invoke-static/range {v6 .. v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelDatePeriod(Landroid/content/Context;IJJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_6
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    :cond_7
    const-string/jumbo v2, "CMHInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeChannelItems result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v17, :cond_8

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v16

    :try_start_1
    const-string/jumbo v2, "CMHInterface"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static removeChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/gallery3d/data/ChannelAlbum;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v10, 0x0

    :cond_1
    return v10

    :cond_2
    const/4 v10, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v0, v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move/from16 v20, v0

    const/16 v22, 0x0

    const/4 v11, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getItemCount()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getEndTime()J

    move-result-wide v30

    cmp-long v4, v4, v30

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getStartTime()J

    move-result-wide v30

    cmp-long v4, v4, v30

    if-nez v4, :cond_5

    :cond_4
    const/16 v22, 0x1

    :cond_5
    const/16 v18, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v20, :cond_8

    const-string/jumbo v4, "fileid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    const-string/jumbo v4, " AND "

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "story_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v18

    if-ge v0, v4, :cond_7

    const-string/jumbo v4, " OR "

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v20, :cond_7

    const-string/jumbo v4, " OR "

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v28

    sget-boolean v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v4, :cond_a

    const v4, 0xf4240

    move/from16 v0, v28

    if-lt v0, v4, :cond_9

    const-string/jumbo v4, "cloud_id"

    :goto_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "media_id"

    goto :goto_2

    :cond_a
    const-string/jumbo v4, "media_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-eqz v20, :cond_c

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_c
    if-ltz v12, :cond_d

    const/4 v10, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    :cond_d
    if-eqz v22, :cond_10

    if-eqz v11, :cond_10

    if-eqz p3, :cond_10

    const/4 v13, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "story_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "datetaken DESC"

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v8, "datetaken"

    aput-object v8, v6, v4

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "end_time"

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v4, v5, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelLongColumn(Landroid/content/Context;ILjava/lang/String;J)Z

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setEndTime(J)V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setEndTime(J)V

    :cond_e
    if-eqz v13, :cond_f

    invoke-interface {v13}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "start_time"

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-static {v0, v4, v5, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelLongColumn(Landroid/content/Context;ILjava/lang/String;J)Z

    move-wide/from16 v0, v26

    invoke-virtual {v11, v0, v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->setStartTime(J)V

    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setStartTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_10
    :goto_3
    if-eqz v10, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getThumbUrl()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    invoke-static {v15}, Lcom/sec/samsung/gallery/util/FileUtil;->deleteFile(Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :catch_0
    move-exception v14

    :try_start_1
    const-string/jumbo v4, "CMHInterface"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v4

    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4
.end method

.method public static removeChannelSuggestionItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-boolean v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v4, :cond_2

    invoke-static {p0, p1, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractFileIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "story_id"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "new_content"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "is_recommended"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_UNION_CMH:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, " AND fileid in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v0, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->extractIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string/jumbo v4, " AND media_id in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static removeOriginalChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Z)Z"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v0, v7

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v6, "( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "fileid"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v9, :cond_3

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "story_id"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_4

    const-string/jumbo v6, " OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v6, v8, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v6, "( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "_id"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v9, :cond_7

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "media_id"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_8

    const-string/jumbo v6, " OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v6, v8, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method public static revertChannel(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->loadShareAlbumSmallItems(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const-string/jumbo v8, "CMHInterface"

    const-string/jumbo v9, "revertChannel: item is invalid."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;

    iget v8, v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;->mOriginalFileId:I

    if-lez v8, :cond_4

    iget v8, v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;->mOriginalFileId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v8, v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;->mFileId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, v1, v7, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateRevertedShareAlbum(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    if-nez v0, :cond_6

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "story_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v8, v9, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    :cond_6
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static revertSharedChannels(Landroid/content/Context;)V
    .locals 13

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "story_id"

    aput-object v0, v2, v1

    const-string/jumbo v0, "ugci"

    aput-object v0, v2, v4

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v3, "is_shared = 1 AND 1=1 GROUP BY story_id"

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "ugci"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "story_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    :try_start_1
    const-string/jumbo v0, "event_share_operation"

    const-string/jumbo v1, "event_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v10, v0, v1, v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {p0, v9, v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->revertChannel(Landroid/content/Context;ILjava/lang/String;)V

    const-string/jumbo v0, "ugci"

    const-string/jumbo v1, ""

    invoke-static {p0, v9, v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelStringColumn(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "is_shared"

    const/4 v1, 0x0

    invoke-static {p0, v9, v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    const-string/jumbo v0, "owner"

    const/4 v1, 0x0

    invoke-static {p0, v9, v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    invoke-static {p0, v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContact(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v8, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v8}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    invoke-virtual {v8, p0, v9}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->removeServiceEventMap(Landroid/content/Context;I)V

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :catch_0
    move-exception v7

    :try_start_3
    const-string/jumbo v0, "CMHInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteColumnWithId is fail"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_4
    const-string/jumbo v0, "CMHInterface"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static setInitUrlExpiredTime()J
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public static updateCategoryType(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v6, 0x1

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v0

    add-int/lit8 v0, v0, 0x1

    if-nez v6, :cond_0

    const-string/jumbo v7, "uri = ?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    :try_start_0
    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v7, v10, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-lez v3, :cond_3

    move v7, v8

    :goto_2
    return v7

    :cond_0
    if-ne v6, v8, :cond_1

    const-string/jumbo v7, "uri = ? AND scene_name = ?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "uri = ? AND ( "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_2

    const-string/jumbo v7, "scene_name = ? OR "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    const-string/jumbo v7, "scene_name = ? ) "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v7, v9

    goto :goto_2
.end method

.method public static updateChannel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez p1, :cond_0

    :goto_0
    return v5

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "story_id"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "is_shared"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "ugci"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "expiration_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    :try_start_0
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v6, v0, v7, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_3

    :goto_1
    move v5, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public static updateChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ugci = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " AND number = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelContactStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const-string/jumbo v6, "status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string/jumbo v6, "name"

    invoke-virtual {v0, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v6, v0, v7, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_3

    invoke-static {p0, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move v4, v5

    goto :goto_0
.end method

.method public static updateChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ugci = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " AND number = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelContactStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const-string/jumbo v6, "status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string/jumbo v6, "name"

    invoke-virtual {v0, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_3

    const-string/jumbo v6, "is_new_member"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :try_start_0
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v6, v0, v7, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_4

    invoke-static {p0, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CMHInterface"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move v4, v5

    goto :goto_0
.end method

.method public static updateChannelContactLongColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ugci = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " AND number = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelContactStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const-string/jumbo v5, "CMHInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, p3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v0, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateChannelDatePeriod(Landroid/content/Context;IJJ)Z
    .locals 8

    const/4 v4, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "story_id"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "end_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v0, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateChannelFreezeColumn(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "type"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " != 1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v0, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 8

    const/4 v4, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "story_id"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v0, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateChannelItemStringColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_data"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v0, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHInterface"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateChannelLongColumn(Landroid/content/Context;ILjava/lang/String;J)Z
    .locals 9

    const/4 v4, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "story_id"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v0, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateChannelStringColumn(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "story_id"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v0, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CMHInterface"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateRevertedShareAlbum(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    if-lez v8, :cond_5

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v8, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string/jumbo v2, "( "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-le v8, v2, :cond_0

    add-int/lit8 v2, v8, -0x1

    if-ge v15, v2, :cond_0

    const-string/jumbo v2, " OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    :try_start_0
    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v10, -0x1

    if-le v2, v9, :cond_3

    const-string/jumbo v2, ","

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    if-lez v9, :cond_5

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "story_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "fileid"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "new_content"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "owner"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "story_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v3, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->removeOriginalChannelItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Integer;Z)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    return-void

    :catch_0
    move-exception v13

    :try_start_1
    const-string/jumbo v2, "CMHInterface"

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method
