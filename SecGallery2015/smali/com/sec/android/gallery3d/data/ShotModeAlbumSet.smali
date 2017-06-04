.class public Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ShotModeAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# static fields
.field public static final ORDER:[I

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ShotModeAlbumSet"

.field private static final m360ContentsPostfix:Ljava/lang/String; = "),(is_360_video"

.field private static final m360ContentsPrefix:Ljava/lang/String; = " or is_360_video = 1 "

.field private static final mAlbumHidePrefix:Ljava/lang/String; = "(bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and ("

.field private static final mAllFilter:Ljava/lang/String;

.field private static final mDefaultPostfix:Ljava/lang/String; = " ) ) group by (sef_file_type),(recording_mode"

.field private static final mDefaultPrefix:Ljava/lang/String;

.field private static final mField360Video:Ljava/lang/String;

.field private static final mFieldMediaType:Ljava/lang/String;

.field private static final mFieldRecordingMode:Ljava/lang/String;

.field private static final mImageFilter:Ljava/lang/String;

.field private static final mLeftParenthesis:Ljava/lang/String; = "("

.field private static final mRightParenthesis:Ljava/lang/String; = ")"

.field private static final mUse360Contents:Z

.field private static final mUseAlbumHide:Z

.field private static final mUseDualCameraAlbum:Z

.field private static final mVideoFilter:Ljava/lang/String;

.field private static final mWatchUri:[Landroid/net/Uri;


# instance fields
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

.field private mBaseUri:Landroid/net/Uri;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private mShotModeCount:Landroid/util/SparseIntArray;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Contents:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUse360Contents:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUseAlbumHide:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDualCameraCategoryAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUseDualCameraAlbum:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "media_type"

    :goto_0
    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mFieldMediaType:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "recording_mode"

    :goto_1
    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mFieldRecordingMode:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "is_360_video"

    :goto_2
    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mField360Video:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mFieldMediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mImageFilter:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mFieldMediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mVideoFilter:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mImageFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mVideoFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAllFilter:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ") and (sef_file_type in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_SEF_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "recording_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbum;->SHOTMODE_RECORD_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mDefaultPrefix:Ljava/lang/String;

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUse360Contents:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sef_file_type"

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mFieldRecordingMode:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mFieldMediaType:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mField360Video:Ljava/lang/String;

    aput-object v1, v0, v6

    :goto_3
    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->ORDER:[I

    new-array v0, v4, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mWatchUri:[Landroid/net/Uri;

    return-void

    :cond_0
    const-string/jumbo v0, "media_type"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "recording_mode"

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "is_360_video"

    goto/16 :goto_2

    :cond_3
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "sef_file_type"

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mFieldRecordingMode:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mFieldMediaType:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v5

    goto :goto_3

    :array_0
    .array-data 4
        0x8e0
        0x1
        0x2
        0x5
        0x3
        0x840
        0x7f0a03b1
        0x960
        0x8d0
        0xa20
        0x830
        0x800
        0x950
        0xa50
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mBaseUri:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mShotModeCount:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mBaseUri:Landroid/net/Uri;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_ALL_WATCH_URI:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    :goto_0
    iput p3, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mType:I

    return-void

    :cond_0
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mBaseUri:Landroid/net/Uri;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mWatchUri:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    goto :goto_0
.end method

.method private checkAlbumItems()Landroid/util/SparseIntArray;
    .locals 25

    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v15

    const/4 v14, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->getWhereString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "ShotModeAlbumSet"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-nez v14, :cond_3

    const-string/jumbo v2, "ShotModeAlbumSet"

    const-string/jumbo v3, "query fail: shot mode albums"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->getWhereStringForSelfieAlbum()Ljava/lang/String;

    move-result-object v9

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mBaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "count(*)"

    aput-object v3, v8, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "ShotModeAlbumSet"

    invoke-static/range {v6 .. v12}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-nez v14, :cond_9

    const-string/jumbo v2, "ShotModeAlbumSet"

    const-string/jumbo v3, "query fail: selfie"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_1
    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    return-object v22

    :cond_2
    const/16 v17, 0x0

    :goto_3
    if-lez v13, :cond_3

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    const/16 v2, 0xa20

    move/from16 v0, v20

    if-ne v0, v2, :cond_4

    :try_start_2
    sget-boolean v2, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUseDualCameraAlbum:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/local/shotmode/flip/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v21

    :goto_4
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    sget-boolean v2, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUse360Contents:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    goto :goto_3

    :cond_4
    const/16 v2, 0xa50

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    sget-boolean v2, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUse360Contents:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/local/shotmode/360/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v21

    goto :goto_4

    :cond_5
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/local/shotmode/image/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v21

    goto :goto_4

    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_7

    sget-boolean v2, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUseDualCameraAlbum:Z

    if-eqz v2, :cond_7

    const/16 v24, 0xa20

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/local/shotmode/flip/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v21

    goto/16 :goto_4

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    const/16 v24, 0xa50

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/local/shotmode/360/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v21

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/local/shotmode/video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    goto/16 :goto_4

    :catch_0
    move-exception v16

    :try_start_3
    const-string/jumbo v2, "ShotModeAlbumSet"

    const-string/jumbo v3, "cursor query exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_9
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-lez v13, :cond_1

    const-string/jumbo v2, "/local/shotmode/image/selfie"

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    const v2, 0x7f0a03b1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :catch_1
    move-exception v16

    :try_start_5
    const-string/jumbo v2, "ShotModeAlbumSet"

    const-string/jumbo v3, "cursor query exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private getAlbumHideStr()Ljava/lang/String;
    .locals 3

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUseAlbumHide:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "(bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and ("

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "("

    goto :goto_0
.end method

.method private getTypeFilterStr()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "ShotModeAlbumSet"

    const-string/jumbo v1, "type is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mImageFilter:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mVideoFilter:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAllFilter:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getWhereString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->getAlbumHideStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->getTypeFilterStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mDefaultPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUse360Contents:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " or is_360_video = 1 "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ) ) group by (sef_file_type),(recording_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUse360Contents:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "),(is_360_video"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ")"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method private getWhereStringForSelfieAlbum()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUseAlbumHide:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "(bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and ("

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sef_file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeSelfieAlbum;->SHOTMODE_SELFIE_SEF_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUseAlbumHide:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ")"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAllFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 9
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

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    sget-object v5, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->ORDER:[I

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_7

    aget v3, v5, v4

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mShotModeCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v7, 0x3

    if-eq v3, v7, :cond_0

    const/4 v7, 0x1

    if-eq v3, v7, :cond_0

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    const/4 v7, 0x5

    if-ne v3, v7, :cond_2

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/local/shotmode/video/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const v7, 0x7f0a03b1

    if-ne v3, v7, :cond_3

    const-string/jumbo v7, "/local/shotmode/image/selfie"

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-boolean v7, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUseDualCameraAlbum:Z

    if-eqz v7, :cond_5

    const/16 v7, 0xa20

    if-eq v3, v7, :cond_4

    const/4 v7, 0x4

    if-ne v3, v7, :cond_5

    :cond_4
    const-string/jumbo v7, "/local/shotmode/flip/2592"

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-boolean v7, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mUse360Contents:Z

    if-eqz v7, :cond_6

    const/16 v7, 0xa50

    if-ne v3, v7, :cond_6

    const-string/jumbo v7, "/local/shotmode/360/2640"

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/local/shotmode/image/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onContentDirty()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->notifyContentChanged()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->notifyDirty()V

    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->clearDirty()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->checkAlbumItems()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mShotModeCount:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->mDataVersion:J

    return-wide v0
.end method
