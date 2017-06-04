.class public Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.source "SettingGametoolsFragment.java"


# static fields
.field public static final GAME_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.game.gamehome"


# instance fields
.field final TAG:Ljava/lang/String;

.field private imageSeq:Z

.field private mCurrentOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mImageChangeRunnable:Ljava/lang/Runnable;

.field private mSwitch:Landroid/widget/Switch;

.field private mText:Landroid/widget/TextView;

.field private mTextSwitch:Landroid/widget/LinearLayout;

.field private mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

.field switch_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;-><init>()V

    const-string/jumbo v0, "SettingGametoolsFragment"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mCurrentOrientation:I

    new-instance v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$3;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->switch_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->imageSeq:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->imageSeq:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mImageChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->updateCurrentStatusFromSharedPreference()V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method private bindListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->switch_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mTextSwitch:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$2;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initialize()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mTextSwitch:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mTextSwitch:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mTextSwitch:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    const v1, 0x7f0603ea

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mImageChangeRunnable:Ljava/lang/Runnable;

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->setTextColorToColorSecondary([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->bindListener()V

    return-void
.end method

.method private populateViewForOrientation(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const v0, 0x7f030037

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->initialize()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->updateCurrentStatusFromSharedPreference()V

    return-void
.end method

.method private updateCurrentStatusFromSharedPreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0600cc

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->updateMenuDimStatus()V

    return-void

    :cond_0
    const v1, 0x7f0600cb

    goto :goto_0
.end method


# virtual methods
.method createAndShowDialog(Landroid/widget/CompoundButton;)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v10, 0x7f030008

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr;->getDisclaimerInfo(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;

    move-result-object v7

    const-string/jumbo v10, "sec-roboto-light"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    const/4 v3, 0x0

    :goto_0
    iget v10, v7, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;->mTotalCount:I

    if-ge v3, v10, :cond_0

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x2

    const/high16 v11, 0x41880000    # 17.0f

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v10, v7, Lcom/sec/game/gamecast/common/utility/GameToolsDisclaimerMgr$GameToolsDisclaimerInfo;->mDisclaimerIDs:[I

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    const/high16 v10, -0x1000000

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v9, v11}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    const v10, 0x7f0b0025

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v10, 0x7f0b0026

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v0, v11}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    const v10, 0x7f0600ca

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setText(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v10, 0x7f0b0024

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    const/4 v10, 0x3

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setScrollIndicators(I)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v11, 0x7f06025b

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v11, 0x7f060220

    new-instance v12, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$4;

    invoke-direct {v12, p0, v5}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$4;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;Landroid/content/Context;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$5;

    invoke-direct {v11, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$5;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v10, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$6;

    invoke-direct {v10, p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$6;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->requestFocus()Z

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method onClickSwitch(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisclaimerConfirm(Landroid/content/Context;)Z

    move-result v1

    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/game/gamecast/common/activity/TNCActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisclaimerConfirm(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOn(Landroid/content/Context;Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    const-string/jumbo v4, "901"

    const-string/jumbo v5, "8004"

    if-eqz p2, :cond_4

    const-wide/16 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->updateCurrentStatusFromSharedPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->updateMenuDimStatus()V

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->populateViewForOrientation(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->saveCurrentFocus(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->initialize()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->updateCurrentStatusFromSharedPreference()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mImageChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->loadPrevFocus()Z

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "SettingGametoolsFragment"

    const-string/jumbo v2, "onConfigurationChanged: RootView is null!"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mCurrentOrientation:I

    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060298

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    const-string/jumbo v0, "901"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->updateCurrentStatusFromSharedPreference()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mImageChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMenuDimStatus()V
    .locals 6

    const v5, 0x7f0603ea

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mTextSwitch:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00e6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mTextSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0600cc

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mTextSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0600cb

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
