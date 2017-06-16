.class Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;Landroid/graphics/Bitmap;Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->bitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setItemView(Landroid/widget/ImageView;FLandroid/graphics/Rect;II)V

    :cond_0
    return-void
.end method
