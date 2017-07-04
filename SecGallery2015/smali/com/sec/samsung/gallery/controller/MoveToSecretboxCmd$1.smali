.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;
.super Landroid/os/Handler;
.source "MoveToSecretboxCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
