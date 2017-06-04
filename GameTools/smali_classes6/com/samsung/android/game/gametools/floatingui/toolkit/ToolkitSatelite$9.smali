.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;
.super Ljava/lang/Object;
.source "ToolkitSatelite.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->checkStatusBar(I)V

    const-string/jumbo v2, "ToolkitSatelite"

    const-string/jumbo v3, "mGlobalListener"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isStatusBarOn()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
