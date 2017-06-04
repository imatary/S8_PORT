.class Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$1;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "SideloadingTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast meassage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v0, "com.samsung.omcagent.intent.SIDELOADING_UI_STATE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->updateUIState(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->access$000(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.samsung.intent.action.OMCUPDATE_MODEMFINISH"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showInformation(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->access$100(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.intent.action.OMCUPDATE_FINISH"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->updateUIState2(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->access$200(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method
