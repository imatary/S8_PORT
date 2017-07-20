.class Lcom/android/phone/OtaStartupReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "OtaStartupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaStartupReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaStartupReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaStartupReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaspChanged(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-static {v2}, Lcom/android/phone/OtaStartupReceiver;->-get2(Lcom/android/phone/OtaStartupReceiver;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-static {v2, p1}, Lcom/android/phone/OtaStartupReceiver;->-set0(Lcom/android/phone/OtaStartupReceiver;I)I

    const-string/jumbo v2, "OtaStartupReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onOtaspChanged: mOtaspMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-static {v4}, Lcom/android/phone/OtaStartupReceiver;->-get2(Lcom/android/phone/OtaStartupReceiver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string/jumbo v2, "OtaStartupReceiver"

    const-string/jumbo v3, "OTASP is needed - performing CDMA provisioning"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-static {v2}, Lcom/android/phone/OtaStartupReceiver;->-get0(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "OtaStartupReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
