.class Lcom/android/services/telephony/ImsConference$3;
.super Landroid/telecom/Connection$Listener;
.source "ImsConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/ImsConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/ImsConference;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "onConferenceParticipantsChanged: %d participants"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-static {v1, v0, p2}, Lcom/android/services/telephony/ImsConference;->-wrap3(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 5

    const-string/jumbo v1, "onConnectionCapabilitiesChanged: Connection: %s, connectionCapabilities: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v1}, Lcom/android/services/telephony/ImsConference;->getConnectionCapabilities()I

    move-result v0

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-static {v2, v0, p2}, Lcom/android/services/telephony/ImsConference;->-wrap1(Lcom/android/services/telephony/ImsConference;II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/ImsConference;->setConnectionCapabilities(I)V

    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .locals 5

    const-string/jumbo v1, "onConnectionPropertiesChanged: Connection: %s, connectionProperties: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v1}, Lcom/android/services/telephony/ImsConference;->getConnectionProperties()I

    move-result v0

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-static {v2, v0, p2}, Lcom/android/services/telephony/ImsConference;->-wrap0(Lcom/android/services/telephony/ImsConference;II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/ImsConference;->setConnectionProperties(I)V

    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-static {v0}, Lcom/android/services/telephony/ImsConference;->-wrap2(Lcom/android/services/telephony/ImsConference;)V

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onExtrasChanged: c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/ImsConference;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onExtrasRemoved: c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/ImsConference;->removeExtras(Ljava/util/List;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/ImsConference;->setState(I)V

    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 2

    const-string/jumbo v0, "onStatusHintsChanged"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-static {v0}, Lcom/android/services/telephony/ImsConference;->-wrap7(Lcom/android/services/telephony/ImsConference;)V

    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 3

    const-string/jumbo v0, "onVideoProviderChanged: Connection: %s, VideoProvider: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p1, p2}, Lcom/android/services/telephony/ImsConference;->setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 4

    const-string/jumbo v0, "onVideoStateChanged video state %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p1, p2}, Lcom/android/services/telephony/ImsConference;->setVideoState(Landroid/telecom/Connection;I)V

    return-void
.end method
