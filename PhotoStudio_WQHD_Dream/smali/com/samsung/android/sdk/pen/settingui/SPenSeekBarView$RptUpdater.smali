.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;
.super Ljava/lang/Object;
.source "SPenSeekBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RptUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$RptUpdater;-><init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)V

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
