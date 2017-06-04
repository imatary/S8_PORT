.class Lcom/sec/android/gallery3d/ui/playicon/Display3DIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "Display3DIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->DISPLAY3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Display3DIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f020104

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Display3DIcon;->mIconResId:I

    return-void
.end method
