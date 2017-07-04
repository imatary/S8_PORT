.class Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$1;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-string/jumbo v1, "NearbyViewState"

    const-string/jumbo v2, "mNearbyDevicesObserver : onChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$1;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$000(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
