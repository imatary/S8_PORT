.class public Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;
.super Ljava/lang/Object;
.source "LibEditModeHelper.java"


# instance fields
.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-void
.end method


# virtual methods
.method public getFlippedPhotoBitmap(Lcom/sec/android/gallery3d/data/MediaItem;)[Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/controller/FlippedPhoto;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/controller/FlippedPhoto;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/controller/FlippedPhoto;->getFlippedPhotoBitmap(Lcom/sec/android/gallery3d/data/MediaItem;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isSetAsWallpaperEnabledInKnoxMode()Z
    .locals 3

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/PersonaManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/PersonaManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/PersonaManagerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/PersonaManagerInterface;->isSetAsWallpaperEnabledInKnoxMode(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public saveFlippedPhotoAsNew(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/Path;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/controller/FlippedPhoto;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/controller/FlippedPhoto;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-virtual {v0, v1, p1}, Lcom/sec/samsung/gallery/controller/FlippedPhoto;->saveFlippedPhotoAsNew(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method
