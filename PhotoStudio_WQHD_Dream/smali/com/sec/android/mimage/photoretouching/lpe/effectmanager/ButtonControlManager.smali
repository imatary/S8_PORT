.class public Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;
.super Ljava/lang/Object;
.source "ButtonControlManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_ButtonControlManager"


# instance fields
.field private THUMB_HEIGHT_L:I

.field private THUMB_HEIGHT_P:I

.field private THUMB_WIDTH_L:I

.field private THUMB_WIDTH_P:I

.field private mBtnCtrlLayout:Landroid/widget/FrameLayout;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDoneBtn:Landroid/view/View;

.field private mIsButtonChanged:Z

.field private mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

.field private mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;

.field private mScreenWidth:I

.field private mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v2, 0x7f0802b5

    const v1, 0x7f0802b4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mDoneBtn:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mIsButtonChanged:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->THUMB_WIDTH_L:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->THUMB_WIDTH_P:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->THUMB_HEIGHT_L:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->THUMB_HEIGHT_P:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->changeNearButtonInfo(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mIsButtonChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mDoneBtn:Landroid/view/View;

    return-object v0
.end method

.method private changeNearButtonInfo(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_1
    :goto_0
    invoke-interface {p1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {p1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto :goto_0
.end method


# virtual methods
.method public addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 8

    const/4 v5, 0x0

    const/16 v7, 0x1001

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setButtonChangeCallback(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton$ButtonChangeCallback;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setIndex(I)V

    invoke-virtual {v0, p5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mDoneBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setDoneBtn(Landroid/view/View;)V

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :goto_0
    if-ne p1, v7, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setSoundEffectsEnabled(Z)V

    :cond_0
    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTouchCallback(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonsListener$DefaultTouchInterface;Ljava/util/ArrayList;)V

    if-ne p1, v7, :cond_4

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->destroy()V

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    return-void
.end method

.method public getButtonList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNullBtn()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;

    return-object v0
.end method

.method public init(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mDoneBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0249

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/TogglableScrollView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e024a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e024b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public isButtonUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mIsButtonChanged:Z

    return v0
.end method

.method public setButtonsPos()V
    .locals 19

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0802b4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->THUMB_WIDTH_L:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0802b5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->THUMB_WIDTH_P:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0802b4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->THUMB_HEIGHT_L:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0802b5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->THUMB_HEIGHT_P:I

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080581

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v15

    sub-int/2addr v15, v5

    div-int/lit8 v4, v15, 0x6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v15

    sub-int/2addr v15, v5

    div-int/lit8 v3, v15, 0x6

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScreenWidth:I

    div-int v11, v15, v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-object v15, v2

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getButtonId()I

    move-result v15

    const/16 v17, 0x1001

    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    div-int v14, v6, v11

    rem-int v13, v6, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScreenWidth:I

    sub-int/2addr v15, v4

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v15, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    neg-int v15, v13

    mul-int/2addr v15, v4

    mul-int v17, v14, v3

    move/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v2, v9}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setCurrentPosition(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v15

    sub-int/2addr v15, v5

    div-int/lit8 v4, v15, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v15

    sub-int/2addr v15, v5

    div-int/lit8 v3, v15, 0x4

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v7, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v15, v0, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    mul-int v15, v13, v4

    mul-int v17, v14, v3

    move/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v2, v9}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setCurrentPosition(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v7, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v2, v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v15}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v10

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScreenWidth:I

    mul-int v16, v4, v11

    sub-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method public setChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mIsButtonChanged:Z

    return-void
.end method

.method public updateScreenWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->mScreenWidth:I

    return-void
.end method
