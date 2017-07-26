.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;
.super Lcom/samsung/android/game/gametools/floatingui/view/module/BubbleGuide;
.source "ToolkitBubbleGuide.java"


# static fields
.field private static HEIGHT_CORRECTION:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bottomPicker:Landroid/widget/ImageView;

.field private closeButton:Landroid/widget/ImageView;

.field private dp4:I

.field private mBubbleText:Landroid/widget/TextView;

.field private mCurrentOrientation:I

.field private mHandleHeight:I

.field private mHandleSide:I

.field private mIsRTL:Z

.field private mView:Landroid/view/View;

.field private pxWidth:I

.field private topPicker:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->HEIGHT_CORRECTION:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/BubbleGuide;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mIsRTL:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getToolkitHandleSide(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mHandleSide:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHandleHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mHandleHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->inflateView()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->setParams()V

    return-void
.end method


# virtual methods
.method public inflateView()V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v3, v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mHandleSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "inflateView - LEFT_SIDE : "

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_right_bubble_guide:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_top_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gamehome_launcher_bubble_picker_left:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_bottom_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gamehome_launcher_bubble_picker_left:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_top_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->topPicker:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_bottom_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->bottomPicker:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_close_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->closeButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_text_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isClose1stBubble(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_POP_DRAG_THE_GAME_TOOLS_ICON_TO_THE_DESIRED_LOCATION_ON_THE_LEFT_OR_RIGHT_SIDE_OF_THE_SCREEN:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_left_bubble_guide:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "inflateView - RIGHT_SIDE : "

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_left_bubble_guide:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_top_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gamehome_launcher_bubble_picker_right:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_bottom_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gamehome_launcher_bubble_picker_right:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_2
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_right_bubble_guide:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mView:Landroid/view/View;

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BODY_TO_HIDE_THE_GAME_TOOLS_ICON_DRAG_IT_TO_THE_TOP_OF_THE_SCREEN:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->bubble_close_button:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->setCloseBubbleGuide(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->remove()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/view/module/BubbleGuide;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/BubbleGuide;->remove()V

    return-void
.end method

.method public setParams()V
    .locals 13

    const/16 v12, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mCurrentOrientation:I

    if-ne v8, v4, :cond_0

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    const-wide v10, 0x3fec28f5c28f5c29L    # 0.88

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->pxWidth:I

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setParams - Screen Pixel Resolution : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHandlePosition()Landroid/graphics/Point;

    move-result-object v0

    iget v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->pxWidth:I

    const/4 v9, -0x2

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->getmBubbleGuideParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleGuideParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v8, 0x2

    iget v9, v0, Landroid/graphics/Point;->y:I

    if-gt v8, v9, :cond_1

    move v1, v4

    :goto_1
    iget v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mHandleSide:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    move v2, v4

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mContext:Landroid/content/Context;

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v4, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->dp4:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleGuideParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mHandleHeight:I

    div-int/lit8 v8, v8, 0x2

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->topPicker:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->bottomPicker:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleGuideParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_3

    move v4, v6

    :goto_3
    or-int/lit8 v4, v4, 0x50

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleGuideParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mHandleHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->dp4:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setParams - isBottomSide : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isLeftSide : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setParams - handlePosition.y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mBubbleGuideParams.y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleGuideParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setParams - mHandleHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mHandleHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mBubbleGuideParams.x : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleGuideParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->pxWidth:I

    goto/16 :goto_0

    :cond_1
    move v1, v5

    goto/16 :goto_1

    :cond_2
    move v2, v5

    goto/16 :goto_2

    :cond_3
    move v4, v7

    goto/16 :goto_3

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->topPicker:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->bottomPicker:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleGuideParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_5

    :goto_5
    or-int/lit8 v5, v6, 0x30

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->mBubbleGuideParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->dp4:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4

    :cond_5
    move v6, v7

    goto :goto_5
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/BubbleGuide;->show()V

    return-void
.end method
