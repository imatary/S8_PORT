.class Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;
.super Ljava/lang/Object;
.source "SPenSeekBarView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinPensize:F
    invoke-static {v7}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$300(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

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

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_CHECK_WIDTH:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$700(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    if-le v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_BAR_TEXT_DELTA_POSITION_X:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_thickness:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->getThumbCentralX()I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setX(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->PROGRESS_TEXT_MARGIN_TOP:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1000(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setY(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v4

    invoke-interface {v3, p1, p2, p3, v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;->onProgressChanged(Landroid/widget/SeekBar;IZI)V

    if-nez p3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;->onUpdate(ZI)V

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    int-to-float v4, p2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c60000    # 99.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenAlpha:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1302(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;I)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-ne v3, v4, :cond_13

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoIncrement:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x66888888

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V
    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/ImageView;I)V

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mAutoDecrement:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x66888888

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V
    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/ImageView;I)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_cursive:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_sustenance:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_dummy:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_modulation:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, p2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, p2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_transparency:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_f

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_thickness:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_thickness:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_11
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;->onUpdate(ZI)V

    goto/16 :goto_2

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x3ee66666    # 0.45f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_3

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->isSeekbarEnable:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1700(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mPlusButtonImage:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, -0x777778

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V
    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    :cond_14
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x3ee66666    # 0.45f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->isSeekbarEnable:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1700(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mMinusButtonImage:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, -0x777778

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->setButtonColorState(Landroid/widget/ImageView;I)V
    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;Landroid/widget/ImageView;I)V

    goto/16 :goto_4
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;->onStartTrackingTouch(Landroid/widget/SeekBar;I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$000(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->mSeekbarType:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;->onStopTrackingTouch(Landroid/widget/SeekBar;I)V

    :cond_0
    return-void
.end method
