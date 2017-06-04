.class public Lcom/sec/android/gallery3d/ui/playicon/HyperMotionIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "HyperMotionIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->HYPER_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/HyperMotionIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f02018e

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/HyperMotionIcon;->mIconResId:I

    const v0, 0x7f0a01fa

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/HyperMotionIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4023"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/HyperMotionIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/HyperMotionIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/HyperMotionIcon;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playVideo(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method
