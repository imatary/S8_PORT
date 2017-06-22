.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;
.super Ljava/lang/Object;
.source "SPenSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z
    invoke-static {v0, v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1202(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;->onUpdate(ZI)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x66888888

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/ImageView;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
