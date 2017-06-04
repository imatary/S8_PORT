.class Lcom/sec/android/gallery3d/ui/playicon/PanoramaIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "PanoramaIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/PanoramaIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f02019a

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/PanoramaIcon;->mIconResId:I

    const v0, 0x7f0a031c

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/PanoramaIcon;->mAccessibilityStringId:I

    return-void
.end method
