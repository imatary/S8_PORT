.class Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$3;
.super Landroid/os/Handler;
.source "NearbyViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$3;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$3;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    # invokes: Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->updateNearbyItems()Ljava/util/List;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$100(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$3;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    # getter for: Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$000(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$3;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    # getter for: Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$200(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->setItems(Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$3;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    # invokes: Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->startTimeViewState()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$300(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
