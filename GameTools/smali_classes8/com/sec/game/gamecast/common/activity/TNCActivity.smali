.class public Lcom/sec/game/gamecast/common/activity/TNCActivity;
.super Landroid/app/Activity;
.source "TNCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final TAG:Ljava/lang/String; = "TNCActivity"


# instance fields
.field private isEnabledShowBtnBg:Z

.field private mButtonNext:Landroid/widget/Button;

.field private mCheckBoxAgree:Landroid/widget/CheckBox;

.field private mLayoutCheckBoxAgree:Landroid/widget/LinearLayout;

.field private mSvParentScroll:Landroid/widget/ScrollView;

.field private mSvScroll_Privacy:Landroid/widget/ScrollView;

.field private mSvScroll_Scroll:Landroid/widget/ScrollView;

.field private mSvScroll_Tos:Landroid/widget/ScrollView;

.field private mTvDescPermission:Landroid/widget/TextView;

.field private mTvDescPrivacy:Landroid/widget/TextView;

.field private mTvDescTos:Landroid/widget/TextView;

.field private mTvTitlePermission:Landroid/widget/TextView;

.field private mTvTitlePrivacy:Landroid/widget/TextView;

.field private mTvTitleTos:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->isEnabledShowBtnBg:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/game/gamecast/common/activity/TNCActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mLayoutCheckBoxAgree:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private setLayoutButtonEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->isEnabledShowBtnBg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    sget v1, Lcom/sec/game/gamecast/common/R$drawable;->tc_button_backgound:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    const v1, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    sget v1, Lcom/sec/game/gamecast/common/R$drawable;->tc_button_backgound_dim:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private updateTncDescTexts()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getTosContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getPrivacyContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescTos:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescTos:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescPrivacy:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescPrivacy:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescPermission:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getToolsPermissionContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescPermission:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/TncUtil;->getToolsPermissionContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    const-string/jumbo v1, "TNCActivity"

    const-string/jumbo v2, "onBackPressed : all options except no_alerts_during_game to false"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/sec/game/gamecast/common/R$id;->checkbox_all:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setLayoutButtonEnable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setLayoutButtonEnable(Z)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/sec/game/gamecast/common/R$id;->layout_check:I

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setLayoutButtonEnable(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setLayoutButtonEnable(Z)V

    goto :goto_0

    :cond_5
    sget v1, Lcom/sec/game/gamecast/common/R$id;->button_next:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TNCActivity"

    const-string/jumbo v2, "onNextPressed : TNC agreed"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisclaimerConfirm(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisclaimerConfirm(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/sec/game/gamecast/common/R$layout;->activity_tnc_mk:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setContentView(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    sget v1, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_BUTTON_GAME_TOOLS_22:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_scroll_Tos:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Tos:Landroid/widget/ScrollView;

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_scroll_Privacy:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Privacy:Landroid/widget/ScrollView;

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_scroll_Permission:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Scroll:Landroid/widget/ScrollView;

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_parent_scroll:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvParentScroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvParentScroll:Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvParentScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Privacy:Landroid/widget/ScrollView;

    invoke-virtual {v1, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Tos:Landroid/widget/ScrollView;

    invoke-virtual {v1, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Tos:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setScrollIndicators(I)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Privacy:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setScrollIndicators(I)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setScrollIndicators(I)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_title_1:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvTitleTos:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvTitleTos:Landroid/widget/TextView;

    sget v4, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_BODY_TERMS_OF_SERVICE:I

    invoke-virtual {p0, v4}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_title_2:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvTitlePrivacy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvTitlePrivacy:Landroid/widget/TextView;

    sget v4, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_HEADER_PRIVACY_POLICY:I

    invoke-virtual {p0, v4}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_title_3:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvTitlePermission:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvTitlePermission:Landroid/widget/TextView;

    sget v4, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_HEADER_PERMISSIONS:I

    invoke-virtual {p0, v4}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_description_1:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescTos:Landroid/widget/TextView;

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_description_2:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescPrivacy:Landroid/widget/TextView;

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tv_description_3:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mTvDescPermission:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->updateTncDescTexts()V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->layout_check:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mLayoutCheckBoxAgree:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/game/gamecast/common/R$id;->checkbox_all:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    sget v1, Lcom/sec/game/gamecast/common/R$id;->button_next:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mLayoutCheckBoxAgree:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_BODY_I_HAVE_READ_AND_AGREE_TO_ALL_THE_TERMS_OF_SERVICE_ABOVE:I

    invoke-virtual {p0, v5}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_TBOPT_NOT_SELECTED:I

    invoke-virtual {p0, v5}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    new-instance v4, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;-><init>(Lcom/sec/game/gamecast/common/activity/TNCActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mLayoutCheckBoxAgree:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mButtonNext:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_button_background"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->isEnabledShowBtnBg:Z

    invoke-direct {p0, v3}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setLayoutButtonEnable(Z)V

    const-string/jumbo v1, "002"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    return-void

    :cond_3
    sget v1, Lcom/sec/game/gamecast/common/R$layout;->activity_tnc:I

    invoke-virtual {p0, v1}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setContentView(I)V

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 12

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v3, 0x0

    const-string/jumbo v11, ""

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameLauncherTermsAndConditionAgreed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setResult(I)V

    const-string/jumbo v3, "Agree"

    const-string/jumbo v11, "start"

    :goto_0
    invoke-static {v10}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL22"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GLTNCS"

    const-string/jumbo v0, "value"

    invoke-static {v0, v11}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->makeJsonObj(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v9, v8

    invoke-static/range {v4 .. v9}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->sendBroadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setResult(I)V

    const-string/jumbo v3, "Disagree"

    const-string/jumbo v11, "cancel"

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->updateTncDescTexts()V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->setLayoutButtonEnable(Z)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mCheckBoxAgree:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_parent_scroll:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Tos:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Privacy:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity;->mSvScroll_Scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_scroll_Tos:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_scroll_Privacy:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/sec/game/gamecast/common/R$id;->tnc_scroll_Permission:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
