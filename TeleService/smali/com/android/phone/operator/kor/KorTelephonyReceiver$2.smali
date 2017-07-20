.class Lcom/android/phone/operator/kor/KorTelephonyReceiver$2;
.super Landroid/content/BroadcastReceiver;
.source "KorTelephonyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/KorTelephonyReceiver;->registerHDVReceiver(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$2;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.ims.action.apcsconfigurationinfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ims_volte_apcs_service_status"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$2;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    invoke-static {v2, v1}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->-wrap2(Lcom/android/phone/operator/kor/KorTelephonyReceiver;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "com.samsung.ims.action.hdvoicesettinginfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$2;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    invoke-static {v2}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->-wrap0(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V

    goto :goto_0
.end method
