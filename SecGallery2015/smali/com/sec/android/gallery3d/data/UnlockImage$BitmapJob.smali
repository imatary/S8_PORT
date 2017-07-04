.class Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;
.super Ljava/lang/Object;
.source "UnlockImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UnlockImage;
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

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UnlockImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/UnlockImage;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UnlockImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    iget v8, p0, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;->mType:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UnlockImage;

    invoke-static {v8}, Lcom/sec/android/gallery3d/data/UnlockImage;->access$000(Lcom/sec/android/gallery3d/data/UnlockImage;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UnlockImage;

    invoke-static {v9}, Lcom/sec/android/gallery3d/data/UnlockImage;->access$100(Lcom/sec/android/gallery3d/data/UnlockImage;)I

    move-result v9

    add-int v4, v8, v9

    int-to-float v8, v7

    iget v9, v5, Landroid/graphics/Point;->x:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    int-to-float v9, v4

    mul-float/2addr v9, v6

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v2, v8

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    int-to-float v9, v4

    mul-float/2addr v9, v6

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v1, v8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UnlockImage;

    invoke-static {v8}, Lcom/sec/android/gallery3d/data/UnlockImage;->access$000(Lcom/sec/android/gallery3d/data/UnlockImage;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100253

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object v0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
