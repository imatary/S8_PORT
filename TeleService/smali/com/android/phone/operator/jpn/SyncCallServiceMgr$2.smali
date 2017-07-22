.class Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;
.super Landroid/content/BroadcastReceiver;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "receive broadcast intent action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-wrap1(Ljava/lang/String;)V

    const-string/jumbo v7, "com.kddi.agent.action.DISPLAY_PHONE_APP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const-string/jumbo v8, "telecom"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/TelecomManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v7, "com.kddi.agent.action.ACTIVE_SPEAKER_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-wrap0(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "com.samsung.synccall.action.answering_message"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "isStart"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "receive broadcast isAnsweringMessageOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-wrap1(Ljava/lang/String;)V

    if-nez v1, :cond_0

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-get1(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;

    invoke-direct {v8, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;)V

    const-wide/16 v10, 0x190

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string/jumbo v8, "get BOOT_COMPLETED intent and block SyncCall"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-wrap2(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const-wide/32 v8, 0x3d090

    cmp-long v7, v2, v8

    if-gez v7, :cond_4

    const-wide/32 v8, 0x3d090

    sub-long v4, v8, v2

    :cond_4
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get BOOT_COMPLETED intent and block SyncCall delayTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-wrap2(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    long-to-int v8, v4

    invoke-static {v7, v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-wrap5(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;I)V

    goto/16 :goto_0
.end method
