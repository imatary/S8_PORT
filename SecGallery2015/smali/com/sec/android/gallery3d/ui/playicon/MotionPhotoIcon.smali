.class public Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "MotionPhotoIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020198

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;->mIconResId:I

    :goto_0
    const v0, 0x7f0a0412

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;->mAccessibilityStringId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;->mAlignType:I

    const-string/jumbo v0, "4039"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;->mSAEventId:Ljava/lang/String;

    return-void

    :cond_0
    const v0, 0x7f020196

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;->mIconResId:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playMotionPhoto(Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v0, 0x1

    return v0
.end method
