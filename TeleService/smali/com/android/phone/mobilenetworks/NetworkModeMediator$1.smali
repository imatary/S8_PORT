.class Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;
.super Landroid/os/Handler;
.source "NetworkModeMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeMediator;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)Lcom/android/phone/mobilenetworks/INetworkModeController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/phone/mobilenetworks/INetworkModeController;->getPreferredNetworkTypeResponse(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->-wrap0(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)Lcom/android/phone/mobilenetworks/INetworkModeController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/phone/mobilenetworks/INetworkModeController;->setPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
