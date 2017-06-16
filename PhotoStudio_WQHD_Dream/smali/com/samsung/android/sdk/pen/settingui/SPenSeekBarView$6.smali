.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;
.super Ljava/lang/Object;
.source "SPenSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1202(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method
