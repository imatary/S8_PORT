.class Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;
.super Ljava/lang/Object;
.source "NetworkModeGlobalController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showSearchingForDialog(Lcom/android/phone/MobileNetworkSettings;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

.field final synthetic val$networkMode:I

.field final synthetic val$settings:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;ILcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iput p2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;->val$networkMode:I

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;->val$settings:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;->val$networkMode:I

    const/16 v1, 0x8

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;->val$settings:Lcom/android/phone/MobileNetworkSettings;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->-wrap2(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;Z)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->resetSendGlobalNetworkDialogMessageDelayed()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->setCancelNetworkSelection()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;->val$settings:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->-wrap3(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;)V

    goto :goto_0
.end method
