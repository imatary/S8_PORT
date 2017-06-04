.class public Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "MotionPanoramaIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020195

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->mIconResId:I

    :goto_0
    const v0, 0x7f0a0411

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->mAccessibilityStringId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->mAlignType:I

    const-string/jumbo v0, "4038"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->mSAEventId:Ljava/lang/String;

    return-void

    :cond_0
    const v0, 0x7f020194

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->mIconResId:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playMotionPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "MPNR"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
