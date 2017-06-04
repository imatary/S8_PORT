.class Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$2;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$2;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$2;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    # getter for: Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$200(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$2;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    # invokes: Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->updateNearbyItems()Ljava/util/List;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$100(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method
