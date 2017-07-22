.class Lcom/android/phone/operator/kor/KorTelephonyReceiver$3;
.super Ljava/lang/Object;
.source "KorTelephonyReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleRoamNetworkChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$3;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string/jumbo v3, "00"

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isLteRoamingOn()Z

    move-result v0

    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string/jumbo v3, "support_lte_romaing"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setRadioPower(Z)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->showNetworkRoamMccChanged()V

    return-void
.end method
