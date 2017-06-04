.class public Lcom/sec/android/gallery3d/data/ChannelAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ChannelAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;
    }
.end annotation


# static fields
.field private static final BASE_URI:Landroid/net/Uri;

.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "GROUP BY story_id"

.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "creation_time DESC, story_id DESC"

.field private static final INDEX_BUCKET_COUNT:I = 0x8

.field private static final INDEX_BUCKET_CREATION_TIME:I = 0xd

.field private static final INDEX_BUCKET_END_TIME:I = 0xc

.field private static final INDEX_BUCKET_EXPIRATION_TIME:I = 0xe

.field private static final INDEX_BUCKET_ID:I = 0x0

.field private static final INDEX_BUCKET_IS_SHARED:I = 0x1

.field private static final INDEX_BUCKET_IS_SUGGESTION:I = 0x9

.field private static final INDEX_BUCKET_IS_VISIBLE:I = 0x6

.field private static final INDEX_BUCKET_MASTER_INFO:I = 0x7

.field private static final INDEX_BUCKET_OWNER:I = 0x4

.field private static final INDEX_BUCKET_START_TIME:I = 0xb

.field private static final INDEX_BUCKET_STORY_HIGHLIGHT_VIDEO:I = 0xa

.field private static final INDEX_BUCKET_TITLE:I = 0x2

.field private static final INDEX_BUCKET_TYPE:I = 0x3

.field private static final INDEX_BUCKET_UGCI:I = 0x5

.field private static final INDEX_COVER_URI:I = 0xf

.field private static final INDEX_NOTIFY_STATUS:I = 0x10

.field public static final PROJECTION_CHANNEL:[Ljava/lang/String;

.field public static final PROJECTION_CHANNEL_GALLERY_OVER_VER_30:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ChannelAlbumSet"

.field public static final TOP_EVENT_NOTIFICATION_PATH:Ljava/lang/String; = "/channel/eventnotificationalbumset"

.field public static final TOP_PATH:Ljava/lang/String; = "/channel/channelalbumset"

.field private static final USE_EVENT_NOTIFICATION:Z

.field private static final USE_FILTER_BY_MEMU:Z

.field private static final USE_UNION_CMH:Z


# instance fields
.field private final CMH_WATCH_URI_STORY_TABLE:[Landroid/net/Uri;

.field private final CMH_WATCH_URI_SUPPORT_SCLOUD:[Landroid/net/Uri;

.field private final CMH_WATCH_URI_UNSUPPORT_SCLOUD:[Landroid/net/Uri;

.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mIsEventNotificationAlbum:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_UNION_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_EVENT_NOTIFICATION:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilterByMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_FILTER_BY_MEMU:Z

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->BASE_URI:Landroid/net/Uri;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "story_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "is_shared"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string/jumbo v1, "type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "owner"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ugci"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "is_visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "master_info"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_suggestion"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "highlight_video"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "start_time"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "creation_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "expiration_time"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "cover"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->PROJECTION_CHANNEL:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "story_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "is_shared"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string/jumbo v1, "type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "owner"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ugci"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "is_visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "master_info"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_suggestion"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "highlight_video"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "start_time"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "creation_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "expiration_time"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "cover"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "notify_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->PROJECTION_CHANNEL_GALLERY_OVER_VER_30:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-array v1, v7, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_UNSUPPORT_SCLOUD:[Landroid/net/Uri;

    new-array v1, v7, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_SUPPORT_SCLOUD:[Landroid/net/Uri;

    new-array v1, v5, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_STORY_TABLE:[Landroid/net/Uri;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mIsEventNotificationAlbum:Z

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_UNION_CMH:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_SUPPORT_SCLOUD:[Landroid/net/Uri;

    :goto_0
    new-instance v1, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_UNSUPPORT_SCLOUD:[Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Z)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-array v1, v7, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_UNSUPPORT_SCLOUD:[Landroid/net/Uri;

    new-array v1, v7, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_SUPPORT_SCLOUD:[Landroid/net/Uri;

    new-array v1, v5, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_STORY_TABLE:[Landroid/net/Uri;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mIsEventNotificationAlbum:Z

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_STORY_TABLE:[Landroid/net/Uri;

    :goto_0
    new-instance v1, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mIsEventNotificationAlbum:Z

    return-void

    :cond_0
    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_UNION_CMH:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_SUPPORT_SCLOUD:[Landroid/net/Uri;

    :goto_1
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->CMH_WATCH_URI_UNSUPPORT_SCLOUD:[Landroid/net/Uri;

    goto :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_EVENT_NOTIFICATION:Z

    return v0
.end method

.method private checkFilterByMenuAvaility(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilterByMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkSharedAlbumExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChannelAlbum(Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 5

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mIsEventNotificationAlbum:Z

    if-eqz v3, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->PATH_TOP:Lcom/sec/android/gallery3d/data/Path;

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    instance-of v3, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setChannelProperty(Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    sget-object v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->PATH_EVENT_NOTIFICATION_TOP:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v2, v3, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;)V

    goto :goto_1
.end method

.method private getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->BASE_URI:Landroid/net/Uri;

    sget-boolean v2, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_EVENT_NOTIFICATION:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->PROJECTION_CHANNEL_GALLERY_OVER_VER_30:[Ljava/lang/String;

    :goto_0
    const-string/jumbo v5, "creation_time DESC, story_id DESC"

    const-string/jumbo v6, "ChannelAlbumSet"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "It takes  %d ms in getCursor of ChannelAlbumSet with CMH story."

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->PROJECTION_CHANNEL:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getWhereString()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_UNION_CMH:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_EVENT_NOTIFICATION:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_FILTER_BY_MEMU:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mIsEventNotificationAlbum:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "is_filter_by_shared_story"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "(is_shared = 1 AND is_visible = 1 ) "

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(((is_recommended != 0 AND new_content = 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 0 OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 4 ))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is_shared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 1 )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is_visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mIsEventNotificationAlbum:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, " = 0 ) "

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, " AND (is_cloud = 1 OR is_cloud = 3)"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, " = 1 ) "

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(((is_recommended != 0 AND new_content = 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_4

    const-string/jumbo v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 0 OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 4 ))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "cover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = ? )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, " AND is_visible = 1 ) "

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, " AND (is_cloud = 1 OR is_cloud = 3)"

    goto :goto_3

    :cond_5
    const-string/jumbo v1, ")"

    goto :goto_4

    :cond_6
    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_EVENT_NOTIFICATION:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(((is_recommended != 0 AND new_content = 0 ) OR is_shared = 1 ) AND is_visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mIsEventNotificationAlbum:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, " = 0 ) "

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, " = 1 ) "

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(((is_recommended != 0 AND new_content = 0 ) OR cover = ? )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, " AND is_visible = 1 ) "

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, ")"

    goto :goto_6
.end method

.method private isNeedToReload()Z
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "TAG_UPDATE"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private loadChannelEntry(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    :cond_1
    if-lez v1, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v3, v4, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;-><init>(ILandroid/database/Cursor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v4, "ChannelAlbumSet"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->getWhereString()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "( "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "((bucket_id is null) OR (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)))"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "GROUP BY story_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "dummy"

    aput-object v10, v6, v9

    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v9, "ChannelAlbumSet"

    const-string/jumbo v10, "cannot open local database: "

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v0, v9

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "GROUP BY story_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string/jumbo v9, "ChannelAlbumSet"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    if-eqz v1, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getCount()I

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared()Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "ChannelAlbumSet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " Channel["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] is empty channel!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :try_start_3
    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->loadChannelEntry(Landroid/database/Cursor;)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v9

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v9

    :cond_4
    invoke-direct {p0, v3, v5}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->getChannelAlbum(Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Channel"

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ChannelAlbumSet"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSubMediaSetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onContentDirty()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->notifyContentChanged()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->notifyDirty()V

    return-void
.end method

.method public declared-synchronized reload()J
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->USE_UNION_CMH:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->isNeedToReload()Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v4

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mDataVersion:J

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ChannelAlbumSet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " album("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") reloaded and is this shared story ? : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isShared()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->checkFilterByMenuAvaility(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "is_filter_by_shared_story"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "is_filter_by_shared_story"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_4
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->mDataVersion:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public updateMediaSet()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->setVersion()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->onContentDirty()V

    return-void
.end method
