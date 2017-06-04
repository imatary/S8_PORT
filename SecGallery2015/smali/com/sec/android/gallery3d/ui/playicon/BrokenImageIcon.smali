.class public Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "BrokenImageIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f020180

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->mIconResId:I

    return-void
.end method


# virtual methods
.method protected getPressedTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    return-object v0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->mIconResId:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0
.end method
