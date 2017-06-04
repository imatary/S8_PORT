.class public Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "Video360PlayIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f020193

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;->mIconResId:I

    const v0, 0x7f0a04bd

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4035"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSamsungVideoFor360Video:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playVideo(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/os/Bundle;)V

    :goto_0
    return v2

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/controller/Play360Content;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/controller/Play360Content;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/controller/Play360Content;->execute(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    goto :goto_0
.end method
