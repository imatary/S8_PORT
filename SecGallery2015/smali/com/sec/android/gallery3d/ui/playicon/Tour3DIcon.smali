.class public Lcom/sec/android/gallery3d/ui/playicon/Tour3DIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "Tour3DIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->TOUR3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Tour3DIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f0201b7

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Tour3DIcon;->mIconResId:I

    const v0, 0x7f0a04d8

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Tour3DIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4026"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Tour3DIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Tour3DIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->play3DTour(Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v0, 0x1

    return v0
.end method
