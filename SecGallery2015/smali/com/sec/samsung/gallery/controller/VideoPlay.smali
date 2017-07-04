.class public Lcom/sec/samsung/gallery/controller/VideoPlay;
.super Ljava/lang/Object;
.source "VideoPlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;,
        Lcom/sec/samsung/gallery/controller/VideoPlay$MotionCmdType;
    }
.end annotation


# static fields
.field private static final ACTION_SECURE_LOCK:Ljava/lang/String;

.field private static final ACTION_VIDEO_PLAY_COVERMODE:Ljava/lang/String;

.field public static final CATEGORY_ALBUM:I = 0x6e

.field public static final CATEGORY_CATEGORIES:I = 0x82

.field public static final CATEGORY_EVENTS:I = 0x78

.field public static final CATEGORY_FAVORITE:I = 0x8c

.field public static final CATEGORY_NEARBY_VIDEO:I = 0xaa

.field public static final CATEGORY_SEARCH:I = 0x96

.field public static final CATEGORY_SHORTCUT:I = 0xc8

.field public static final CATEGORY_TIME:I = 0x64

.field public static final CATEGORY_WECHATSIGHT:I = 0xbe

.field private static final EXTRA_BUCKETID:Ljava/lang/String; = "bucketId"

.field private static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field private static final EXTRA_IS_SHARED_STORY:Ljava/lang/String; = "is_shared"

.field private static final EXTRA_ITEMID:Ljava/lang/String; = "itemId"

.field private static final EXTRA_NEARBY_DEVICEID:Ljava/lang/String; = "nearbyDeviceId"

.field private static final EXTRA_NEARBY_DEVICE_NIC:Ljava/lang/String; = "NIC"

.field private static final EXTRA_NEARBY_PROVIDER_NAME:Ljava/lang/String; = "CurrentProviderName"

.field private static final EXTRA_NEARBY_THUMB_URI:Ljava/lang/String; = "nearbyThumbUri"

.field public static final EXTRA_RESUME_POSITION:Ljava/lang/String; = "resume_position"

.field private static final EXTRA_SCLOUD_ID:Ljava/lang/String; = "scloud_id"

.field private static final EXTRA_SEARCHSTR:Ljava/lang/String; = "searchStr"

.field private static final EXTRA_SEED:Ljava/lang/String; = "seed"

.field private static final EXTRA_SORTBY:Ljava/lang/String; = "sortBy"

.field private static final FLIP_VIDEO_VIEWER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.dual"

.field private static final FLIP_VIDEO_VIEWER_SIMPLE_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.dual.flipplayer.FlipPlayer"

.field private static final FROM_SETUP_WIDZARD:Ljava/lang/String; = "from-sw"

.field public static final GALLERY_ALBLUM:I = 0x118

.field public static final GALLERY_ALBLUM_MODIFIED_ASC:I = 0xc8

.field public static final GALLERY_ALBLUM_MODIFIED_DEC:I = 0xd2

.field public static final GALLERY_ALBLUM_NAME_ASC:I = 0xf0

.field public static final GALLERY_ALBLUM_NAME_DEC:I = 0xfa

.field public static final GALLERY_ALBLUM_TAKEN_ASC:I = 0x140

.field public static final GALLERY_ALBLUM_TAKEN_DEC:I = 0x14a

.field public static final GALLERY_DEFAULT:I = 0x122

.field private static final MOTIN_VIEWER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.app.slowmotion"

.field private static final MOTIN_VIEWER_SIMPLE_CLASS_NAME:Ljava/lang/String; = "com.samsung.app.slowmotion.slowmotionactivity.SlowMotionActivity"

.field private static final RECORD_MODE_DEFAULT:I = 0x0

.field private static final RECORD_MODE_FAST:I = 0x2

.field private static final RECORD_MODE_FLIP:I = 0x4

.field private static final RECORD_MODE_SLOW:I = 0x1

.field private static final REQUEST_VIDEO_PLAY_COVER_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoPlay"


# instance fields
.field private final mExistUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.intent.action.SECURE_LOCK"

    :goto_0
    sput-object v0, Lcom/sec/samsung/gallery/controller/VideoPlay;->ACTION_SECURE_LOCK:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.samsung.intent.action.START_SCOVER_PLAYBACK"

    :goto_1
    sput-object v0, Lcom/sec/samsung/gallery/controller/VideoPlay;->ACTION_VIDEO_PLAY_COVERMODE:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.SECURE_LOCK"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "android.intent.action.START_SCOVER_PLAYBACK"

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mExistUris:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-void
.end method

.method private launchFlipVideoPlayer(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "VideoPlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchFlipVideo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->disableFinishingAtSecureLock()V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.app.camera.shootingmode.dual"

    const-string/jumbo v4, "com.sec.android.app.camera.shootingmode.dual.flipplayer.FlipPlayer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "key_recorded_mode"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "original_path"

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "DTVD"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "VideoPlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can not play flip video : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchMotionPlayer(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "VideoPlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchMotionPlayer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->disableFinishingAtSecureLock()V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.app.slowmotion"

    const-string/jumbo v4, "com.samsung.app.slowmotion.slowmotionactivity.SlowMotionActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "original_path"

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    const-string/jumbo v3, "key_recorded_mode"

    sget-object v4, Lcom/sec/samsung/gallery/controller/VideoPlay$MotionCmdType;->START_SLOW_MOTION:Lcom/sec/samsung/gallery/controller/VideoPlay$MotionCmdType;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/controller/VideoPlay$MotionCmdType;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "VideoPlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can not motion play video : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v3, "key_recorded_mode"

    sget-object v4, Lcom/sec/samsung/gallery/controller/VideoPlay$MotionCmdType;->START_FAST_MOTION:Lcom/sec/samsung/gallery/controller/VideoPlay$MotionCmdType;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/controller/VideoPlay$MotionCmdType;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private launchVideoPlayer(Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 10

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v6, "video/mpeg4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "video/mp2p"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string/jumbo v1, "video/*"

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    :try_start_0
    new-instance v6, Landroid/content/ActivityNotFoundException;

    invoke-direct {v6}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v6
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "VideoPlay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can not play video : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a02d5

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v4, Landroid/content/Intent;

    sget-object v6, Lcom/sec/samsung/gallery/controller/VideoPlay;->ACTION_VIDEO_PLAY_COVERMODE:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.android.video"

    const-string/jumbo v7, "com.samsung.android.video.player.activity.SCoverPlayer"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.TITLE"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "from-sw"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "from_gallery_to_videoplayer"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "original_path"

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    if-eqz v6, :cond_5

    const-string/jumbo v6, "bucketId"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "category"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$100(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "itemId"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$200(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "sortBy"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$300(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "searchStr"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$400(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "nearbyDeviceId"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$500(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "seed"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$600(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "nearbyThumbUri"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$700(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "scloud_id"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$800(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "NIC"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$900(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "CurrentProviderName"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$1000(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "is_shared"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$1100(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "resume_position"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$1200(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v6, "VideoPlay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VIDEO INTENT: BUCKETID["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] CATEGORY["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$100(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] ITEMID["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$200(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] SORTBY["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$300(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] SEARCHSTR["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$400(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] NEARBY DEVICE ID["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$500(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] SEED STRING["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$600(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] NEARBY THUMB URI["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$700(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] SCLOUD ID["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$800(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] NEARBY DEVICE NIC["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$900(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] NEARBY PROVIDER NAME["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$1000(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] IS SHRED STORY["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$1100(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] RESUME POSITION ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$1200(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mExistUris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$1300(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->access$1300(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExist(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mExistUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->disableFinishingAtSecureLock()V

    new-instance v4, Landroid/content/Intent;

    sget-object v6, Lcom/sec/samsung/gallery/controller/VideoPlay;->ACTION_SECURE_LOCK:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVideoActivityDefault:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "com.samsung.android.video"

    const-string/jumbo v7, "com.samsung.android.video.player.activity.MoviePlayer"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const-string/jumbo v6, "createBySecureLock"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMmsUri(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnhancedMessageUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.android.video"

    const-string/jumbo v7, "com.samsung.android.video.player.activity.MoviePlayer"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVideoActivityDefault:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "com.samsung.android.video"

    const-string/jumbo v7, "com.samsung.android.video.player.activity.MoviePlayer"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v6, "android.intent.extra.STREAM"

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mExistUris:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_d
    const-string/jumbo v6, "VideoPlay"

    const-string/jumbo v7, "play Video"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isVideoStarted(Z)V

    :cond_e
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_f
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->makeIntentForDualScreenMode(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_10
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_11
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a04c3

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/controller/VideoPlay;->execute(Lcom/sec/android/gallery3d/data/MediaItem;ZI)V

    return-void
.end method

.method public execute(Lcom/sec/android/gallery3d/data/MediaItem;ZI)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/sec/samsung/gallery/controller/VideoPlay;->launchMotionPlayer(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VideoPlay"

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.camera.shootingmode.dual"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p3}, Lcom/sec/samsung/gallery/controller/VideoPlay;->launchFlipVideoPlayer(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/VideoPlay;->launchVideoPlayer(Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public launchFlipVideoPlayer(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/net/Uri;I)V
    .locals 4

    const-string/jumbo v2, "VideoPlay"

    const-string/jumbo v3, "launchFlipVideo for scloud"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->disableFinishingAtSecureLock()V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.app.camera.shootingmode.dual"

    const-string/jumbo v3, "com.sec.android.app.camera.shootingmode.dual.flipplayer.FlipPlayer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "key_recorded_mode"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "original_path"

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "DTVD"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VideoPlay"

    const-string/jumbo v3, "Can not play scloud flip video"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVideoPlayInfo(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/VideoPlay;->mVideoPlayInfo:Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    return-void
.end method
