.class public Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;
.super Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;
.source "AgifMyButton.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;


# instance fields
.field private agifImageAdder:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;

.field private index:I

.field private isAddButton:Z

.field public isSelectedAfterRemove:Z

.field private mAnimation:Landroid/view/animation/Animation;

.field private mBtnThumnail:Landroid/widget/FrameLayout;

.field private mCurrentPos:Landroid/graphics/Rect;

.field private mDoneBtn:Landroid/view/View;

.field private mLeftButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

.field private mMoveToPos:Landroid/graphics/Rect;

.field private mRightButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

.field private mRunningAnimation:Z

.field private playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

.field private removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mDoneBtn:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mAnimation:Landroid/view/animation/Animation;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRunningAnimation:Z

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isSelectedAfterRemove:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isAddButton:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->index:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRunningAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    return-object v0
.end method

.method private onkey()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public callSelected(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setContentDescriptionForImageIcon()V

    return-void
.end method

.method public configurationChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->configurationChanged()V

    return-void
.end method

.method public copyButtonsNPosition(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setCurrentPosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->destroy()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    return-void
.end method

.method public getCommand()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;

    return-object v0
.end method

.method public getCurrentPosition()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->index:I

    return v0
.end method

.method public getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    return-object v0
.end method

.method public getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->removeFrameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x7f0e00da

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mBtnThumnail:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const v1, 0x7f0e00dc

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->onkey()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    return-void
.end method

.method public isAddButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isAddButton:Z

    return v0
.end method

.method public keyboardFocusedIndex()I
    .locals 1

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->keyboardFocusedIndex()I

    move-result v0

    return v0
.end method

.method public launchAgifAdder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->agifImageAdder:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;->addAgifImage()V

    return-void
.end method

.method public moveToLeft()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public moveToRight()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    const v10, 0x7f0e00d8

    const v9, 0x7f080299

    const v8, 0x7f080280

    const v7, 0x7f080293

    const v6, 0x7f080291

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v4, 0x7f0e00d9

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080295

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v4, 0x7f0e00d9

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e00da

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v4, 0x7f0e00da

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e00db

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080285

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080283

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080284

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v4, 0x7f0e00db

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e00dc

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v4, 0x7f0200dc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setTop(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRight(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setBottom(I)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->onLayout(ZIIII)V

    return-void
.end method

.method public reloadLayout()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->init()V

    return-void
.end method

.method public runningAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRunningAnimation:Z

    return v0
.end method

.method public setAddButtonType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isAddButton:Z

    return-void
.end method

.method public setAgifAdderListener(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->agifImageAdder:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;

    return-void
.end method

.method public setCommand(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;

    return-void
.end method

.method public setCurrentPosition(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setDoneBtn(Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mDoneBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mDoneBtn:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    return-void
.end method

.method public setMovePosition(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setRequestFocus(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->setRequestFocus(I)V

    return-void
.end method

.method public setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    const v3, 0x7f0e033c

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setContentDescriptionForImageIcon()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c009e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    :cond_0
    return-void
.end method

.method public setSelectedTrue()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setContentDescriptionForImageIcon()V

    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->setThumb(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setTouchCallback(Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->setTouchCallback(Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;Ljava/util/ArrayList;)V

    return-void
.end method

.method public startAnimation()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mRunningAnimation:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v1, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$3;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public storeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->index:I

    return-void
.end method

.method public touchFunction(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isAddButton:Z

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    move-object v1, p1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const v2, 0x7f0e00db

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    check-cast p1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-interface {v1, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;->playPauseAgif(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
