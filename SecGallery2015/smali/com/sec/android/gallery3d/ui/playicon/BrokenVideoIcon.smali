.class public Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "BrokenVideoIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f020181

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mIconResId:I

    const-string/jumbo v0, "4104"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mIconResId:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0
.end method

.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playVideo(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method
