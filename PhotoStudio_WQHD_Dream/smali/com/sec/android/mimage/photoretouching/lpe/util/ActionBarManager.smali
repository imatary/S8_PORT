.class public Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;
.super Ljava/lang/Object;
.source "ActionBarManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIM_DURATION:I = 0x0

.field private static final ANIMATE_ACTION_BAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PEDIT_ActionBarManager"

.field private static final UPDATE_ACTION_BAR:I = 0x1


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackKeyState:Z

.field private mContext:Landroid/content/Context;

.field private mCustomMenu:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsInited:Z

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

.field private mMenu:Landroid/view/Menu;

.field private mServiceId:I

.field private mShowSave:Z

.field private mState:I

.field private mTmpState:I

.field private moreWidth:I

.field private redoWidth:I

.field private saveWidth:I

.field private shareWidth:I

.field private undoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mBackKeyState:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mIsInited:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mTmpState:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionBar(I)V

    return-void
.end method

.method private calculateActionbarItemWidth()V
    .locals 1

    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->undoWidth:I

    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->redoWidth:I

    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->saveWidth:I

    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->shareWidth:I

    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->moreWidth:I

    return-void
.end method

.method private controlTextSize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkIfHugeFont(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e008e

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setMaxTextSizeforCancelApply(I)V

    const v0, 0x7f0e008d

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setMaxTextSizeforCancelApply(I)V

    const v0, 0x7f0e0090

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setMaxTextSize(I)V

    const v0, 0x7f0e008f

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setMaxTextSize(I)V

    const v0, 0x7f0e0098

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setMaxTextSize(I)V

    const v0, 0x7f0e009a

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setMaxTextSize(I)V

    const v0, 0x7f0e009b

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setMaxTextSize(I)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f03002d

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    move-object/from16 v16, v0

    new-instance v17, Landroid/app/ActionBar$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v15}, Landroid/app/ActionBar;->hide()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v15}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/app/Activity;

    const v16, 0x7f0e008e

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setContentDescriptionForActionBarItems()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/app/Activity;

    const v16, 0x7f0e008d

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e008b

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e009e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e009f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e009e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e009f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e0097

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e0099

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e009c

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e009d

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0e008b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e008b

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e0090

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e008f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e0098

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e009a

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->controlTextSize()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->calculateActionbarItemWidth()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setUndoRedoVisibility()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setButtonBackgrounds()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0207c6

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v15, -0xdadadb

    invoke-virtual {v6, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e0091

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e0090

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070333

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->toUppercaseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e008f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070269

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->toUppercaseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e0098

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07027e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->toUppercaseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e009a

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07029f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->toUppercaseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e008e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070072

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->toUppercaseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e008d

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070092

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->toUppercaseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableUndo(Z)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableRedo(Z)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableSave(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mIsInited:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->initForDesktopMode()V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e008e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v16, 0x7f0e008d

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method private setContentDescriptionForActionBarItems()V
    .locals 9

    const v8, 0x7f0e008f

    const v7, 0x7f0e008b

    const v6, 0x7f070333

    const v5, 0x7f070269

    const v4, 0x7f07000f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070072

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    const v3, 0x7f07027e

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    const v3, 0x7f07029f

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setMaxTextSize(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private setMaxTextSizeforCancelApply(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41a40000    # 20.5f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private updateActionBar(I)V
    .locals 7

    const v6, 0x7f0e008d

    const v5, 0x7f0e008b

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v2, :cond_1

    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    and-int/lit16 v2, p1, -0x100

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_0

    and-int/lit16 v2, p1, -0x100

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_0

    and-int/lit16 v2, p1, -0x100

    const/16 v3, 0x800

    if-eq v2, v3, :cond_0

    and-int/lit16 v2, p1, -0x100

    const/16 v3, 0x2000

    if-eq v2, v3, :cond_0

    and-int/lit16 v2, p1, -0x100

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_0

    and-int/lit16 v2, p1, -0x100

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    if-eq v2, v4, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0e047a

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0e047b

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0e0478

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0e0479

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e0097

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e0099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionbarLayout()V

    :cond_1
    return-void

    :cond_2
    sparse-switch p1, :sswitch_data_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e008e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setUndoRedoVisibility()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mBackKeyState:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e008e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mBackKeyState:Z

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto :goto_2

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    if-ne v2, v4, :cond_5

    move v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    if-ne v2, v4, :cond_6

    move v2, v0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mBackKeyState:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    if-ne v2, v4, :cond_7

    move v2, v0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    if-ne v2, v4, :cond_8

    move v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    if-nez v3, :cond_9

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    if-ne v3, v4, :cond_9

    :goto_7
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e008e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    move v2, v1

    goto :goto_5

    :cond_8
    move v2, v1

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x80000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public checkIfActionbarFit()I
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08050a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->undoWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->redoWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->saveWidth:I

    add-int v2, v3, v4

    :goto_0
    sub-int v3, v1, v0

    if-gt v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->undoWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->redoWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->shareWidth:I

    add-int v2, v3, v4

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->moreWidth:I

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->saveWidth:I

    :goto_2
    add-int v2, v4, v3

    sub-int v3, v1, v0

    if-gt v2, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->shareWidth:I

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    return-void
.end method

.method public enableCancel(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableDone(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableRedo(Z)V
    .locals 6

    const v5, 0x7f0e009f

    const v2, 0x3e99999a    # 0.3f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    const v1, 0x3f59999a    # 0.85f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08050e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    if-eqz p1, :cond_0

    const v2, 0x3f19999a    # 0.6f

    :cond_0
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e047b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public enableSave(Z)V
    .locals 6

    const v5, 0x7f0e0097

    const v2, 0x3e99999a    # 0.3f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0098

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    const v1, 0x3f59999a    # 0.85f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08050e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    if-eqz p1, :cond_0

    const v2, 0x3f19999a    # 0.6f

    :cond_0
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0478

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public enableShareVia(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0479

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public enableUndo(Z)V
    .locals 6

    const v5, 0x7f0e009e

    const v2, 0x3e99999a    # 0.3f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0090

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    const v1, 0x3f59999a    # 0.85f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08050e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    if-eqz p1, :cond_0

    const v2, 0x3f19999a    # 0.6f

    :cond_0
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e047a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getMoreButtonWidth()V
    .locals 10

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "action_bar"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Landroid/widget/ActionMenuView;

    if-eqz v5, :cond_1

    invoke-virtual {v1, v9, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->moreWidth:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getWidth(I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    :cond_0
    return v1
.end method

.method public hide()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$2;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public initForDesktopMode()V
    .locals 4

    const v3, 0x7f0e009f

    const v2, 0x7f0e009e

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$4;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public isDoneEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnableSave()Z
    .locals 2

    const v1, 0x7f0e0097

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;->onMenuClicked(I)V

    :cond_0
    return-void
.end method

.method public onLanguageChanged()V
    .locals 8

    const v7, 0x7f07027e

    const v6, 0x7f070269

    const v5, 0x7f070092

    const v4, 0x7f070072

    const v3, 0x7f0e008e

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070333

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e0098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f07029f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070174

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e047a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f070333

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e047b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0478

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0479

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f07029f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setContentDescriptionForActionBarItems()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->calculateActionbarItemWidth()V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setUndoRedoVisibility()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionbarLayout()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;->onMenuLongClicked(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;->onMenuClicked(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateLayout()V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setUndoRedoVisibility()V

    :cond_1
    return-void
.end method

.method public onStateChange(II)V
    .locals 9

    const/16 v8, 0x1000

    const/16 v7, 0x800

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    and-int/lit16 v5, p1, 0xff

    if-nez v5, :cond_1

    const/high16 v5, 0x20000

    if-eq p1, v5, :cond_1

    const/high16 v5, 0x40000

    if-eq p1, v5, :cond_1

    if-eq p1, v7, :cond_1

    if-ne p1, v8, :cond_0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    if-eq v5, v6, :cond_1

    :cond_0
    const/16 v5, 0x2000

    if-eq p1, v5, :cond_1

    const/high16 v5, 0x80000

    if-eq p1, v5, :cond_1

    const/high16 v5, 0x90000

    if-ne p1, v5, :cond_4

    :cond_1
    move v2, v4

    :goto_0
    and-int/lit16 v5, p2, 0xff

    if-nez v5, :cond_3

    const/high16 v5, 0x20000

    if-eq p2, v5, :cond_3

    const/high16 v5, 0x40000

    if-eq p2, v5, :cond_3

    if-eq p2, v7, :cond_3

    if-ne p2, v8, :cond_2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    if-eq v5, v6, :cond_3

    :cond_2
    const/16 v5, 0x2000

    if-eq p2, v5, :cond_3

    const/high16 v5, 0x80000

    if-eq p2, v5, :cond_3

    const/high16 v5, 0x90000

    if-ne p2, v5, :cond_5

    :cond_3
    move v1, v4

    :goto_1
    const-string v5, "PEDIT_ActionBarManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOldSub, isNewSub: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v5, p1, -0x100

    and-int/lit16 v6, p2, -0x100

    if-ne v5, v6, :cond_6

    move v0, v4

    :goto_2
    if-nez v0, :cond_8

    if-eq v2, v1, :cond_7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mTmpState:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionBar(I)V

    goto :goto_3

    :cond_8
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    goto :goto_3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e009e

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e009f

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->showContextMenu(FF)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public setActionBarListener(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    return-void
.end method

.method public setBackKeyState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mBackKeyState:Z

    return-void
.end method

.method public setButtonBackgrounds()V
    .locals 14

    const v13, 0x7f0e009d

    const v12, 0x7f0e009c

    const v11, 0x7f0206b5

    const v10, 0x7f0206b4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0207c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v8, -0xdadadb

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v9, 0x7f0e0091

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v9, 0x7f0e009e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v9, 0x7f0e009f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v9, 0x7f0e0097

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v9, 0x7f0e0099

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setDrawingListeners(II)V
    .locals 6

    const v5, 0x7f0c0099

    const v4, 0x7f0206b5

    const v3, 0x3e4ccccd    # 0.2f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setDrawingListenersForDream(II)V
    .locals 4

    const v3, 0x7f0206b5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->init()V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionBar(I)V

    :cond_0
    return-void
.end method

.method public setSaveVisibility(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->checkIfActionbarFit()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionBar(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    return-void
.end method

.method public setShareViaVisibility(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->checkIfActionbarFit()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v2, 0x7f0e009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mState:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionBar(I)V

    :cond_2
    return-void
.end method

.method public setUndoRedoVisibility()V
    .locals 7

    const v6, 0x7f0e0098

    const v5, 0x7f0e0097

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->checkIfActionbarFit()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e047a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e047b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0478

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0479

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->checkIfActionbarFit()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e047a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e047b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0478

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0479

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e047a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e047b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0478

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0479

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public show()V
    .locals 8

    const-wide/16 v6, 0x64

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$1;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public showApplyCancel(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e008d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public update(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->hide()V

    :cond_0
    :goto_0
    const/16 v1, 0x100

    if-ne p1, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionBar(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;->isMenuShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->show()V

    goto :goto_0
.end method

.method public updateActionbarLayout()V
    .locals 1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->getMoreButtonWidth()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setButtonBackgrounds()V

    return-void
.end method

.method public updateContentDescription()V
    .locals 4

    const v1, 0x7f0e008b

    const v3, 0x7f07000f

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mIsInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateLayout()V
    .locals 11

    const v10, 0x7f0e0091

    const v9, 0x7f08050d

    const v8, 0x7f0804cb

    const v7, 0x7f0801c1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0804cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v5, 0x7f0e0090

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v5, 0x7f0e008f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v5, 0x7f0e0098

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v5, 0x7f0e009b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v5, 0x7f0e0092

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080506

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->controlTextSize()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->calculateActionbarItemWidth()V

    return-void
.end method
