.class Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$NetworkModePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModeMultiSimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkModePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;


# direct methods
.method public constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-virtual {v0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->handleDataConnectionStateChanged(I)V

    return-void
.end method
