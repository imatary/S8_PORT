.class public Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "FlipPhotoIcon.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02018a

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;->mIconResId:I

    :goto_0
    const v0, 0x7f0a040b

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;->mAccessibilityStringId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;->mAlignType:I

    const-string/jumbo v0, "4037"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;->mSAEventId:Ljava/lang/String;

    return-void

    :cond_0
    const v0, 0x7f020189

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;->mIconResId:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
