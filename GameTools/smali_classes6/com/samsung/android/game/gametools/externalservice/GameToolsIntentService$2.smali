.class Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;
.super Ljava/lang/Object;
.source "GameToolsIntentService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$MyBinder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$MyBinder;->getService()Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v2

    # setter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v1, v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->access$002(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->access$000(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GameToolsIntentService"

    const-string/jumbo v2, "NotificationIntentService ServiceConnection onServiceConnected"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    const/4 v2, 0x1

    # setter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mBound:Z
    invoke-static {v1, v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->access$102(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->access$000(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->showToolkit()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mGameToolsRefreshConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->access$200(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mBound:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->access$102(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->access$002(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    return-void
.end method
