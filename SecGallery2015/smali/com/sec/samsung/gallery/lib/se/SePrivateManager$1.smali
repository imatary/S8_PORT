.class Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;
.super Ljava/lang/Object;
.source "SePrivateManager.java"

# interfaces
.implements Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->getInstance(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 3

    const-string/jumbo v0, "SePrivateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChange state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->access$000(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)Lcom/samsung/android/privatemode/SemPrivateModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->access$000(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)Lcom/samsung/android/privatemode/SemPrivateModeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->registerListener(Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)Landroid/os/IBinder;

    move-result-object v1

    # setter for: Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->access$102(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SePrivateManager"

    const-string/jumbo v1, "mPrivateModeManager is null so can not register client"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mListener:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->access$200(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mListener:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->access$200(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;->makeHandler()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mListener:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->access$200(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mListener:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->access$200(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;->cancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
