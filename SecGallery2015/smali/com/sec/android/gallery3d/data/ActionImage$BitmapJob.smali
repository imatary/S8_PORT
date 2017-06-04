.class Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;
.super Ljava/lang/Object;
.source "ActionImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ActionImage;
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

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ActionImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ActionImage;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    # getter for: Lcom/sec/android/gallery3d/data/ActionImage;->mInitialImageVisible:Z
    invoke-static {v3}, Lcom/sec/android/gallery3d/data/ActionImage;->access$000(Lcom/sec/android/gallery3d/data/ActionImage;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/ActionImage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    # getter for: Lcom/sec/android/gallery3d/data/ActionImage;->mResourceId:I
    invoke-static {v3}, Lcom/sec/android/gallery3d/data/ActionImage;->access$100(Lcom/sec/android/gallery3d/data/ActionImage;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    # getter for: Lcom/sec/android/gallery3d/data/ActionImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/gallery3d/data/ActionImage;->access$200(Lcom/sec/android/gallery3d/data/ActionImage;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ActionImage"

    const-string/jumbo v4, "Initial bitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseExitQuickViewWithBlur:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    iget-object v3, v3, Lcom/sec/android/gallery3d/data/ActionImage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    # getter for: Lcom/sec/android/gallery3d/data/ActionImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/ActionImage;->access$200(Lcom/sec/android/gallery3d/data/ActionImage;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    # setter for: Lcom/sec/android/gallery3d/data/ActionImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/data/ActionImage;->access$202(Lcom/sec/android/gallery3d/data/ActionImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/ActionImage;

    # getter for: Lcom/sec/android/gallery3d/data/ActionImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ActionImage;->access$200(Lcom/sec/android/gallery3d/data/ActionImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/ActionImage$BitmapJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
