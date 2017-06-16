.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6$1;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
