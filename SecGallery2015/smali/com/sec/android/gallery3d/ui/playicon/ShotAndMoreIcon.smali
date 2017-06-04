.class public Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "ShotAndMoreIcon.java"


# instance fields
.field private final mIsKnox2Enabled:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;->mIsKnox2Enabled:Z

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SHOT_AND_MORE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f0201b0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;->mIconResId:I

    const v0, 0x7f0a03d9

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4028"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;->mIsKnox2Enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02e8

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playMagicShotStudio(Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
