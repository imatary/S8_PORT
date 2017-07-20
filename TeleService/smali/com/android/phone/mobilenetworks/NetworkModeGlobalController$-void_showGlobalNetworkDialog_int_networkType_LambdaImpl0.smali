.class final synthetic Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;
.super Ljava/lang/Object;
.source "NetworkModeGlobalController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$finalMobilNetworkSettings:Lcom/android/phone/MobileNetworkSettings;

.field private synthetic val$networkType:I

.field private synthetic val$this:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;->val$this:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;->val$finalMobilNetworkSettings:Lcom/android/phone/MobileNetworkSettings;

    iput p3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;->val$networkType:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;->val$this:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;->val$finalMobilNetworkSettings:Lcom/android/phone/MobileNetworkSettings;

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;->val$networkType:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->-com_android_phone_mobilenetworks_NetworkModeGlobalController_lambda$1(Lcom/android/phone/MobileNetworkSettings;ILandroid/content/DialogInterface;I)V

    return-void
.end method
