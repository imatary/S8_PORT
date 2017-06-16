.class Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Landroid/graphics/Bitmap;Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->imageViewReused(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020278

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
