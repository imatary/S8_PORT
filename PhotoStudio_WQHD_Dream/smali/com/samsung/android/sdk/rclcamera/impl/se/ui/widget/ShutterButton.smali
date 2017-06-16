.class public Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;
.super Landroid/widget/ImageButton;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnClickByTouch:Z

.field private mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

.field private mShutterPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.53/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mOnClickByTouch:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mOnClickByTouch:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mOnClickByTouch:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mOnClickByTouch:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->initialize()V

    return-void
.end method

.method private eventInView(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v2, v3

    neg-float v3, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    neg-float v3, v2

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v2

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 0

    invoke-super {p0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mOnClickByTouch:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;->onShutter(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;->onShutter(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mOnClickByTouch:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->eventInView(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    invoke-interface {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;->onShutter(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;->onShutter(I)V

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mOnClickByTouch:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;->onShutter(I)V

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    invoke-interface {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;->onShutter(I)V

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterPressed:Z

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

.method public setOnShutterListener(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->mShutterListener:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OnTouchListener cannot be overridden."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
