.class Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;
.super Ljava/lang/Object;
.source "DreamTNCActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v1, "DreamTNCActivity"

    const-string/jumbo v2, "onNextPressed : TNC agreed"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisclaimerConfirm(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setShowGameTools(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;->finish()V

    new-instance v1, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1$1;

    invoke-direct {v1, p0}, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1$1;-><init>(Lcom/sec/game/gamecast/common/activity/DreamTNCActivity$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
