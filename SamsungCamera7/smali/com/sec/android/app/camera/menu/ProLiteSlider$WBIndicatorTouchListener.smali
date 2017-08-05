.class Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;
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
    name = "WBIndicatorTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    return-void
.end method

.method private handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v2

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onWBValueMenuSelect(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2900(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V

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

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTint()V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2602(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
