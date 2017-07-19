.class Lcom/samsung/android/app/omcagent/WifiReceiver$1;
.super Ljava/lang/Object;
.source "WifiReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/WifiReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/WifiReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/WifiReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/WifiReceiver$1;->this$0:Lcom/samsung/android/app/omcagent/WifiReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/WifiReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/WifiReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/app/omcagent/WifiReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/WifiReceiver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/WifiReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v2, "networkInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "networkInfo is null"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/WifiReceiver$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/WifiReceiver$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/app/omcagent/HandleWifiIntentService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "networkInfo"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0
.end method
