.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$10;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;->getInstance()Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;->launchApp(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
