.class Lcom/sec/android/gallery3d/ui/playicon/SequenceShotIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "SequenceShotIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SEQUENCE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SequenceShotIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f0201a8

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SequenceShotIcon;->mIconResId:I

    const-string/jumbo v0, "4027"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/SequenceShotIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method
