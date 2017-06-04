.class Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field private mCropRectFace:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;-><init>(Lcom/sec/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V

    iput-object p3, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRectFace:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 10

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRectFace:Landroid/graphics/RectF;

    if-eqz v6, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRectFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRectFace:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRectFace:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->mCropRectFace:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;
    invoke-static {v6}, Lcom/sec/android/gallery3d/app/CropImage;->access$2400(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/ui/CropView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;
    invoke-static {v7}, Lcom/sec/android/gallery3d/app/CropImage;->access$2400(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/ui/CropView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/sec/android/gallery3d/app/CropImage;->access$200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v8

    rsub-int v8, v8, 0x168

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V
    invoke-static {v4, v6, v7, v8}, Lcom/sec/android/gallery3d/app/CropImage;->access$2500(Landroid/graphics/Rect;III)V

    const-string/jumbo v6, "cropped-rect"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->getCroppedResult()Lcom/sec/android/gallery3d/crop/CropResult;
    invoke-static {v6}, Lcom/sec/android/gallery3d/app/CropImage;->access$2600(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/crop/CropResult;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, v5, v3}, Lcom/sec/android/gallery3d/crop/CropResult;->setResultIntent(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;Landroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v6, v3}, Lcom/sec/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v6, p1, v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$2700(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
