.class Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;
.super Landroid/os/Handler;
.source "GameToolsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->SHOW_TOOLKIT:I
    invoke-static {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$100(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "mDetectorHandler:SHOW_TOOLKIT"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->showToolkit()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->STOP_RECORD:I
    invoke-static {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$200(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "mDetectorHandler:STOP_RECORD"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopRecordService()V

    :cond_1
    return-void
.end method
