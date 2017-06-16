.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18$1;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1802(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
