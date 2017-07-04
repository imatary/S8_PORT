.class Lcom/sec/samsung/gallery/view/allview/AllViewState$1;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "AllViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v7, "VIEW_BY_TYPE_UPDATED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "REFRESH_SELECTION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "EXIT_SELECTION_MODE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "DOWNLOAD_NEARBY"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "DEVICE_DISCONNECTED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v7, "REFRESH_LAYOUT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$000(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    aget-object v2, v3, v6

    check-cast v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->download(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :pswitch_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->isDeviceRemoved(Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AllViewState"

    const-string/jumbo v6, "top mediaset is removed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    const-string/jumbo v5, "nearby"

    const-string/jumbo v6, "finish allview state()!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$900(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/view/allview/AllViewState$1$1;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$1$1;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState$1;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5, v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1000(Lcom/sec/samsung/gallery/view/allview/AllViewState;[Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$1200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49a22ad2 -> :sswitch_5
        -0x96ac5ea -> :sswitch_3
        0x40145e4 -> :sswitch_0
        0x1d10ace8 -> :sswitch_1
        0x27d8e984 -> :sswitch_4
        0x5ece09d7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "VIEW_BY_TYPE_UPDATED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "REFRESH_SELECTION"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "DOWNLOAD_NEARBY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "DEVICE_DISCONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    return-object v0
.end method
