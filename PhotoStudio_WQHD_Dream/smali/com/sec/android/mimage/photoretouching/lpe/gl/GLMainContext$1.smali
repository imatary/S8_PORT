.class Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$1;
.super Landroid/os/Handler;
.source "GLMainContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "Requested update size inside handler"

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onOrientationChanged(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->requestRender()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
