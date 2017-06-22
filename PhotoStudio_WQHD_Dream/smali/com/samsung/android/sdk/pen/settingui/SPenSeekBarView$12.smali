.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSdkVersion:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    :goto_0
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    :cond_2
    :goto_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    :cond_4
    :goto_3
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$12;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
