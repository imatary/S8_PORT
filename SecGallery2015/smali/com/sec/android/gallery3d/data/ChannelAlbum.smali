.class public Lcom/sec/android/gallery3d/data/ChannelAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ChannelAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;,
        Lcom/sec/android/gallery3d/data/ChannelAlbum$DateComparator;
    }
.end annotation


# static fields
.field private static final FILTER_FOR_CLOUD_ONLY_CONTENTS:Ljava/lang/String; = " ( is_cloud = 1 or is_cloud = 3 ) "

.field private static final INVALID_COUNT:I = -0x1

.field private static final LOCATION_ADDRESS:I = 0x2

.field private static final LOCATION_LATITUDE:I = 0x0

.field private static final LOCATION_LONGITUDE:I = 0x1

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "(addr is not null)"

.field public static final PATH_EVENT_NOTIFICATION_TOP:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_TOP:Lcom/sec/android/gallery3d/data/Path;

.field private static final SCLOUD_AVAILABLE_WHERE:Ljava/lang/String; = " ( file_status = 0 or file_status = 4 ) "

.field private static final TAG:Ljava/lang/String; = "ChannelAlbum"

.field public static final TOP_EVENT_NOTIFICATION_PATH:Ljava/lang/String; = "/channel/channelalbum"

.field public static final TOP_PATH:Ljava/lang/String; = "/channel/channelalbum"

.field private static final USE_DREAM_STORY_LAYOUT:Z

.field private static final USE_EVENT_NOTIFICATION:Z

.field private static final USE_HIDE_ALBUM:Z

.field private static final USE_SCLOUD:Z

.field private static final USE_SMART_CROP:Z

.field private static final USE_UNION_CMH:Z


# instance fields
.field private final CMH_WATCH_URI_SUPPORT_SCLOUD:[Landroid/net/Uri;

.field private final CMH_WATCH_URI_UNSUPPORT_SCLOUD:[Landroid/net/Uri;

.field private final lock:Ljava/lang/Object;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mChannelId:I

.field private mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

.field private mCoverItemsVersion:J

.field private mImageCount:I

.field private mIsEventNotificationAlbum:Z

.field private final mItemImagePath:Lcom/sec/android/gallery3d/data/Path;

.field private final mItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalCoverItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mSCloudItemImagePath:Lcom/sec/android/gallery3d/data/Path;

.field private final mSCloudItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mShareItemImagePath:Lcom/sec/android/gallery3d/data/Path;

.field private final mShareItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mSharedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mSocialInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeInfo:Ljava/lang/String;

.field private mVideoCount:I

.field private final mWhereClause:Ljava/lang/StringBuilder;

.field private final pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

.field private final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_DREAM_STORY_LAYOUT:Z

    const-string/jumbo v0, "/channel/channelalbum"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->PATH_TOP:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/channel/channelalbum"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->PATH_EVENT_NOTIFICATION_TOP:Lcom/sec/android/gallery3d/data/Path;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_EVENT_NOTIFICATION:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_SCLOUD:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportSmartCrop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_SMART_CROP:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_HIDE_ALBUM:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-array v1, v8, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v6

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->CMH_WATCH_URI_UNSUPPORT_SCLOUD:[Landroid/net/Uri;

    new-array v1, v8, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->CMH_WATCH_URI_SUPPORT_SCLOUD:[Landroid/net/Uri;

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mTimeInfo:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCoverItemsVersion:J

    new-instance v1, Lcom/sec/android/gallery3d/data/ChannelAlbum$DateComparator;

    invoke-direct {v1, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/ChannelAlbum$1;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->sDateComparator:Ljava/util/Comparator;

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mIsEventNotificationAlbum:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->lock:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    new-instance v1, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    invoke-direct {v1, v5, v4, v4, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/ChannelAlbum$1;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mIsEventNotificationAlbum:Z

    iput p3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelId:I

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/data/ChannelItem;->SCLOUD_PROJECTION_WITH_SOCIAL:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mProjection:[Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mWhereClause:Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_SCLOUD:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mWhereClause:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ( file_status = 0 or file_status = 4 ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is_shared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 1 ) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_HIDE_ALBUM:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mWhereClause:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "((bucket_id is null) OR (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1))) AND story_id = ? AND is_recommended != 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_DREAM_STORY_LAYOUT:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "datetaken ASC,media_id ASC,fileid ASC"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mOrderClause:Ljava/lang/String;

    :goto_3
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mShareItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    sget-object v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mShareItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSCloudItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSCloudItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_4
    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->CMH_WATCH_URI_SUPPORT_SCLOUD:[Landroid/net/Uri;

    :goto_5
    new-instance v1, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSocialInfos:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSuggestionItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSharedItems:Landroid/util/SparseArray;

    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/gallery3d/data/ChannelItem;->PROJECTION_WITH_SOCIAL:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mProjection:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    sget-boolean v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/gallery3d/data/ChannelItem;->SCLOUD_PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mProjection:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/gallery3d/data/ChannelItem;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mProjection:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mWhereClause:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ( file_status = 0 or file_status = 4 ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ( is_cloud = 1 or is_cloud = 3 ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is_shared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 1 ) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mWhereClause:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "story_id = ? AND is_recommended != 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v1, "datetaken DESC,media_id DESC,fileid DESC"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mOrderClause:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSCloudItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSCloudItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->CMH_WATCH_URI_UNSUPPORT_SCLOUD:[Landroid/net/Uri;

    goto/16 :goto_5
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;)V
    .locals 1

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_DREAM_STORY_LAYOUT:Z

    return v0
.end method

.method private checkRequiredPermissions([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v6, "ChannelAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "It takes  %d ms in getCursor of ChannelAlbum with CMH story."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method private getMediaItems(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    sub-int v2, p3, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/sec/android/gallery3d/data/ChannelAlbum$1;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum$1;-><init>(Lcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    return-object v1
.end method

.method private getNormalCoverItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCoverItemsVersion:J

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelEntry()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItemCount()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mDataVersion:J

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCoverItemsVersion:J

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private getNormalMediaItem(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    if-lt p1, v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v3

    :cond_0
    add-int v3, p1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSubList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, p1, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItems(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method private getSharedMediaItem(II)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    add-int/lit8 v17, v7, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    add-int v17, p1, p2

    move/from16 v0, v17

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v14, Ljava/util/ArrayList;

    sub-int v17, v6, p1

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_3
    const-string/jumbo v18, "ChannelAlbum"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSharedMediaItem : ugci = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-nez v16, :cond_4

    const-string/jumbo v17, "null"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_4
    const-string/jumbo v17, "empty"

    goto :goto_1

    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move/from16 v8, p1

    :goto_2
    if-ge v8, v6, :cond_b

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/ChannelItem;

    if-nez v10, :cond_6

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v17, "ChannelAlbum"

    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelItem;->getThmFilePath()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_a

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelItem;->getMediaId()I

    move-result v9

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelItem;->getMimeType()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    :goto_3
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "image"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v17, v0

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v17, v0

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSharedItems:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSharedItems:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v3, v15, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v4, Lcom/sec/android/gallery3d/data/ChannelAlbum$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum$2;-><init>(Lcom/sec/android/gallery3d/data/ChannelAlbum;[Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v4, v1}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    array-length v0, v3

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v2, v3, v17

    if-eqz v2, :cond_c

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_6
.end method

.method private getSmartCropCoverItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCoverItemsVersion:J

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mDataVersion:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelEntry()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItemCount()I

    move-result v0

    if-gtz v0, :cond_3

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v10, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iput-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getCoverItemId()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isAutoCreatedStory()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getMediaORSCloudIdFromFileId(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    if-ne v5, v3, :cond_6

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_7
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_8
    :goto_1
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mDataVersion:J

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCoverItemsVersion:J

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0

    :cond_9
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method private getSubList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelItem;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getLocalPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAutoCreatedStory()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getType()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->STORY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getType()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->PERSON:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedToReload()Z
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

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

.method private isStoryInformationUpdate()Z
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadItems()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelItem;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelEntry()V

    const/4 v4, 0x1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v4, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/16 v8, 0xd

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v7, :cond_5

    move v8, v7

    :goto_0
    invoke-virtual {v9, v8}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setShared(Z)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/16 v9, 0xe

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setUgci(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/16 v9, 0xf

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setOwner(I)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/16 v9, 0x10

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setChannelType(I)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/16 v9, 0x12

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setExpirationTime(J)V

    sget-boolean v8, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/16 v8, 0x1d

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_6

    move v8, v7

    :goto_1
    invoke-virtual {v9, v8}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setNewChannel(Z)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/16 v9, 0x1e

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {v8, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setVisible(Z)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    const/16 v8, 0x16

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setCoverItemId(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->loadOrUpdateItem(Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/ChannelItem;

    move-result-object v3

    if-nez v3, :cond_7

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    :cond_3
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSocialInfos:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0, v0, v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateItem(Ljava/util/ArrayList;Z)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSuggestionItems:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSuggestionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateItem(Ljava/util/ArrayList;Z)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSuggestionItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :cond_5
    move v8, v6

    goto/16 :goto_0

    :cond_6
    move v8, v6

    goto :goto_1

    :cond_7
    :try_start_2
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getIsSuggestion()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v6, "ChannelAlbum"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :cond_8
    :try_start_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v6

    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6
.end method

.method private loadOrUpdateItem(Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/ChannelItem;
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/ChannelItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/ChannelItem;->updateContent(Landroid/database/Cursor;)V

    return-object v0
.end method

.method private loadOrUpdateSharedItem(Lcom/sec/android/gallery3d/data/ChannelItem;Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v3

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mIsEventNotificationAlbum:Z

    if-eqz v2, :cond_1

    const-string/jumbo v8, "/channel/channelalbum"

    :goto_1
    iget-object v2, p2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    const-string/jumbo v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOriFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelItem;->getThmFilePath()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelId:I

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/Path;->setObject(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "/channel/channelalbum"

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->updateShareEventInfo(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;)V

    goto/16 :goto_0
.end method

.method private updateChannelEntry()V
    .locals 18

    const/4 v11, 0x0

    :try_start_0
    sget-boolean v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_SCLOUD:Z

    if-eqz v2, :cond_1

    const-string/jumbo v10, "((( ( file_status = 0 or file_status = 4 )  OR is_shared = 1 ) AND is_recommended != 0 )"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "cover"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = ? )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "story_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_HIDE_ALBUM:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "((bucket_id is null) OR (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)))"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "GROUP BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "story_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "dummy"

    aput-object v3, v6, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mBaseUri:Landroid/net/Uri;

    sget-boolean v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_EVENT_NOTIFICATION:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->PROJECTION_CHANNEL_GALLERY_OVER_VER_30:[Ljava/lang/String;

    :goto_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "creation_time DESC"

    const-string/jumbo v8, "ChannelAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "It takes  %d ms in updateChannelEntry of ChannelAlbum with CMH story."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v2, v11}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->updateEntry(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_3
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_4
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v10, "((( ( file_status = 0 or file_status = 4 )  AND  ( is_cloud = 1 or is_cloud = 3 )  OR is_shared = 1 ) AND is_recommended != 0 )"

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v10, "(is_recommended != 0 "

    goto/16 :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "GROUP BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "story_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v12

    :try_start_2
    const-string/jumbo v2, "ChannelAlbum"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_4

    :cond_4
    :try_start_3
    sget-object v4, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->PROJECTION_CHANNEL:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    new-instance v2, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelId:I

    invoke-direct {v2, v3, v11}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;-><init>(ILandroid/database/Cursor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private updateItem(Ljava/util/ArrayList;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelItem;",
            ">;Z)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getDeviceId()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mShareItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mShareItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateShareItem(Ljava/lang/String;Lcom/sec/android/gallery3d/data/ChannelItem;)V

    :goto_1
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getMimeType()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    :goto_2
    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setLocalPath(Lcom/sec/android/gallery3d/data/Path;)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getSocialInfo()Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSocialInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v11

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->checkSCloud()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v0

    :goto_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSCloudItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSCloudItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getSCloudId()I

    move-result v0

    goto :goto_3

    :cond_3
    sget-boolean v10, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v0

    :goto_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemImagePath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItemVideoPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getMediaId()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getMimeType()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "image"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v9, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setFileIdList(Ljava/util/ArrayList;)V

    :cond_8
    if-eqz p2, :cond_9

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mImageCount:I

    iput v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mVideoCount:I

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    return-void
.end method

.method private updateShareItem(Ljava/lang/String;Lcom/sec/android/gallery3d/data/ChannelItem;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string/jumbo v3, "ChannelAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShareItem : ugci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_2

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "empty"

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;-><init>()V

    iput-object p1, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mUGCI:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mWidth:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mHeight:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mDateInMs:J

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOriginalFileId()I

    move-result v2

    iput v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOriginalFileSize()I

    move-result v2

    iput v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalfileSize:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLatitude:D

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLongitude:D

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOwnerId()I

    move-result v2

    iput v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOwner:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOrientation()I

    move-result v2

    iput v2, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOrientationDegree:I

    invoke-direct {p0, p2, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->loadOrUpdateSharedItem(Lcom/sec/android/gallery3d/data/ChannelItem;Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSharedItems:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFileId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v0, 0x1

    return v0
.end method

.method public getAddressMap()Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v14

    :cond_0
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "latitude"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "longitude"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "addr"

    aput-object v4, v2, v3

    const-string/jumbo v3, "(addr is not null)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "ChannelAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "%.3f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%.3f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v0, "ChannelAlbum"

    const-string/jumbo v1, "There is problem in getAddressMap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelId:I

    return v0
.end method

.method public getChannelExpirationTime()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getExpirationTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChannelSharedStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChannelType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSmartCropCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNormalCoverItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_SMART_CROP:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSmartCropCoverItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getNormalCoverItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getCreationTime()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelItem;->getDate()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndTime()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getEndTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getEventDatePeriod()Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getStartTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getEndTime()J

    move-result-wide v4

    cmp-long v0, v2, v10

    if-nez v0, :cond_0

    cmp-long v0, v4, v10

    if-nez v0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/util/Formatter;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0x32

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v1, v6, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const v6, 0x10014

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mTimeInfo:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mTimeInfo:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v8, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mTimeInfo:Ljava/lang/String;

    goto :goto_1
.end method

.method public getFaceGroupId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelItem;->getFaceGroupId()I

    move-result v0

    goto :goto_0
.end method

.method public getFileIdsExist()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelEntry()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getFileIdList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getFileIdList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOriginalFileId()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getHiddenCoverPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getCoverPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mImageCount:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMasterInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getMasterInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMasterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->getMasterName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMasterPhoto()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->getMasterPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->getMasterPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->getMasterPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->loadItems()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getOwner()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSharedMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelType()I

    move-result v0

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->AGIF:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getNormalMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->loadItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMemberCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->getMemberCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getOwner()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getOwner()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSmallItemList(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/data/SmallItem;->height:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/data/SmallItem;->width:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOrientation()I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/data/SmallItem;->orientation:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSocialInfo(I)Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSocialInfos:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSocialInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSocialInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    :cond_0
    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getStartTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionMediaItem()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->loadItems()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSuggestionItems:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSuggestionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    return-object v4

    :cond_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSuggestionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSuggestionItems:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v6, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSubList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v5

    new-array v1, v3, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v2, Lcom/sec/android/gallery3d/data/ChannelAlbum$4;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum$4;-><init>(Lcom/sec/android/gallery3d/data/ChannelAlbum;[Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7, v5, v2, v6}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    if-eqz v0, :cond_4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide v0, 0x80c200000400405L

    return-wide v0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method

.method public getTotalMediaItemCount()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->loadItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getUGCI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getUgci()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mVideoCount:I

    return v0
.end method

.method public hasHLVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->hasHighLightVideo()Z

    move-result v0

    goto :goto_0
.end method

.method public hasItem(Lcom/sec/android/gallery3d/data/MediaObject;Z)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOriFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string/jumbo v9, "."

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    instance-of v5, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v5, :cond_2

    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v2

    :goto_1
    if-ne v1, v2, :cond_1

    move v5, v7

    goto :goto_0

    :cond_2
    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelItem;->getLocalPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v5, v7

    goto :goto_0

    :cond_5
    move v5, v6

    goto/16 :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewChannel()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isNewChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShared()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestion()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemsUpdateNeeded()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCoverItemsVersion:J

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reload()J
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_UNION_CMH:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isNeedToReload()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mDataVersion:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mDataVersion:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isStoryInformationUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelEntry()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelEntry()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mDataVersion:J

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mCachedCount:I

    goto :goto_1
.end method

.method public setChannelExpirationTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setExpirationTime(J)V

    :cond_0
    return-void
.end method

.method public setChannelProperty(Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    return-void
.end method

.method public setChannelType(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setChannelType(I)V

    :cond_0
    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setEndTime(J)V

    :cond_0
    return-void
.end method

.method public setHighLightVideoExistValue(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setHasHightLightVideo(Z)V

    goto :goto_0
.end method

.method public setNewChannel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setNewChannel(Z)V

    :cond_0
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setStartTime(J)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateChannelItem()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->loadOrUpdateItem(Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/ChannelItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mSocialInfos:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateItem(Ljava/util/ArrayList;Z)V

    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v4, "ChannelAlbum"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4
.end method

.method public updateChannelItemForNotification()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelEntry()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelItem()V

    return-void
.end method

.method public updateContactInformation()V
    .locals 14

    const/4 v10, 0x1

    sget-object v4, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getUgci()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getType()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v0, v9, 0x1

    const/4 v1, 0x0

    sget-object v9, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v9

    if-eq v5, v9, :cond_2

    sget-object v9, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v9

    if-ne v5, v9, :cond_7

    :cond_2
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getMasterInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNamewithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    move-object v1, v2

    :cond_6
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getOwner()I

    move-result v9

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_2
    const-string/jumbo v9, "ChannelAlbum"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updatePendingProperty > taken time :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->setCount(I)V
    invoke-static {v9, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->access$300(Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;I)V

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->setMasterName(Ljava/lang/String;)V
    invoke-static {v9, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->access$400(Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->pendingProperty:Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    # invokes: Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->setMasterPhoto(Landroid/graphics/Bitmap;)V
    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->access$500(Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getOwner()I

    move-result v9

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getMasterInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v9, Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->getMasterInfo()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2
.end method

.method public updatePendingProperty()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum;->mChannelProperty:Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/gallery3d/data/ChannelAlbum$3;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum$3;-><init>(Lcom/sec/android/gallery3d/data/ChannelAlbum;)V

    const-string/jumbo v2, "updatePendingProperty"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
