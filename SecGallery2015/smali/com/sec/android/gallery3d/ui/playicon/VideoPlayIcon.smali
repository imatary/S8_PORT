.class public Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "VideoPlayIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0201b6

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;->mIconResId:I

    :goto_0
    const v0, 0x7f0a04bc

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4104"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;->mSAEventId:Ljava/lang/String;

    return-void

    :cond_0
    const v0, 0x7f0201b5

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;->mIconResId:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playVideo(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method
