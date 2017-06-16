.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;
.super Ljava/lang/Object;
.source "SPenSeekBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_CHECK_WIDTH:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$700(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_DELTA_POSITION_X:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->getThumbCentralX()I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setX(F)V

    :cond_1
    return-void
.end method
