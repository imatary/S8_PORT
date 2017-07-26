.class Lcom/sec/game/gamecast/common/model/SettingUtil$1;
.super Ljava/lang/Object;
.source "SettingUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/model/SettingUtil;->updateGameHomeEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/model/SettingUtil;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/model/SettingUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/SettingUtil$1;->this$0:Lcom/sec/game/gamecast/common/model/SettingUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/game/gamecast/common/model/SettingUtil$1;->this$0:Lcom/sec/game/gamecast/common/model/SettingUtil;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->access$000(Lcom/sec/game/gamecast/common/model/SettingUtil;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
