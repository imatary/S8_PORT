.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showRecordingGuide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->removeLayoutFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    :cond_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->startNoneRecording()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->startRecordModule()V

    goto :goto_0
.end method
