.class public Lcom/sec/android/gallery3d/ui/playicon/FastMotionIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "FastMotionIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FAST_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FastMotionIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f020182

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FastMotionIcon;->mIconResId:I

    const v0, 0x7f0a01a0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FastMotionIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4025"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FastMotionIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FastMotionIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->playFastMotion(Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v0, 0x1

    return v0
.end method
