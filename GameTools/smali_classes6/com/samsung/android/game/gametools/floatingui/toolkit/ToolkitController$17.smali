.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showHandle(I)Z
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showIntro()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # setter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsIntroShown:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1102(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setShownGameToolsIntro(Landroid/content/Context;Z)V

    return-void
.end method
