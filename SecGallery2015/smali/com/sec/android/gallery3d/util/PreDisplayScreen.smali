.class public Lcom/sec/android/gallery3d/util/PreDisplayScreen;
.super Ljava/lang/Object;
.source "PreDisplayScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;,
        Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;
    }
.end annotation


# static fields
.field private static final INDEX_IMAGE_COLUMN_BUCKET_ID:I = 0x4

.field private static final INDEX_IMAGE_COLUMN_CLOUD_CACHED_PATH:I = 0x5

.field private static final INDEX_IMAGE_COLUMN_DATA:I = 0x2

.field private static final INDEX_IMAGE_COLUMN_DATE_MODIFIED:I = 0x0

.field private static final INDEX_IMAGE_COLUMN_GROUP_ID:I = 0x3

.field private static final INDEX_IMAGE_COLUMN_ORIENTATION:I = 0x1

.field private static final INDEX_VIDEO_COLUMN_CLOUD_CACHED_PATH:I = 0x3

.field private static final INDEX_VIDEO_COLUMN_DATA:I = 0x1

.field private static final INDEX_VIDEO_COLUMN_DATE_MODIFIED:I = 0x0

.field private static final INDEX_VIDEO_COLUMN_VIDEO_VIEW_MODE:I = 0x2

.field private static final MaxWaitForNotify:J = 0x7d0L

.field private static final SAMSUNG_EMAIL_PROVIDER:Ljava/lang/String; = "content://com.samsung.android.email.attachmentprovider/"

.field private static final TAG:Ljava/lang/String; = "PreDisplayScreen"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCloudCachedPath:Ljava/lang/String;

.field private mDateModified:J

.field private mFilePath:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private mOrientation:I

.field private mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

.field private mUri:Landroid/net/Uri;

.field private mViewMode:I

.field private mWaitToComplete:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mBitmap:Landroid/graphics/Bitmap;

    iput v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mOrientation:I

    iput-wide v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mDateModified:J

    iput-object v6, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mFilePath:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mCloudCachedPath:Ljava/lang/String;

    iput v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mViewMode:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mIntent:Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->IDLE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/app/CropImage;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->ACTIVE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mWaitToComplete:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "content://downloads/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->convertToMediaProviderUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mUri:Landroid/net/Uri;

    :goto_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mDateModified:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "orientation"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mOrientation:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "filepath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "video_view_mode"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mViewMode:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;

    invoke-direct {v3, p0, v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;-><init>(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Lcom/sec/android/gallery3d/util/PreDisplayScreen$1;)V

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/gallery3d/util/ThreadPool;->submitUrgent(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Gallery PreDisplayScreen create. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/util/ThreadPool;->getQueuedCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkGoogleUriImage(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mUri:Landroid/net/Uri;

    goto :goto_2

    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->setPrepareScreenNailResult(Z)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mViewMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mViewMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->setPrepareScreenNailResult(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mDateModified:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/util/PreDisplayScreen;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mDateModified:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mOrientation:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mCloudCachedPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mCloudCachedPath:Ljava/lang/String;

    return-object p1
.end method

.method private applyScreenNail()V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mOrientation:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/CropImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->loadPreDisplayBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private setPrepareScreenNailResult(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->DONE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    const-string/jumbo v0, "Gallery_Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Gallery setPrepareScreenNailResult success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mWaitToComplete:Z

    if-nez v0, :cond_1

    monitor-exit p0

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->FAILED:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "Gallery setPrepareScreenNailResult send notify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkApplyScreenNail()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    sget-object v3, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->IDLE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    sget-object v3, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->FAILED:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    if-ne v2, v3, :cond_1

    :cond_0
    monitor-exit p0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    sget-object v3, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->DONE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->applyScreenNail()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mWaitToComplete:Z

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "Gallery checkApplyScreenNail wait start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    invoke-static {p0, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->timedWaitWithoutInterrupt(Ljava/lang/Object;J)V

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "Gallery checkApplyScreenNail wait end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    sget-object v3, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->DONE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->applyScreenNail()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hideScreenNail()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    sget-object v1, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->DONE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->IDLE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenNailVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->mState:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    sget-object v1, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->DONE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
