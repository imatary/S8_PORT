.class public Lcom/sec/samsung/gallery/util/TTSUtil;
.super Ljava/lang/Object;
.source "TTSUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTSUtil"

.field private static mActivityCount:I

.field private static mCursorColor:Ljava/lang/String;

.field private static mInstance:Lcom/sec/samsung/gallery/util/TTSUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mActivityCount:I

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mCursorColor:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mCursorColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "#%08X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_cursor_color"

    const v5, 0x7f100111

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mCursorColor:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mCursorColor:Ljava/lang/String;

    return-object v0
.end method

.method private getBaseString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 9

    const v8, 0x7f0a0422

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v6, v7, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->isInitContext()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getAttributesString(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a040e

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%s, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;-><init>()V

    invoke-interface {v3, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v1}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_2
    :pswitch_0
    return-object v0

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a040f

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%s, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "%s, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a0418

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "%s, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a0465

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBaseString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaSet;I)Ljava/lang/String;
    .locals 12

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-ne v7, v8, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {v6, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0a0422

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a040e

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a04e7

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a040d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;-><init>()V

    invoke-interface {v4, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5, v1}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0a0465

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0a0422

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a040f

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a04e7

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a040d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a0406

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLatestAlbumInfo(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v8

    if-ne v7, v8, :cond_7

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNewMarkAlbum(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v3, 0x1

    :goto_1
    instance-of v7, p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v7, :cond_5

    move-object v7, p2

    check-cast v7, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaSetType()I

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    if-eqz v3, :cond_8

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "%s, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a0413

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    const/4 v7, 0x1

    if-ne p3, v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "%s, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a040c

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "%s, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a040d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mInstance:Lcom/sec/samsung/gallery/util/TTSUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/util/TTSUtil;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/util/TTSUtil;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mInstance:Lcom/sec/samsung/gallery/util/TTSUtil;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mInstance:Lcom/sec/samsung/gallery/util/TTSUtil;

    return-object v0
.end method

.method private getItemName(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string/jumbo v0, "TTSUtil"

    const-string/jumbo v1, "MediaItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPeopleClusterString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object p2, v1, v2

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private getPeopleString(Landroid/content/Context;Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;I)Ljava/lang/String;
    .locals 8

    const-string/jumbo v3, ""

    if-nez p2, :cond_0

    const-string/jumbo v6, "TTSUtil"

    const-string/jumbo v7, "ComposeMediaItemAdpater: Null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v6

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v5, v6

    :cond_1
    if-eqz v1, :cond_5

    const-string/jumbo v0, ""

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    long-to-float v6, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_2
    move-object v4, v3

    goto :goto_0

    :cond_4
    const-string/jumbo v6, ""

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto :goto_2
.end method

.method private getSetCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 4

    if-nez p2, :cond_0

    const-string/jumbo v2, "TTSUtil"

    const-string/jumbo v3, "MediaSet is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLatestAlbumInfo(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNewMarkAlbum(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    instance-of v2, p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaSetType()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_0
.end method

.method private getSetName(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    const-string/jumbo v2, "TTSUtil"

    const-string/jumbo v3, "MediaSet is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a031f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p2, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a04e7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static isTalkBackEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTalkBackEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getFormatedString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    instance-of v4, p2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    move-object v3, p2

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/sec/samsung/gallery/util/TTSUtil;->getSetCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/sec/samsung/gallery/util/TTSUtil;->getSetName(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, p1, p2, v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getBaseString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaSet;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v4, p2

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v5, v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getItemName(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getBaseString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public init(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    sget v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mActivityCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mActivityCount:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mActivityCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mActivityCount:I

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mInstance:Lcom/sec/samsung/gallery/util/TTSUtil;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->onResume()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/util/TTSUtil;->mCursorColor:Ljava/lang/String;

    return-void
.end method

.method public speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p3, p4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    const v3, 0x7f0a040e

    if-eq p2, v3, :cond_1

    const v3, 0x7f0a040f

    if-ne p2, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%s, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a0422

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/Object;I)V
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v6

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v6, v8, :cond_4

    const/4 v2, 0x1

    :goto_1
    instance-of v6, p2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v6, :cond_5

    move-object v6, p2

    check-cast v6, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v6, p3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {p0, p1, v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getFormatedString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz v2, :cond_3

    instance-of v6, p2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast p2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-direct {p0, v6, p2, p3}, Lcom/sec/samsung/gallery/util/TTSUtil;->getPeopleString(Landroid/content/Context;Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {p0, p1, v5}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v7

    goto :goto_1

    :cond_5
    instance-of v6, p2, Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    if-eqz v6, :cond_6

    move-object v6, p2

    check-cast v6, Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v6, p3}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    goto :goto_2

    :cond_6
    instance-of v6, p2, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    if-eqz v6, :cond_7

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    move-object v6, p2

    check-cast v6, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    goto :goto_2

    :cond_7
    instance-of v6, p2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-eqz v6, :cond_8

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    move-object v6, p2

    check-cast v6, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    goto :goto_2

    :cond_8
    instance-of v6, p2, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-eqz v6, :cond_9

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    move-object v6, p2

    check-cast v6, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    goto :goto_2

    :cond_9
    instance-of v6, p2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v6, :cond_b

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    move-object v6, p2

    check-cast v6, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6, v0, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v6, p2

    check-cast v6, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-object v7, v4

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_a

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_a

    const v6, 0x7f0a0404

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a00ba

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a0332

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_b
    instance-of v6, p2, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v6, :cond_1

    move-object v6, p2

    check-cast v6, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v6, v7, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getPeopleClusterString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    return-void
.end method

.method public speak(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method
