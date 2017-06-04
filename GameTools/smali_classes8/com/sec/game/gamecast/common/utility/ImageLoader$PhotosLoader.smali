.class Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/utility/ImageLoader;Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    invoke-virtual {v4, v5}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->imageViewReused(Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-object v6, v6, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget v7, v7, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->type:I

    # invokes: Lcom/sec/game/gamecast/common/utility/ImageLoader;->getBitmap(Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6, v7}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->access$000(Lcom/sec/game/gamecast/common/utility/ImageLoader;Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->hasHoneycomb()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    # getter for: Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->access$100(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    invoke-virtual {v4, v5}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->imageViewReused(Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    invoke-direct {v0, v4, v2, v5}, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;-><init>(Lcom/sec/game/gamecast/common/utility/ImageLoader;Landroid/graphics/drawable/BitmapDrawable;Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)V

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    # getter for: Lcom/sec/game/gamecast/common/utility/ImageLoader;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->access$200(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v2, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotosLoader;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    # getter for: Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->access$100(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
