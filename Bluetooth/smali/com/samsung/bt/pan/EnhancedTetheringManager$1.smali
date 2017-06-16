.class Lcom/samsung/bt/pan/EnhancedTetheringManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EnhancedTetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/pan/EnhancedTetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bt/pan/EnhancedTetheringManager;


# direct methods
.method constructor <init>(Lcom/samsung/bt/pan/EnhancedTetheringManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager$1;->this$0:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EnhancedTetheringManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.bluetooth.tethering.ACTION_NAP_ALARM_EXPIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager$1;->this$0:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-static {v1}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->-get1(Lcom/samsung/bt/pan/EnhancedTetheringManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager$1;->this$0:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-static {v1}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->-get0(Lcom/samsung/bt/pan/EnhancedTetheringManager;)Lcom/samsung/bt/pan/ETMLeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/bt/pan/ETMLeHelper;->resetAdvertise()V

    :cond_0
    const-string/jumbo v1, "com.samsung.bluetooth.tethering.ACTION_PANU_ALARM_EXPIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager$1;->this$0:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-static {v1}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->-get0(Lcom/samsung/bt/pan/EnhancedTetheringManager;)Lcom/samsung/bt/pan/ETMLeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/bt/pan/ETMLeHelper;->stopScan()V

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager$1;->this$0:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->-set0(Lcom/samsung/bt/pan/EnhancedTetheringManager;Z)Z

    :cond_1
    return-void
.end method
