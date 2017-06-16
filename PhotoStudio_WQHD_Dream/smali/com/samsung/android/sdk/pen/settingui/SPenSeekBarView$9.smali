.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;
.super Ljava/lang/Object;
.source "SPenSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z
    invoke-static {v1, v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1102(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, v3, v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;->onUpdate(ZI)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x66888888

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V
    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/ImageView;I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->playSoundEffect(I)V

    :cond_2
    return v4
.end method
