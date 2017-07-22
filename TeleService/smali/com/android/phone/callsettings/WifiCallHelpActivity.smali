.class public Lcom/android/phone/callsettings/WifiCallHelpActivity;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "WifiCallHelpActivity.java"


# instance fields
.field isFromNoti:Z

.field private mGotoWfcSetting:Landroid/widget/Button;

.field private mWfcHelpGoToSetting:Landroid/widget/TextView;

.field private mWfcHelpScroll:Landroid/widget/ScrollView;

.field private mWfcHelpText1:Landroid/widget/TextView;

.field private mWfcHelpText2:Landroid/widget/TextView;

.field private mWfcHelpText3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->isFromNoti:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v5, "isFromNoti"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->isFromNoti:Z

    :cond_0
    const-string/jumbo v5, "WifiCallHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate from Noti : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->isFromNoti:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->isFromNoti:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->getWiFiCallingTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->isFromNoti:Z

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const v5, 0x7f0d04ab

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string/jumbo v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "WifiCallHelpActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Value of MCCMNC ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "vowifi_in_can"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f040108

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    const v3, 0x7f1002d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpGoToSetting:Landroid/widget/TextView;

    const v3, 0x7f1002cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText1:Landroid/widget/TextView;

    const v3, 0x7f1002cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText2:Landroid/widget/TextView;

    const v3, 0x7f1002cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText3:Landroid/widget/TextView;

    const v3, 0x7f1002ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpScroll:Landroid/widget/ScrollView;

    const v3, 0x7f1002d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mGotoWfcSetting:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mGotoWfcSetting:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/callsettings/WifiCallHelpActivity$1;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/WifiCallHelpActivity$1;-><init>(Lcom/android/phone/callsettings/WifiCallHelpActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->isFromNoti:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpGoToSetting:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mGotoWfcSetting:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v3, "wfc_help_noti_first_time"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSecureSettingDB(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const-string/jumbo v3, "show_wfc_help_text_osp"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText1:Landroid/widget/TextView;

    const v4, 0x7f0d0cea

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const v3, 0x7f040107

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v3, "support_wfc_ftm"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText1:Landroid/widget/TextView;

    const v4, 0x7f0d0cec

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "support_wfc_opl"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->isFromNoti:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText1:Landroid/widget/TextView;

    const v4, 0x7f0d0cef

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText3:Landroid/widget/TextView;

    const v4, 0x7f0d0cf0

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpGoToSetting:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText1:Landroid/widget/TextView;

    const v4, 0x7f0d0ced

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity;->mWfcHelpText3:Landroid/widget/TextView;

    const v4, 0x7f0d0cee

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
