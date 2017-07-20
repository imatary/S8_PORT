.class Lcom/android/services/telephony/TelephonyConferenceController$1;
.super Landroid/telecom/Connection$Listener;
.source "TelephonyConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConferenceController;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConferenceController$1;->this$0:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController$1;->this$0:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConferenceController;->remove(Landroid/telecom/Connection;)V

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController$1;->this$0:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChange triggered in Conf Controller state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController$1;->this$0:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method
