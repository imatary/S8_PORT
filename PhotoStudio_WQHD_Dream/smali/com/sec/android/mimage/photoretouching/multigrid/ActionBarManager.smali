.class public Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;
.super Ljava/lang/Object;
.source "ActionBarManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIM_DURATION:I = 0xc8

.field private static final ANIMATE_ACTION_BAR:I = 0x0

.field private static final UPDATE_ACTION_BAR:I = 0x1


# instance fields
.field private addWidth:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

.field private mContext:Landroid/content/Context;

.field private mCustomMenu:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;

.field private mMenu:Landroid/view/Menu;

.field private mShowAdd:Z

.field private mShowSave:Z

.field private moreWidth:I

.field private saveWidth:I

.field private shareWidth:I

.field private shuffleWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowAdd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private controlTextSize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkIfHugeFont(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0094

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setMaxTextSize(I)V

    const v0, 0x7f0e0096

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setMaxTextSize(I)V

    const v0, 0x7f0e0098

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setMaxTextSize(I)V

    const v0, 0x7f0e009a

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setMaxTextSize(I)V

    const v0, 0x7f0e009b

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setMaxTextSize(I)V

    :cond_0
    return-void
.end method

.method private initCollage(Landroid/view/View$OnTouchListener;)V
    .locals 11

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03002c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e008b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e008b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0093

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0095

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0097

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v8, 0x7f0e008b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e008b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    const v8, 0x7f07000f

    invoke-static {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    const v9, 0x7f070034

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    const v9, 0x7f07027e

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e009a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    const v9, 0x7f07029f

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0096

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    const v9, 0x7f0702a6

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e009a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0096

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->controlTextSize()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->calculateActionbarItemWidth()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddShuffleVisibility()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0207c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "ro.build.scafe.version"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2016B"

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0207c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0091

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e009a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0096

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v0, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    :cond_3
    return-void
.end method

.method private setMaxTextSize(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private updateActionBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddShuffleVisibility()V

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateActionbarItemWidth()V
    .locals 1

    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->addWidth:I

    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->shuffleWidth:I

    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->saveWidth:I

    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->shareWidth:I

    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->moreWidth:I

    return-void
.end method

.method public checkIfActionbarFit()I
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08050a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowAdd:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->addWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->shuffleWidth:I

    add-int/2addr v4, v3

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->saveWidth:I

    :goto_0
    add-int v2, v4, v3

    :goto_1
    sub-int v3, v1, v0

    if-gt v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    return v3

    :cond_0
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->shareWidth:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->shuffleWidth:I

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->saveWidth:I

    :goto_3
    add-int v2, v4, v3

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->shareWidth:I

    goto :goto_3

    :cond_3
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->moreWidth:I

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->saveWidth:I

    :goto_4
    add-int v2, v4, v3

    sub-int v3, v1, v0

    if-gt v2, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->shareWidth:I

    goto :goto_4

    :cond_5
    const/4 v3, 0x2

    goto :goto_2
.end method

.method public enableSave(Z)V
    .locals 3

    const v2, 0x7f0e0097

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0478

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public getSaveWidth()I
    .locals 4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->saveWidth:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08049e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    return v2
.end method

.method public getShuffleVisibilty()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0e0096

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    return v1
.end method

.method public getShuffleWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->shuffleWidth:I

    return v0
.end method

.method public getWidth(I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v4, v4}, Landroid/widget/TextView;->measure(II)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;->onMenuClicked(I)V

    :cond_0
    return-void
.end method

.method public onLanguageChanged()V
    .locals 6

    const v5, 0x7f0702a6

    const v4, 0x7f07029f

    const v3, 0x7f07027e

    const v2, 0x7f070034

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070174

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0476

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0477

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0478

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0479

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->calculateActionbarItemWidth()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddShuffleVisibility()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;->onMenuLongClicked(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;->onMenuClicked(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionbarLayout()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->calculateActionbarItemWidth()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddShuffleVisibility()V

    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public setActionBarListener(Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;

    return-void
.end method

.method public setAddEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v1, 0x7f0e0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0476

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public setAddShuffleVisibility()V
    .locals 7

    const v6, 0x7f0e0478

    const v5, 0x7f0e0476

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->checkIfActionbarFit()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0094

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowAdd:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0096

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0098

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0093

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowAdd:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0095

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0097

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0099

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0477

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0479

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_5
    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->checkIfActionbarFit()I

    move-result v0

    if-ne v0, v4, :cond_f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0094

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0096

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0098

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-nez v0, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0093

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0095

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0097

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0099

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-nez v3, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowAdd:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0477

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0479

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_b
    move v0, v2

    goto/16 :goto_6

    :cond_c
    move v0, v2

    goto :goto_7

    :cond_d
    move v0, v2

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    :cond_f
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0094

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0096

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0098

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0093

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0095

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0097

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0099

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowAdd:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0477

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e0479

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0479

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method public setAddVisibility(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0094

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowAdd:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0e0476

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez p1, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionBar()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public setButtonBackgrounds()V
    .locals 10

    const v9, 0x7f0207c8

    const v8, 0x7f0206b6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "ro.build.scafe.version"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2016B"

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0091

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0093

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0095

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0097

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v7, 0x7f0e0099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setCollageMenu(Landroid/view/Menu;Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->initCollage(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setButtonBackgrounds()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionBar()V

    return-void
.end method

.method public setSaveVisibility(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateSaveShareSize()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionBar()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShareViaVisibility(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateSaveShareSize()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionBar()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateActionbarLayout()V
    .locals 11

    const v1, 0x7f0e008b

    const v2, 0x7f08050d

    const v10, 0x7f0804cb

    const/4 v9, 0x0

    const v4, 0x7f08057d

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setButtonBackgrounds()V

    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionbarText(I)V

    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionbarText(I)V

    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionbarText(I)V

    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionbarText(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#40FAFAFA"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v8, v9, v9, v0, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0091

    invoke-static {v0, v1, v10, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->controlTextSize()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mActionBar:Landroid/app/ActionBar;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#D9FAFAFA"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateActionbarText(I)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public updateContentDescriptionForReturn()V
    .locals 4

    const v1, 0x7f0e008b

    const v3, 0x7f07000f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateSaveShareSize()V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e0098

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mCustomMenu:Landroid/view/View;

    const v3, 0x7f0e009a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->mShowSave:Z

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->calculateActionbarItemWidth()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
