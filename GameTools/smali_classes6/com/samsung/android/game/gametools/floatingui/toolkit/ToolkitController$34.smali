.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showGuide()V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_enable:I

    if-ne v7, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT15"

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_GAMETOOLS_GUIDE_CANCLE_LIST:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4001"

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->removeLayoutFromWindow()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1402(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGuideShown(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->callDisclaimerActivity()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_cancel:I

    if-ne v7, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isPerformanceGameModeOn:Z
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT15"

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_GAMETOOLS_GUIDE_CANCLE_LIST:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4001"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->removeLayoutFromWindow()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1402(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGuideShown(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
