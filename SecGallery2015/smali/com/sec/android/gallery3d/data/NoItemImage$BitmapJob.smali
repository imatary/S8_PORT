.class Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;
.super Ljava/lang/Object;
.source "NoItemImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/NoItemImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mType:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/NoItemImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/NoItemImage;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/NoItemImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    iget v7, p0, Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;->mType:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/NoItemImage;

    iget-object v7, v7, Lcom/sec/android/gallery3d/data/NoItemImage;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    int-to-float v7, v6

    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v10

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v2, v7

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v10

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v1, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/NoItemImage;

    iget-object v7, v7, Lcom/sec/android/gallery3d/data/NoItemImage;->mContext:Landroid/content/Context;

    const v8, 0x7f1000ab

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object v0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
