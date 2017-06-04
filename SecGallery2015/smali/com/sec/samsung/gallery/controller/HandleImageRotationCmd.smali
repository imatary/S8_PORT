.class public Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "HandleImageRotationCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAngle:I

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mNeedChangeTypeMotionPanorama:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->FEATURE_USE_DEVICE_COG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mNeedChangeTypeMotionPanorama:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->deleteSEFData(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->updateImage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->restartHandleImageRotation()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mAngle:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->FEATURE_USE_DEVICE_COG:Z

    return v0
.end method

.method private deleteSEFData(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleImageRotation()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a049e

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v2, 0x200000

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v2, 0x1000000

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mNeedChangeTypeMotionPanorama:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->showRotateMotionPanoramaDialog()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v2, 0x800000

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v2, 0x10000000

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mNeedChangeTypeMotionPanorama:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->showRotateSelfMotionPanoramaDialog()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mNeedChangeTypeMotionPanorama:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;-><init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private restartHandleImageRotation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mNeedChangeTypeMotionPanorama:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->handleImageRotation()V

    return-void
.end method

.method private showRotateMotionPanoramaDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a037e

    new-instance v3, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRotateSelfMotionPanoramaDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a037e

    new-instance v3, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$4;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$3;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateImage(Ljava/lang/String;I)V
    .locals 5

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "sef_file_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "sef_file_sub_type"

    const-string/jumbo v4, "-1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->mAngle:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->handleImageRotation()V

    return-void
.end method
