.class Lcom/sec/game/gamecast/common/utility/GosQueryUtil$1;
.super Ljava/lang/Object;
.source "GosQueryUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->connectGOS(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

.field final synthetic val$withEndAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/utility/GosQueryUtil;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil$1;->this$0:Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil$1;->val$withEndAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/enhance/gameservice/IGameService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/enhance/gameservice/IGameService;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->access$102(Lcom/enhance/gameservice/IGameService;)Lcom/enhance/gameservice/IGameService;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->access$202(Z)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->access$302(Z)Z

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil$1;->val$withEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil$1;->val$withEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->access$102(Lcom/enhance/gameservice/IGameService;)Lcom/enhance/gameservice/IGameService;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->access$202(Z)Z

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->access$302(Z)Z

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
