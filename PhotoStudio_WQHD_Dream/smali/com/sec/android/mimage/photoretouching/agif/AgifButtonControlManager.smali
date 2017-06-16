.class public Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"


# instance fields
.field private final THUMB_HEIGHT_L:I

.field private final THUMB_HEIGHT_P:I

.field private final THUMB_WIDTH_L:I

.field private final THUMB_WIDTH_P:I

.field private addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

.field private didUserScroll:Z

.field private droppedIndex:I

.field private gridItemSubMenuLayout:Landroid/widget/LinearLayout;

.field private gridLayout:Landroid/view/View;

.field private isBurstShotImage:Z

.field private isClick:Z

.field public isGridPortrait:Z

.field private isOnOrientationChange:Z

.field private isScrollShown:Z

.field private isScrolling:Z

.field private isTouchDown:Z

.field private mBtnCtrlLayout:Landroid/widget/FrameLayout;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentArrow:Landroid/view/View;

.field private mCurrentIndex:I

.field private mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

.field private mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

.field private mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

.field private maxNumberOfThumbnailsPerRow:I

.field private playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

.field private startedIndex:I

.field private swapAnimation:Z

.field private swapNotification:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Subscriber;

.field private thumbnailIndex:I

.field private valueToScroll:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Subscriber;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;Z)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrollShown:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->droppedIndex:I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->didUserScroll:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapAnimation:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->maxNumberOfThumbnailsPerRow:I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isOnOrientationChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isTouchDown:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrolling:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isClick:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapNotification:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Subscriber;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080297

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->THUMB_WIDTH_L:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080295

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->THUMB_HEIGHT_L:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->THUMB_WIDTH_P:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->THUMB_HEIGHT_P:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0e0261

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->initGridItemListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isOnOrientationChange:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isOnOrientationChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapAnimation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->triggerPauseEvent()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;)Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->startedIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->changeNearButtonInfo(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isClick:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->droppedIndex:I

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isClick:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->triggerSwapNotification()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->removeThumbnailButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->maxNumberOfThumbnailsPerRow:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrolling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrolling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isTouchDown:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isTouchDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setFrameCenter()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->showGridItemSubMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeNearButtonInfo(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_1
    :goto_0
    invoke-interface {p1, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface {p1, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_0
.end method

.method private computeScroll(I)V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$5;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$5;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)V

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    :cond_0
    return-void
.end method

.method private initGridItemListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0264

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$3;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$3;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0266

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$4;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$4;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAgifCountReached()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeAddButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->removeThumbnailButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V

    goto :goto_0
.end method

.method private removeThumbnailButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v7, v1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getIndex()I

    move-result v8

    invoke-virtual {p2, v8, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->removeAgifImage(IZ)V

    :cond_2
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v8, v9, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v1, :cond_4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v0, v12}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :goto_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-object v8, v4

    check-cast v8, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v8, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->storeIndex(I)V

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v8, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setButtonsPos()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v1, v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v2, v12}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v6, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface {v2, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_8

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    :goto_3
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_7

    iput-boolean v10, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isSelectedAfterRemove:Z

    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->requestFocus()Z

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isSelectedAfterRemove:Z

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    goto/16 :goto_0

    :cond_8
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_a

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    goto :goto_3

    :cond_a
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    goto :goto_3
.end method

.method private setFrameCenter()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v5, 0x2

    new-array v3, v5, [I

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getLocationInWindow([I)V

    aget v5, v3, v7

    div-int/lit8 v6, v4, 0x2

    if-ge v5, v6, :cond_1

    aget v5, v3, v7

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v6, v4, 0x2

    if-le v5, v6, :cond_1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->selectCurrentFrame(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLineWithoutDelay(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    invoke-interface {v5, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;->playPauseAgif(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 2

    const v1, 0x7f0e00db

    invoke-virtual {p1, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method private showGridItemSubMenu(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    check-cast p1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelectedTrue()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    return-void
.end method

.method private triggerPauseEvent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;->pauseAgif()V

    return-void
.end method

.method private triggerPlayPauseEvent(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;->playPauseAgif(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    return-void
.end method

.method private triggerSwapNotification()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapNotification:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Subscriber;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->startedIndex:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->droppedIndex:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Subscriber;->swapAgif(II)V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->startedIndex:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->droppedIndex:I

    return-void
.end method

.method private updateCurrentView(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e0346

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e0345

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;
    .locals 8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    move-object/from16 v0, p9

    invoke-direct {v1, v6, v0, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;)V

    invoke-virtual {v1, v4, p3, p4, p6}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->storeIndex(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setCommand(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;)V

    if-nez v4, :cond_3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :goto_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->storeIndex(I)V

    :cond_0
    :goto_2
    move-object v3, v1

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isAddButton()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_3
    return-object v1

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v5, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v5, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v5, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->storeIndex(I)V

    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    if-eqz v6, :cond_6

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->storeIndex(I)V

    invoke-virtual {v1, p7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setAgifAdderListener(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;)V

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setCommand(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    if-nez v4, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :goto_5
    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    if-nez v6, :cond_0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    goto/16 :goto_2

    :cond_6
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setAddButtonType(Z)V

    invoke-virtual {v1, p7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setAgifAdderListener(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v5, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_5

    :cond_8
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_5

    :cond_9
    new-instance v6, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;

    invoke-direct {v6, p0, p2, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$6;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;ILcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setTouchCallback(Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;Ljava/util/ArrayList;)V

    goto/16 :goto_3
.end method

.method public addButton(IILandroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public addButtonView(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearLoadingThumbTExt(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public deSelectAllThumbnails(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-eq v0, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;->setSelected(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;

    return-void
.end method

.method public didUserScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->didUserScroll:Z

    return-void
.end method

.method public doAddImage()V
    .locals 6

    const-string v1, "846"

    const-string v2, "8581"

    const-string v3, "Add image"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->addAgifImages()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->isSupportContinuousShots()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    const v2, 0x7f070094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0700b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getAddButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    return-object v0
.end method

.method public getButtonList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastButton()Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    goto :goto_0
.end method

.method public getNullBtn()Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mNullButton:Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    return-object v0
.end method

.method public getScrollVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrollShown:Z

    return v0
.end method

.method public getSelectedButtonLayout()Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    return-object v0
.end method

.method public hideScrollView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e033b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e033f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrollShown:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e033a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentArrow:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0344

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0249

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e024a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mOverflowBtnCtrlLayout:Lcom/sec/android/mimage/photoretouching/agif/SelectedButtonLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e024b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isLastAgifElement()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSwapAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->swapAnimation:Z

    return v0
.end method

.method public onAnimationFinishedSelectGridItemAtIndex(I)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v1, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x32

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->didUserScroll:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrolledValue()I

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrolledValue()I

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->maxNumberOfThumbnailsPerRow:I

    div-int v4, p1, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrolledValue()I

    move-result v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLine(I)V

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_8

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToTop()V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v1, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrolledValue()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLine(I)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrolledValue()I

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->maxNumberOfThumbnailsPerRow:I

    div-int v4, p1, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_7

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrolledValue()I

    move-result v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLine(I)V

    :goto_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrolledValue()I

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_3

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->didUserScroll:Z

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrolledValue()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLine(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->maxNumberOfThumbnailsPerRow:I

    rem-int v3, p1, v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLine(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isPortrait()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->maxNumberOfThumbnailsPerRow:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->valueToScroll:I

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLine(I)V

    goto/16 :goto_0
.end method

.method public onOrientationChanged()V
    .locals 7

    const/4 v6, -0x2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isOnOrientationChange:Z

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->keyboardFocusedIndex()I

    move-result v0

    if-lez v0, :cond_2

    move v2, v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setButtonsPos()V

    if-ne v1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setRequestFocus(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifNullButton;

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->computeScroll(I)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$9;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$9;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public onScrollFocusItem()V
    .locals 3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    :cond_0
    return-void
.end method

.method public postDelayedScrollToIndex()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToTop()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized removeButton(ILcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V
    .locals 12

    monitor-enter p0

    move v2, p1

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    const/4 v9, 0x0

    invoke-virtual {p2, v2, v9}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->removeAgifImage(IZ)V

    :cond_1
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sget v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v9, v10, :cond_2

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v2, :cond_3

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :goto_0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-object v0, v6

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    move-object v9, v0

    invoke-virtual {v9, v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->storeIndex(I)V

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x2

    const/4 v11, -0x2

    invoke-direct {v4, v9, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    check-cast v6, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v9, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setButtonsPos()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v2, v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v8, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    invoke-interface {v3, v8}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    monitor-exit p0

    return-void
.end method

.method public removeButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    const v2, 0x7f04000e

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public selectCurrentFrame(I)V
    .locals 4

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->updateThumbnailAfterTouch(I)V

    goto :goto_0
.end method

.method public selectFirstFrameFirstTime(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    goto :goto_0
.end method

.method public setButtonsPos()V
    .locals 14

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    if-eqz v11, :cond_8

    const/4 v6, 0x0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080298

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080296

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_0
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v3, 0x2

    sub-int v7, v11, v12

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_7

    iget-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isBurstShotImage:Z

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_1
    mul-int v6, v11, v3

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    sub-int v11, v6, v3

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v13, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    neg-int v11, v5

    mul-int/2addr v11, v3

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v13}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v1, v9}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setCurrentPosition(Landroid/graphics/Rect;)V

    if-nez v5, :cond_2

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080297

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080295

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto/16 :goto_0

    :cond_1
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v5, v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_3

    :cond_4
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v13, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    mul-int v11, v5, v3

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v13}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v1, v9}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setCurrentPosition(Landroid/graphics/Rect;)V

    if-nez v5, :cond_5

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto :goto_3

    :cond_5
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v5, v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto/16 :goto_3

    :cond_6
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setLeftButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v1, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->setRightButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;)V

    goto/16 :goto_3

    :cond_7
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    invoke-interface {v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080299

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v0, v11

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v0

    invoke-direct {v8, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v11, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->updateCurrentView(I)V

    :cond_8
    return-void
.end method

.method public setContentDescriptionForDeleteButton()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setContentDescriptionForDeleteButton()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setThumb(ILandroid/graphics/Bitmap;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setThumb(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public startSelection(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->deSelectAllThumbnails(I)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->computeScroll(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method public startSelection(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->deSelectAllThumbnails(I)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->computeScroll(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    goto :goto_0
.end method

.method public toggleScrollViewVisibility()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->hideScrollView()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrollShown:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e033f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e033b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateThumb()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setSelected(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setRemoveButtonFocusFalse(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    return-void
.end method

.method public updateThumbnailAfterTouch(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I

    return-void
.end method

.method public updateThumbnailButton(II)V
    .locals 7

    const/4 v6, -0x2

    :goto_0
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;

    move-object v3, v1

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->storeIndex(I)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    move-object v3, v1

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mBtnCtrlLayout:Landroid/widget/FrameLayout;

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setButtonsPos()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
