.class public Lcom/sec/android/gallery3d/ui/playicon/VideoCloudIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "VideoCloudIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->ONLY_CLOUD_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoCloudIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f020177

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoCloudIcon;->mIconResId:I

    const v0, 0x7f0a04bc

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoCloudIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4104"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoCloudIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoCloudIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/VideoCloudIcon;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playVideo(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method
