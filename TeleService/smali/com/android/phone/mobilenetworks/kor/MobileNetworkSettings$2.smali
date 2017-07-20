.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;
.super Landroid/database/ContentObserver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-get4(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-get4(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Data network settings value changed, force closing the dialog"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-wrap3(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-get4(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Data network settings value changed, updating data checkbox state"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-wrap3(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-get0(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method
