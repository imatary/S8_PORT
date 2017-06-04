.class public Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;
.super Landroid/app/Activity;
.source "GameIconDisplayOptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;
    }
.end annotation


# instance fields
.field private imageSeq:Z

.field private mActionBar:Landroid/app/ActionBar;

.field mActionModeLayout:Landroid/widget/LinearLayout;

.field mCancel:Landroid/widget/TextView;

.field protected mCurrentOrientation:I

.field protected mCurrentOrientationRootView:Landroid/view/View;

.field mCurrentSetting:Z

.field mDefaultSetting:Z

.field mDone:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field mHidden:Landroid/widget/LinearLayout;

.field private mImage:Landroid/widget/ImageView;

.field private mImageChangeRunnable:Ljava/lang/Runnable;

.field mNotHidden:Landroid/widget/LinearLayout;

.field protected mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientationRootView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->insertGameIconDisplayOptionStatusLog()V

    return-void
.end method

.method private createGameIconDisplayOptionDialog(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06030e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f060239

    new-instance v3, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$1;-><init>(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$2;-><init>(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private initializeLayout()V
    .locals 8

    const v7, 0x7f0b0009

    const v6, 0x7f0b0008

    const/16 v5, 0x400

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientationRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientationRootView:Landroid/view/View;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mNotHidden:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientationRootView:Landroid/view/View;

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mNotHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientationRootView:Landroid/view/View;

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mImage:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mActionBar:Landroid/app/ActionBar;

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {v0, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCancel:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mDone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mDone:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mDone:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientationRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method private insertGameIconDisplayOptionStatusLog()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_GAMEHOME_SETTINGS_ICON_DISPLAY_FEATURE:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    const-string/jumbo v2, "GL46"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_GAMEHOME_SETTINGS_ICON_DISPLAY_FEATURE:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    goto :goto_0
.end method

.method private setLayout()V
    .locals 7

    const v6, 0x7f0b0057

    const v5, 0x7f020070

    const/16 v4, 0x8

    const/4 v3, 0x2

    const v2, 0x7f0b0040

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mNotHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0602d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mNotHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mNotHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0602d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isShowButtonBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mDone:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->LAUNCHER_ONLY:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->setRadioOption(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCancel:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getSelectableItemBackgroundBorderless(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mDone:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getSelectableItemBackgroundBorderless(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->BOTH:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->setRadioOption(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mNotHidden:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->BOTH:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->setRadioOption(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->LAUNCHER_ONLY:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->setRadioOption(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "802"

    const-string/jumbo v1, "8021"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mDone:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "802"

    const-string/jumbo v2, "8022"

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "2"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameIconsHidden(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-direct {p0, p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->createGameIconDisplayOptionDialog(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "1"

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->finish()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameIconsHidden(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->insertGameIconDisplayOptionStatusLog()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->initializeLayout()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->setLayout()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameIconsHidden(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mDefaultSetting:Z

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mDefaultSetting:Z

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentOrientation:I

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->setContentView(I)V

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->initializeLayout()V

    const-string/jumbo v0, "802"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->setLayout()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method setRadioOption(Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0b00ca

    sget-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$3;->$SwitchMap$com$samsung$android$game$gametools$setting$activity$GameIconDisplayOptionActivity$DISPLAY_OPTION:[I

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mNotHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mNotHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;->mCurrentSetting:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
