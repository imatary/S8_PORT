.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

.field final synthetic val$profileSource:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->val$profileSource:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 2

    const/4 v1, 0x2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->val$profileSource:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isRecordingGuideShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->startRecordModule()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showRecordingGuide(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoneRecordingGuideShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->startNoneRecording()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showRecordingGuide(I)V

    goto :goto_0
.end method
