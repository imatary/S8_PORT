.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v8, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0xbb8

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_7

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get6(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap3(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    const/4 v7, 0x0

    aget v3, v6, v7

    if-lez v3, :cond_2

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_ConfigPolicyForNetworkLockFreeze"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retryCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get9(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap5(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get9(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v6

    if-ne v6, v13, :cond_4

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get8(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get1(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$5;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$5;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/32 v8, 0x80e8

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez v3, :cond_0

    :try_start_1
    const-string/jumbo v6, "nck_block_feature"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const-string/jumbo v7, "NCK BLOCKED, sending broadcast"

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap5(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.intent.action.RIL_PERSO_BLOCKED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.app.RilErrorNotifier"

    const-string/jumbo v8, "com.sec.app.RilErrorNotifier.PhoneErrorReceiver"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.RIL_PERSO_BLOCKED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.app.RilErrorNotifier"

    const-string/jumbo v8, "com.sec.app.RilErrorNotifier.PhoneErrorReceiver"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$4;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "Network Control Code is blocked"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const-string/jumbo v7, "network depersonalization request failure. retry count = 0"

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap5(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$3;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get2(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap0(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6, v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v6, v7, :cond_6

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$6;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$6;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_6
    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$7;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$7;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x66

    if-ne v6, v7, :cond_9

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get6(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap3(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$8;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$8;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6, v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$10;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$10;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_9
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_b

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get6(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap3(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$11;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$11;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$12;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$12;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6, v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_b
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x67

    if-ne v6, v7, :cond_d

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error in get SIM LOCK INFO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap5(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getNumRetry()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set3(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get7(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get9(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const v9, 0x7f0d04b4

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x68

    if-ne v6, v7, :cond_f

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error in get SIM LOCK INFO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap5(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getNumRetry()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set3(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get7(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get9(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const v9, 0x7f0d04b4

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_f
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x69

    if-ne v6, v7, :cond_11

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error in get SIM LOCK INFO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap5(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getNumRetry()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set3(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get7(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get9(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const v9, 0x7f0d04b4

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_11
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_13

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get10(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v6

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_12

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get1(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get7(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v9}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get10(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const v9, 0x7f0d0343

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get10(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set4(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    goto/16 :goto_1

    :cond_12
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get2(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-wrap0(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6, v12}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set4(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    goto/16 :goto_1

    :cond_13
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x6a

    if-ne v6, v7, :cond_1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-get6(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0d92

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$14;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$14;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_14
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6, v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0d91

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$15;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$15;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method
