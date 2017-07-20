.class Lcom/android/services/telephony/TelephonyConnection$3;
.super Lcom/android/internal/telephony/Connection$ListenerBase;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Lcom/android/internal/telephony/Connection$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioQualityChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->-get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConferenceMergedFailed()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->-wrap1(Lcom/android/services/telephony/TelephonyConnection;)V

    return-void
.end method

.method public onConferenceParticipantsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->-get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConnectionCapabilitiesChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->-get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onExitedEcmMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->handleExitedEcmMode()V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->-get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onMultipartyStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->-wrap2(Lcom/android/services/telephony/TelephonyConnection;Z)V

    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->-get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->-get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWifiChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setWifi(Z)V

    return-void
.end method
