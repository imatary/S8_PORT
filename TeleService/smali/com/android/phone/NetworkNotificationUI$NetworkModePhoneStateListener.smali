.class Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkModePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method public constructor <init>(Lcom/android/phone/NetworkNotificationUI;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->dataConnectionStateChanged(I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->serviceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method
