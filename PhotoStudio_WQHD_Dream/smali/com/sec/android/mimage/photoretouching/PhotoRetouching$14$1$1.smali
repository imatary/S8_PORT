.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$500(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$500(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$502(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
