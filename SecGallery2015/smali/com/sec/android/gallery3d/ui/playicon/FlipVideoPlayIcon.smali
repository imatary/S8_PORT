.class public Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "FlipVideoPlayIcon.java"


# static fields
.field private static final DUAL_CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.dual"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f02018c

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;->mIconResId:I

    const v0, 0x7f0a04bc

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4036"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.app.camera.shootingmode.dual"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playFlipVideo(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playVideo(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/os/Bundle;)V

    goto :goto_0
.end method
