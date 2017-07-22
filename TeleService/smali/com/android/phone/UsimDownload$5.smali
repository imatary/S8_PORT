.class Lcom/android/phone/UsimDownload$5;
.super Landroid/content/BroadcastReceiver;
.source "UsimDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsimDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownload;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UsimDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ril.domesticOta"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-wrap6(Lcom/android/phone/UsimDownload;)V

    const-string/jumbo v3, "com.sec.android.sktota.usim.FAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v4}, Lcom/android/phone/UsimDownload;->-get6(Lcom/android/phone/UsimDownload;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/UsimDownload;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get7(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v4}, Lcom/android/phone/UsimDownload;->-get8(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get7(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v4}, Lcom/android/phone/UsimDownload;->-get8(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string/jumbo v3, "UsimDownload"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v4}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-wrap7(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_2
    const-string/jumbo v3, "com.sec.android.sktota.usim.SUCCESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v4}, Lcom/android/phone/UsimDownload;->-get6(Lcom/android/phone/UsimDownload;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/UsimDownload;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    const-string/jumbo v3, "UsimDownload"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccessByBIP:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    :cond_3
    :goto_1
    const-string/jumbo v3, "ril.domesticOtaResult"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v4}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-wrap7(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_4
    const-string/jumbo v3, "com.sec.android.ktota.usim.READY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get11(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v4}, Lcom/android/phone/UsimDownload;->-get12(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const-string/jumbo v3, "com.android.server.status.regist_reject"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "KtfNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get1(Lcom/android/phone/UsimDownload;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v4}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-wrap7(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_6
    :goto_2
    const-string/jumbo v3, "com.sec.android.ota.usim.FINISH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "UsimDownload"

    const-string/jumbo v4, "USIM ABSENT : finish by hot-swap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v3}, Lcom/android/phone/UsimDownload;->finish()V

    :cond_7
    return-void

    :cond_8
    const-string/jumbo v3, "KtfNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-wrap4(Lcom/android/phone/UsimDownload;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set3(Lcom/android/phone/UsimDownload;Z)Z

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtUsimRemoved:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegOutOfService:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v3, "LGTNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, "KtfNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3, v8}, Lcom/android/phone/UsimDownload;->-wrap3(Lcom/android/phone/UsimDownload;I)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v3, "LGTNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->-set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_1

    :cond_d
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get2(Lcom/android/phone/UsimDownload;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "UsimDownload"

    const-string/jumbo v4, "AttacReject_ByPass is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get14(Lcom/android/phone/UsimDownload;)I

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get13(Lcom/android/phone/UsimDownload;)I

    move-result v3

    if-eqz v3, :cond_11

    :cond_f
    :goto_3
    const-string/jumbo v3, "UsimDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finish by reject! cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v5}, Lcom/android/phone/UsimDownload;->-get14(Lcom/android/phone/UsimDownload;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v5}, Lcom/android/phone/UsimDownload;->-get13(Lcom/android/phone/UsimDownload;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v5}, Lcom/android/phone/UsimDownload;->-get15(Lcom/android/phone/UsimDownload;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ril.domesticOtaStart"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get0(Lcom/android/phone/UsimDownload;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "ril.reject_121315"

    const-string/jumbo v4, "rejected"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.status.regist_reject"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "RTS"

    const-string/jumbo v4, "POPUPUI"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v3, v1}, Lcom/android/phone/UsimDownload;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3, v8}, Lcom/android/phone/UsimDownload;->-wrap3(Lcom/android/phone/UsimDownload;I)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v3}, Lcom/android/phone/UsimDownload;->finish()V

    goto/16 :goto_2

    :cond_11
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v3}, Lcom/android/phone/UsimDownload;->-get15(Lcom/android/phone/UsimDownload;)I

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_3
.end method
