.class public Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.source "SettingGameHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field isRTL:Z

.field private mCurrentOrientation:I

.field private mGameHomeSwitchX1:I

.field private mGameHomeSwitchX2:I

.field private mImage:Landroid/widget/ImageView;

.field private mLauncherOffDialog:Landroid/app/AlertDialog;

.field private mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mSwitch:Landroid/widget/Switch;

.field private mText:Landroid/widget/TextView;

.field private mTextSwitchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;-><init>()V

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mCurrentOrientation:I

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->isRTL:Z

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateCurrentStatusFromSharedPreference()V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method private bindListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private populateViewForOrientation(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const v0, 0x7f030035

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    return-void
.end method

.method private updateCurrentStatusFromSharedPreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameHomeEnableSync(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f0600cc

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00e6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateMenuDimStatus()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0600cb

    goto :goto_1
.end method


# virtual methods
.method public doSetGameHomeEnableSync()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT16"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "801"

    const-string/jumbo v1, "8002"

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameHomeEnableSync(Landroid/content/Context;Z)V

    return-void
.end method

.method initializeLayout()V
    .locals 4

    const v3, 0x7f0b000a

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0601b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->setTextColorToColorSecondary([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->bindListener()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->requestFocus()Z

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateLauncherDisablePopup()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateCurrentStatusFromSharedPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateMenuDimStatus()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->doSetGameHomeEnableSync()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->doSetGameHomeEnableSync()V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateCurrentStatusFromSharedPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateMenuDimStatus()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateLauncherDisablePopup()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mCurrentOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->populateViewForOrientation(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->saveCurrentFocus(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->initializeLayout()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateCurrentStatusFromSharedPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->loadPrevFocus()Z

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00e6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/Switch;->toggle()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mCurrentOrientation:I

    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->initializeLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->isRTL:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onDetach()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060264

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    const-string/jumbo v0, "801"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateCurrentStatusFromSharedPreference()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX2:I

    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX2:I

    if-gez v4, :cond_3

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX2:I

    :cond_0
    :goto_0
    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX1:I

    iget v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX2:I

    sub-int v0, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    if-gez v0, :cond_1

    mul-int/lit8 v0, v0, -0x1

    :cond_1
    if-le v0, v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->doSetGameHomeEnableSync()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateCurrentStatusFromSharedPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateMenuDimStatus()V

    :cond_2
    :goto_1
    return v2

    :cond_3
    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX2:I

    iget-object v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->getMeasuredWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX2:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateLauncherDisablePopup()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateCurrentStatusFromSharedPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateMenuDimStatus()V

    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX1:I

    iget v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX1:I

    if-gez v3, :cond_6

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX1:I

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX1:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->getMeasuredWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mGameHomeSwitchX1:I

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateLauncherDisablePopup()V
    .locals 8

    const v7, 0x7f060264

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060339

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060355

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f060239

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f06021c

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$2;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$3;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public updateMenuDimStatus()V
    .locals 5

    const v4, 0x7f0603ea

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0600cc

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mTextSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0600cb

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
