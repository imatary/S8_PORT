.class public Lcom/sec/samsung/gallery/view/DimensionConfig;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;,
        Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;II)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/view/DimensionConfig;->getIntFromTypeArray(Landroid/content/res/Resources;II)I

    move-result v0

    return v0
.end method

.method private static getIntFromTypeArray(Landroid/content/res/Resources;II)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method
