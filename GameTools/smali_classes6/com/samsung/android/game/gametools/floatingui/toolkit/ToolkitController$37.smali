.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$37;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->startNoneRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$37;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimChanged(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$37;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-boolean v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$37;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$37;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->startRecordModule()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
