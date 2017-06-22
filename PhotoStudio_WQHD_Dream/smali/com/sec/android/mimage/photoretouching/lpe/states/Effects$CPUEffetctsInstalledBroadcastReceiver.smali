.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUEffetctsInstalledBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:com.sec.android.mimage.photoretouching.downloadCPUfilters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->updateCPUEffects(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->deleteRow(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->updateCPUEffectsthumbnails(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->updateCPUEffects(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->insertRow(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$3200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->updateCPUEffectsthumbnails(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Z)V

    goto :goto_0
.end method
