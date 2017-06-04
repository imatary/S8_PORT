.class Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProLiteSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_NORMAL_COLOR:I
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_NORMAL_COLOR:I
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProLiteSlider;->getOffset()I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    add-int v0, p1, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProLiteSlider;->setValueText(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2100(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2200(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->showValueText()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    # setter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$502(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getMarkerVisible()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProLiteSlider;->isTtsEnabled()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2400(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2200(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/camera/menu/ProLiteSlider;->speakTtsString(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2500(Lcom/sec/android/app/camera/menu/ProLiteSlider;Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onExposureValueMenuSelect(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onISOValueMenuSelect(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onWBValueMenuSelect(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
