.class public Lcom/sec/android/gallery3d/data/ShotModeAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ShotModeAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final IMAGE_SHOTMODE_NAME:Landroid/util/SparseIntArray;

.field private static final INVALID_COUNT:I = -0x1

.field public static final SHOTMODE_RECORD_FILTER:Ljava/lang/StringBuffer;

.field public static final SHOTMODE_SEF_FILTER:Ljava/lang/StringBuffer;

.field private static final TAG:Ljava/lang/String; = "ShotModeAlbum"

.field static final TOP_IMAGE_PATH:Ljava/lang/String; = "/local/shotmode/image"

.field static final TOP_VIDEO_PATH:Ljava/lang/String; = "/local/shotmode/video"

.field private static final VIDEO_SHOTMODE_NAME:Landroid/util/SparseIntArray;


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mLogicalBucketId:I

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mShotModeType:I

.field private final mWatchUri:Landroid/net/Uri;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x29

    const/16 v6, 0x27

    const/4 v5, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "count(*)"

    aput-object v4, v2, v3

    sput-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    new-instance v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum$1;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/ShotModeAlbum$1;-><init>()V

    sput-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->IMAGE_SHOTMODE_NAME:Landroid/util/SparseIntArray;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_SEF_FILTER:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->IMAGE_SHOTMODE_NAME:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_SEF_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->IMAGE_SHOTMODE_NAME:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_SEF_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lt v1, v5, :cond_1

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_SEF_FILTER:Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    new-instance v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum$2;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/ShotModeAlbum$2;-><init>()V

    sput-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->VIDEO_SHOTMODE_NAME:Landroid/util/SparseIntArray;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->VIDEO_SHOTMODE_NAME:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->VIDEO_SHOTMODE_NAME:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lt v1, v5, :cond_3

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mCachedCount:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mIsImage:Z

    iput p3, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mShotModeType:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mSelectionArgs:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mLogicalBucketId:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mLogicalBucketId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->CMH_IMAGE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "((bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and sef_file_type = ?)"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mProjection:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mOrderClause:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWatchUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    const-string/jumbo v0, "sef_file_type = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mBaseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "(bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and sef_file_type = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    :goto_2
    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mProjection:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "sef_file_type = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->CMH_VIDEO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "((bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and recording_mode = ?)"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    :goto_3
    sget-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mProjection:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "recording_mode = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_3

    :cond_5
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mBaseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "(bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and recording_mode = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    :goto_4
    sget-object v0, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mProjection:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "recording_mode = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_4
.end method

.method private getShotModeName(ZI)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->IMAGE_SHOTMODE_NAME:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v1, :cond_2

    const-string/jumbo v3, "ShotModeAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown shot mode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string/jumbo v2, "Image,"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0a0496

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->VIDEO_SHOTMODE_NAME:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "Video,"

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mLogicalBucketId:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v10

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "limit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mSelectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v7, "ShotModeAlbum"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_0

    :try_start_1
    const-string/jumbo v1, "ShotModeAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v14

    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v12}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x14

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    const/4 v8, 0x1

    :goto_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mIsImage:Z

    move-object v5, v10

    invoke-static/range {v3 .. v8}, Lcom/sec/android/gallery3d/data/UnionAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    :goto_3
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v11

    :goto_4
    :try_start_3
    const-string/jumbo v1, "ShotModeAlbum"

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mIsImage:Z

    invoke-static {v3, v4, v10, v1, v5}, Lcom/sec/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v13

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_1
    move-exception v11

    move-object v4, v9

    :goto_5
    :try_start_5
    const-string/jumbo v1, "ShotModeAlbum"

    invoke-virtual {v11}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v9

    :goto_6
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v11

    goto :goto_5

    :catch_3
    move-exception v11

    move-object v4, v9

    goto :goto_4
.end method

.method public getMediaItemCount()I
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "ShotModeAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "ShotModeAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mIsImage:Z

    iget v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mShotModeType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->getShotModeName(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mDataVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mCachedCount:I

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->mDataVersion:J

    return-wide v0
.end method
