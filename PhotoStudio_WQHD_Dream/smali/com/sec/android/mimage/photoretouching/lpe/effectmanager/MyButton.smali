.class public Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;
.super Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;
.source "MyButton.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mBtnThumnail:Landroid/widget/FrameLayout;

.field mButtonChangeCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurrentPos:Landroid/graphics/Rect;

.field private mDoneBtn:Landroid/view/View;

.field private mIndex:I

.field private mIsSelected:Z

.field private mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

.field private mMoveToPos:Landroid/graphics/Rect;

.field private mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

.field private mRunningAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mDoneBtn:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mAnimation:Landroid/view/animation/Animation;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRunningAnimation:Z

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mIsSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mDoneBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRunningAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    return-object v0
.end method

.method private onkey()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->configurationChanged()V

    return-void
.end method

.method public copyButtonsNPosition(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setCurrentPosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->destroy()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method public getCurrentPosition()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mIndex:I

    return v0
.end method

.method public getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    return-object v0
.end method

.method public getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    return-object v0
.end method

.method public initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGPUFilterSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->onkey()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    return-void
.end method

.method public isChecked()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public moveToLeft()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public moveToRight()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTop(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setRight(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setBottom(I)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->onLayout(ZIIII)V

    return-void
.end method

.method public reInitCheckbox()V
    .locals 10

    const v9, 0x7f0802b0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->isChecked()Z

    move-result v0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0802ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0802af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2, v4, v8, v8}, Landroid/widget/CheckBox;->setPadding(IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    const v7, 0x7f0207ba

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public reloadLayout()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->init()V

    return-void
.end method

.method public runningAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRunningAnimation:Z

    return v0
.end method

.method public setButtonChangeCallback(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mButtonChangeCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0207ba

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPosition(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setDoneBtn(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mDoneBtn:Landroid/view/View;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mIndex:I

    return-void
.end method

.method public setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    return-void
.end method

.method public setMovePosition(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const v2, 0x7f0e024f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchCallback(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->setTouchCallback(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;Ljava/util/ArrayList;)V

    return-void
.end method

.method public startAnimation()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mRunningAnimation:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v1, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public touchFunction(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mIsSelected:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mIsSelected:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mIsSelected:Z

    if-nez v4, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mDoneBtn:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mButtonChangeCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mButtonChangeCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;->setChange(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mDoneBtn:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setPressed(Z)V

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

.method public updateLayout()V
    .locals 14

    const v13, 0x7f0e0115

    const v12, 0x7f0802b0

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080583

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v9

    mul-int/lit8 v10, v0, 0x5

    sub-int/2addr v9, v10

    div-int/lit8 v8, v9, 0x4

    :goto_0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const v10, 0x7f0e00da

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0802ae

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0802af

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v3}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v1, v7, v11, v11}, Landroid/widget/CheckBox;->setPadding(IIII)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const v10, 0x7f0e024f

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f0a016e

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const v10, 0x7f0e0061

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0803ac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0803ad

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v9

    mul-int/lit8 v10, v0, 0x7

    sub-int/2addr v9, v10

    div-int/lit8 v8, v9, 0x6

    goto/16 :goto_0
.end method
