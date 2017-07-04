.class Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;
.super Landroid/os/Handler;
.source "SendResponseCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$000(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SendResponseCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyGallery : TIME OUT >> mCurrentDCState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$000(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$000(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$100()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$000(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$200(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$300(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$400(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->access$500(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
