.class public Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;
.super Ljava/lang/Object;
.source "DefaultButtonsListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$AnimationCallback;,
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;
    }
.end annotation


# instance fields
.field private mAnimationCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$AnimationCallback;

.field private mButton:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsFunction:Z

.field private mList:Ljava/util/ArrayList;

.field private mTouchInterface:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mIsFunction:Z

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mTouchInterface:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mAnimationCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$AnimationCallback;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mButton:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mTouchInterface:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mTouchInterface:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;

    return-object v0
.end method

.method private disableAnotherButtons(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq v0, p1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableButtons(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isInButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v2, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v3, v7

    if-lt v2, v1, :cond_0

    if-gt v2, v5, :cond_0

    if-lt v3, v6, :cond_0

    if-gt v3, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mAnimationCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$AnimationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mAnimationCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$AnimationCallback;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$AnimationCallback;->isAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mButton:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mTouchInterface:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mTouchInterface:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;->TouchFunction(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->disableAnotherButtons(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->isInButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mIsFunction:Z

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mIsFunction:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mTouchInterface:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mTouchInterface:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;->TouchFunction(Landroid/view/View;)V

    :cond_5
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mIsFunction:Z

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->enableButtons(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->enableButtons(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAnimationCallback(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$AnimationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener;->mAnimationCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$AnimationCallback;

    return-void
.end method
