.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->applyBlackFrameHack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$500(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isExiting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$400(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/FrameLayout;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$600(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$500(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0x7f0e02fc

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$500(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12$1;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
