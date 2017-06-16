.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->onOk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isExiting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
