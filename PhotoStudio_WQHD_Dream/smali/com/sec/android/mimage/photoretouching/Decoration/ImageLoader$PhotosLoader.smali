.class Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;
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
    name = "PhotosLoader"
.end annotation


# instance fields
.field photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->imageViewReused(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->memoryCache:Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->imageViewReused(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    invoke-direct {v0, v3, v1, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Landroid/graphics/Bitmap;Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
