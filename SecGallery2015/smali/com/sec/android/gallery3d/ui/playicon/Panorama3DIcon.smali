.class public Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "Panorama3DIcon.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Panorama3DIcon"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f0201b4

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mIconResId:I

    const v0, 0x7f0a043a

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4031"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02e8

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isURIImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Panorama3DIcon"

    const-string/jumbo v1, "not 3d panorama item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/util/Panorama3DUtil;->launch3DPanorama(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method
