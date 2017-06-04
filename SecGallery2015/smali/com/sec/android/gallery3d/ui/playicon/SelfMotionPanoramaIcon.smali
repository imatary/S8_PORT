.class public Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "SelfMotionPanoramaIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SELF_MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020195

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;->mIconResId:I

    :goto_0
    const v0, 0x7f0a026c

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;->mAccessibilityStringId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;->mAlignType:I

    const-string/jumbo v0, "4038"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;->mSAEventId:Ljava/lang/String;

    return-void

    :cond_0
    const v0, 0x7f020194

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;->mIconResId:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playSelfMotionPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v0, 0x1

    return v0
.end method
