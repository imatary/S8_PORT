.class Lcom/android/services/telephony/CdmaConferenceController$1;
.super Landroid/telecom/Connection$Listener;
.source "CdmaConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/CdmaConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/CdmaConferenceController;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/CdmaConferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/CdmaConferenceController$1;->this$0:Lcom/android/services/telephony/CdmaConferenceController;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController$1;->this$0:Lcom/android/services/telephony/CdmaConferenceController;

    check-cast p1, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/CdmaConferenceController;->remove(Lcom/android/services/telephony/CdmaConnection;)V

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController$1;->this$0:Lcom/android/services/telephony/CdmaConferenceController;

    invoke-static {v0}, Lcom/android/services/telephony/CdmaConferenceController;->-wrap1(Lcom/android/services/telephony/CdmaConferenceController;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConferenceController$1;->this$0:Lcom/android/services/telephony/CdmaConferenceController;

    invoke-static {v0}, Lcom/android/services/telephony/CdmaConferenceController;->-wrap1(Lcom/android/services/telephony/CdmaConferenceController;)V

    return-void
.end method
