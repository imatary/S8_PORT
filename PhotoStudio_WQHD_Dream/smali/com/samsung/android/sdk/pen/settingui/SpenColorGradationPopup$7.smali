.class Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;
.super Ljava/lang/Object;
.source "SpenColorGradationPopup.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mDisableOnLayoutChanged:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentOrientation:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2600(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentOrientation:I
    invoke-static {v3, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2602(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)I

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLayoutChangeListener orientation changed to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->getFocusedRecentColorIndex()I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$3000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initView()V
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$3100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mParentlayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setContentView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setListener()V
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$3200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v4

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setColorForGradient(I)V
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)V

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->doneTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    :cond_2
    if-nez v1, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$7;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[Landroid/view/View;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0
.end method
