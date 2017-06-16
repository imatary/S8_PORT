.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1$1;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;->onDecodeFinished(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v4

    const v5, 0x80009

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->hideMenu()V

    :cond_0
    return-void
.end method
