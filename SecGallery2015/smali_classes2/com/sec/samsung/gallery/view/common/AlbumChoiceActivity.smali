.class public Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;
.super Landroid/app/Activity;
.source "AlbumChoiceActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;,
        Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;,
        Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;,
        Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final FEATURE_FACE_THUMBNAIL_ENABLED:Z

.field private static final FEATURE_IS_CREATE_ALBUM_TOP:Z

.field private static final FEATURE_IS_TABLET:Z

.field private static final FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

.field private static final FEATURE_USE_MULTIWINDOW:Z

.field private static final MSG_SET_IMAGE:I = 0x65

.field private static final MSG_UPDATE_LIST:I = 0x64

.field private static final OP_COLLECT_EVENT_ALBUM:I = 0x7

.field private static final OP_COPY:I = 0x0

.field private static final OP_MOVE:I = 0x1

.field private static final OP_REMOVE_KNOX:I = 0x4

.field private static final OP_REMOVE_SECRETBOX:I = 0x3

.field private static final REQUEST_PERMISSION_CODE_ON_LAUNCH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AlbumChoiceActivity"


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mAdapter:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

.field private mAlbumFrameSize:I

.field private mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mEvent:Lcom/sec/samsung/gallery/core/Event;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mIsMultiWindow:Z

.field private mOperationId:I

.field private mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

.field private mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private mTopSetPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsCreateAlbumTop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_CREATE_ALBUM_TOP:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoveCopyAlbumThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_USE_MULTIWINDOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Lcom/sec/samsung/gallery/core/Event;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_CREATE_ALBUM_TOP:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getSAScreenID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finishWithResultOk(Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getMediaViewLayoutResourceId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setLayoutSize(Landroid/view/ViewGroup$LayoutParams;II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I

    return v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getCreateAlbumButtonSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getBucketIconType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;ILcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->startLoadBitmapTask(ILcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getThumbnailType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->updateAlbumListForWeChatSight()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->updateAlbumList()V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIsMultiWindow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/widget/AbsListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    return v0
.end method

.method private checkMediaFolder(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v10

    const-string/jumbo v5, "substr(_data, 0, length(_data)-length(_display_name)) as dir_path"

    aput-object v5, v2, v9

    const-string/jumbo v3, "dir_path = ? COLLATE NOCASE"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-gt v8, v9, :cond_2

    if-nez v8, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "AlbumChoiceActivity"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v5, v9

    :goto_2
    return v5

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v5

    :cond_2
    move v5, v10

    goto :goto_2
.end method

.method private checkNewAlbumExisted(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "AlbumChoiceActivity"

    const-string/jumbo v4, "Album name is empty!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02b1

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "AlbumChoiceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File is exist already! create directory fail! ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "AlbumChoiceActivity"

    const-string/jumbo v4, "Directory don\'t have write permission! []"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->checkMediaFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "AlbumChoiceActivity"

    const-string/jumbo v4, "Media directory exist! []"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private finishWithDCResultOk(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;

    const-string/jumbo v3, "CopyToAlbum"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    :goto_0
    const/4 v6, 0x0

    move v4, v2

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;-><init>(IIIIILjava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "operationType"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "operationIntData"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "albumPath"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "DC_OPERATION_FROM_BIXBY"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "DC_NLG_REQUEST"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getSAScreenID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1082"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V

    return-void

    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method private finishWithResultOk(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "operationType"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "operationIntData"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "albumPath"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "DC_OPERATION_FROM_BIXBY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;

    const-string/jumbo v3, "CopyToAlbum"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    :goto_0
    const/4 v6, 0x0

    move v4, v2

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;-><init>(IIIIILjava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "DC_NLG_REQUEST"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getSAScreenID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1082"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V

    return-void

    :cond_1
    move v3, v1

    goto :goto_0
.end method

.method private getAlbumFrameSize()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getAlbumFrameSizeForScreenSize(ILandroid/content/res/Configuration;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method private getAlbumFrameSizeForScreenSize(ILandroid/content/res/Configuration;)I
    .locals 6

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    iget v4, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDividedSizeForScreenSize(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method private getBucketIconType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02015e

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCreateAlbumButtonSize()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_CREATE_ALBUM_TOP:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0527

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method private getDividedSizeForScreenSize(II)I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0332

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    mul-int/2addr v1, v2

    sub-int v1, p1, v1

    div-int v0, v1, p2

    return v0
.end method

.method private getMediaViewLayoutResourceId()I
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_CREATE_ALBUM_TOP:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040085

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f04009e

    goto :goto_0

    :cond_1
    const v0, 0x7f04009d

    goto :goto_0
.end method

.method private getSAScreenID()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "005"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    if-nez v1, :cond_0

    const-string/jumbo v0, "004"

    goto :goto_0
.end method

.method private getThumbnailType()I
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getTitleResourceId(I)I
    .locals 3

    const v0, 0x7f0a00c5

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    :goto_0
    return v0

    :pswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    const v0, 0x7f0a027e

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    const v0, 0x7f0a0360

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_KNOX:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    const v0, 0x7f0a035c

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleDCChoiceAlbum(Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->getCount()I

    move-result v9

    if-ge v1, v9, :cond_1

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

    invoke-virtual {v9, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->compareStoryName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, -0x1

    if-eq v4, v9, :cond_2

    move v0, v7

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v7, v7, v4

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finishWithDCResultOk(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_2
    return-void

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;)V

    new-instance v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuCopyMoveToAlbum;

    invoke-direct {v3, v8, v2, p1}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuCopyMoveToAlbum;-><init>(ZZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    if-ne v8, v7, :cond_5

    const-string/jumbo v6, "Move"

    :cond_4
    :goto_3
    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v6, v7, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_2

    :cond_5
    iget v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    if-nez v7, :cond_4

    const-string/jumbo v6, "Copy"

    goto :goto_3
.end method

.method private handleDCCreateAlbum(Ljava/lang/String;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v7, 0x1

    const/4 v10, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    if-nez v3, :cond_3

    move v8, v1

    :goto_1
    if-eqz v10, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "operationType"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "operationIntData"

    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "albumPath"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "DC_OPERATION_FROM_BIXBY"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;

    if-eqz v8, :cond_6

    move v3, v1

    :goto_3
    if-eqz v10, :cond_7

    move v4, v1

    :goto_4
    if-eqz v7, :cond_8

    move v5, v1

    :goto_5
    if-eqz v9, :cond_9

    move-object v6, p1

    :goto_6
    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;-><init>(IIIIILjava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "DC_NLG_REQUEST"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v11, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->checkNewAlbumExisted(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    move v10, v1

    :goto_7
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    move v10, v2

    goto :goto_7

    :cond_3
    move v8, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "operationType"

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_NEW_ALBUM_NAME_EDIT_DIALOG:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "operationIntData"

    if-eqz v8, :cond_5

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    :goto_8
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "topPath"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v6, "topath"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    goto :goto_8

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    move v4, v2

    goto :goto_4

    :cond_8
    move v5, v2

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private isMultiWindowState()Z
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v2

    return v2
.end method

.method private setActivityView()V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v0, :cond_0

    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setContentView(I)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_1

    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setContentView(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setContentView(I)V

    goto :goto_0
.end method

.method private setLayoutSize(Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private setStateChangeListener()V
    .locals 3

    sget-boolean v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_USE_MULTIWINDOW:Z

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$3;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V

    :cond_0
    return-void
.end method

.method private startLoadBitmapTask(ILcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;ILcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V

    new-instance v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method

.method private updateAlbumList()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v14}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v14, 0x7

    invoke-virtual {v4, v14}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    new-array v12, v8, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    invoke-virtual {v11, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    aput-object v14, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    const/4 v10, 0x0

    array-length v15, v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_3

    aget-object v3, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    new-array v14, v10, [Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v7, 0x0

    array-length v15, v12

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_6

    aget-object v3, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v16, v0

    aput-object v3, v16, v7

    add-int/lit8 v7, v7, 0x1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v14, v14

    if-lez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    aget-object v2, v15, v14

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a00cf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    const-string/jumbo v14, "AlbumChoiceActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAlbumList end : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    const/16 v14, 0x64

    iput v14, v13, Landroid/os/Message;->what:I

    iput-object v9, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v13, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v5

    const-string/jumbo v14, "AlbumChoiceActivity"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private updateAlbumListForWeChatSight()V
    .locals 15

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v11}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v11, 0x7

    invoke-virtual {v2, v11}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    new-array v8, v5, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    invoke-virtual {v7, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v11

    aput-object v11, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    array-length v12, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_4

    aget-object v1, v8, v11

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    new-array v11, v10, [Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v11, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v4, 0x0

    array-length v12, v8

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v12, :cond_6

    aget-object v1, v8, v11

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v1, v13, v4

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    iget-object v11, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v11, v11

    if-lez v11, :cond_9

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v13, :cond_7

    aget-object v0, v12, v11

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00cf

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    const-string/jumbo v11, "AlbumChoiceActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateAlbumListWeChatSight end : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget-object v11, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    const/16 v11, 0x64

    iput v11, v9, Landroid/os/Message;->what:I

    iput-object v6, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x64

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V

    goto :goto_6
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "MoveToAlbum"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "CopyToAlbum"

    goto :goto_0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getSAScreenID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIsMultiWindow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->isMultiWindowState()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-direct {p0, v1, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getAlbumFrameSizeForScreenSize(ILandroid/content/res/Configuration;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "frameSize"

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getAlbumFrameSize()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v5, 0x400

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setActivityView()V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v4, :cond_3

    const v4, 0x7f12008e

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    :goto_1
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f100012

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f020046

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "operation"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "topPath"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mTopSetPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "isMultiWindow"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIsMultiWindow:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getTitleResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setTitle(I)V

    new-instance v4, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

    invoke-direct {v4, p0, v9}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;

    invoke-direct {v0, p0, v9}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/samsung/android/devicecog/gallery/DeviceCogAlbumChoiceActivityListenerImpl;

    invoke-direct {v4, p0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogAlbumChoiceActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v4, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumChoiceActivityDCHandler;

    invoke-direct {v4, p0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumChoiceActivityDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    new-instance v4, Lcom/samsung/android/devicecog/gallery/touchevent/AlbumChoiceActivityDCTouchEvent;

    invoke-direct {v4, p0}, Lcom/samsung/android/devicecog/gallery/touchevent/AlbumChoiceActivityDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;

    const/4 v1, 0x0

    iget v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    if-ne v4, v7, :cond_4

    const-string/jumbo v1, "MoveToAlbum"

    :cond_0
    :goto_2
    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setStateChangeListener()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    :cond_3
    const v4, 0x7f12008f

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    goto/16 :goto_1

    :cond_4
    iget v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    if-nez v4, :cond_0

    const-string/jumbo v1, "CopyToAlbum"

    goto :goto_2
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->destroyDCTouchEventThread(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getPersonalModeAutoDisalbeWhenScreenoff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 8

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getSAScreenID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v4, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIsMultiWindow:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    sget-boolean v4, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_TABLET:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "activityWidth"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDividedSizeForScreenSize(II)I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "frameSize"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I

    :goto_1
    sget-object v4, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    :cond_1
    new-instance v4, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->showPermissionRationaleDialog()V

    :goto_2
    return-void

    :cond_2
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getAlbumFrameSize()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v3, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->setPermissionRequested(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/16 v5, 0x64

    invoke-static {p0, v4, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->updateAlbumListForWeChatSight()V

    :goto_4
    new-instance v4, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, p0, v5}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContentObserver:Landroid/database/ContentObserver;

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v4}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->updateAlbumList()V

    goto :goto_4
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    const-string/jumbo v4, "AlbumChoiceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event update ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CHOICE_ALBUM:I

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->handleDCChoiceAlbum(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ALBUM:I

    if-ne v2, v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->handleDCCreateAlbum(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
