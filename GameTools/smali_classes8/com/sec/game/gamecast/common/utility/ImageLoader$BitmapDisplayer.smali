.class Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;
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
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/BitmapDrawable;

.field photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/sec/game/gamecast/common/utility/ImageLoader;Landroid/graphics/drawable/BitmapDrawable;Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->imageViewReused(Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-boolean v0, v0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->isAlphaAnimation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-object v1, v1, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-boolean v3, v3, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->isRoundImage:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # invokes: Lcom/sec/game/gamecast/common/utility/ImageLoader;->setImageWithAlphaAnimation(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->access$300(Lcom/sec/game/gamecast/common/utility/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Boolean;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    # getter for: Lcom/sec/game/gamecast/common/utility/ImageLoader;->memoryCache:Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;
    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->access$400(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    # getter for: Lcom/sec/game/gamecast/common/utility/ImageLoader;->memoryCache:Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;
    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->access$400(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-object v1, v1, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget v3, v3, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-boolean v0, v0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->isRoundImage:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    # getter for: Lcom/sec/game/gamecast/common/utility/ImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->access$100(Lcom/sec/game/gamecast/common/utility/ImageLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$BitmapDisplayer;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
