.class Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartViewReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "SmartViewReceiverCmd"

    const-string/jumbo v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->startSmartViewPlay(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;->access$000(Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;Landroid/content/Intent;)V

    goto :goto_0
.end method
