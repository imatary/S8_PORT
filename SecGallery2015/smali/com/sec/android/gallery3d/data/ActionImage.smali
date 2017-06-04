.class public Lcom/sec/android/gallery3d/data/ActionImage;
.super Lcom/sec/android/gallery3d/data/MediaItem;
.source "ActionImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionImage"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field final mContext:Landroid/content/Context;

.field private mInitialImageVisible:Z

.field private final mResourceId:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/ActionImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mInitialImageVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mResourceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/ActionImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mInitialImageVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/ActionImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mResourceId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/ActionImage;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/data/ActionImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x4000

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;-><init>(Lcom/sec/android/gallery3d/data/ActionImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/ActionImage;->mInitialImageVisible:Z

    goto :goto_0
.end method
