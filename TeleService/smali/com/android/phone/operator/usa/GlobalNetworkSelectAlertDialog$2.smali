.class Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalNetworkSelectAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-static {v0}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->-get0(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-static {v0}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->-get0(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
