.class Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;
.super Landroid/content/BroadcastReceiver;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive broadcast intent action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap6(Ljava/lang/String;)V

    const-string/jumbo v3, "com.uplus.agent.action.CONVERT_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap1(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "com.uplus.agent.action.SWITCH_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap4(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.lguplus.ltecall.ACTION_SPEAKER_ON_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "set"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-set0(Z)Z

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-get0(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "com.uplus.agent.action.GROUPCALL_OUTGOING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "com.uplus.agent.extra.GROUPCALL_MEMBER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-static {v3, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap3(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "com.uplus.agent.action.END_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "address"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-static {v3, v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap2(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "com.uplus.agent.action.CALL_ANSWER_EVENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap0(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V

    goto :goto_0
.end method
