.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$7;
.super Ljava/lang/Object;
.source "ToolkitHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->showHandle(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onShowIntro()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$902(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setShownGameToolsIntro(Landroid/content/Context;Z)V

    return-void
.end method
