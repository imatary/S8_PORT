.class Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProLiteSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoLabelTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    return-void
.end method

.method private handleTouchEvent(Lcom/samsung/android/glview/GLView;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getCurrentStep()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getNumOfStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideValueText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onISOValueMenuSelect(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getCurrentStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->handleTouchEvent(Lcom/samsung/android/glview/GLView;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->handleTouchEvent(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
