.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$1;
.super Ljava/lang/Object;
.source "SPenSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->penSeekbar(Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSelected(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSelected(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSelected(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
