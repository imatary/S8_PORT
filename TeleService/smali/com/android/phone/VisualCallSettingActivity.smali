.class public Lcom/android/phone/VisualCallSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "VisualCallSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private first:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mBixby:Z

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mContext:Landroid/content/Context;

.field private mLegalAgreementDialog:Landroid/app/AlertDialog;

.field private mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

.field private mShowDisclaimer:Z

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;

.field private mTurnOnPreference:Landroid/preference/SemSwitchPreferenceScreen;

.field private mUpdateSmartIvrApp:Landroid/preference/Preference;

.field private mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

.field private mValueForBixby:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/VisualCallSettingActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/VisualCallSettingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/VisualCallSettingActivity;->saveAgreementFlag(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/VisualCallSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->updateAutoUpdate()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mShowDisclaimer:Z

    iput-boolean v1, p0, Lcom/android/phone/VisualCallSettingActivity;->first:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iput-boolean v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixby:Z

    iput v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mValueForBixby:I

    return-void
.end method

.method private getAgreementFlag()I
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string/jumbo v6, "com.android.incallui"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/VisualCallSettingActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "show_user_agreement_shared"

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "show_user_agreement"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    return v4
.end method

.method private getValue()I
    .locals 1

    iget v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mValueForBixby:I

    return v0
.end method

.method private initLayout()V
    .locals 2

    const v0, 0x7f10003c

    invoke-virtual {p0, v0}, Lcom/android/phone/VisualCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Lcom/android/phone/VisualCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v0, 0x7f10003b

    invoke-virtual {p0, v0}, Lcom/android/phone/VisualCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/VisualCallSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/VisualCallSettingActivity$1;-><init>(Lcom/android/phone/VisualCallSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->first:Z

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    return-void
.end method

.method private saveAgreementFlag(I)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string/jumbo v7, "com.android.incallui"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/VisualCallSettingActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "show_user_agreement_shared"

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "show_user_agreement"

    invoke-interface {v2, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    return-void
.end method

.method private setValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/VisualCallSettingActivity;->mValueForBixby:I

    return-void
.end method

.method private showUserAgreementDialog()V
    .locals 15

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v12, "layout_inflater"

    invoke-virtual {p0, v12}, Lcom/android/phone/VisualCallSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v12, 0x7f0400fd

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v12, 0x7f1002b8

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string/jumbo v12, "smart_ivr_callerid_info"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const v12, 0x7f0d0cf6

    invoke-virtual {p0, v12}, Lcom/android/phone/VisualCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string/jumbo v12, "%1$s"

    const-string/jumbo v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "%2$s"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const v12, 0x7f0d0c95

    invoke-virtual {p0, v12}, Lcom/android/phone/VisualCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    const/4 v4, 0x0

    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v12, "smart_ivr_callerid_info"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Landroid/text/style/URLSpan;

    const-string/jumbo v13, "http://www.breezeivr.com/"

    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v4

    const/16 v14, 0x21

    invoke-virtual {v5, v12, v4, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v12, 0x7f10019b

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v12, 0x7f1002bc

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v12, Lcom/android/phone/VisualCallSettingActivity$2;

    invoke-direct {v12, p0, v1}, Lcom/android/phone/VisualCallSettingActivity$2;-><init>(Lcom/android/phone/VisualCallSettingActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f1002ba

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    if-eqz v11, :cond_1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    const v12, 0x7f1002b9

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v12, Lcom/android/phone/VisualCallSettingActivity$3;

    invoke-direct {v12, p0, v11}, Lcom/android/phone/VisualCallSettingActivity$3;-><init>(Lcom/android/phone/VisualCallSettingActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string/jumbo v12, "smart_ivr_callerid_info"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v11, :cond_3

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    if-eqz v10, :cond_4

    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d0c91

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/android/phone/VisualCallSettingActivity$4;

    invoke-direct {v12, p0, v1, v11}, Lcom/android/phone/VisualCallSettingActivity$4;-><init>(Lcom/android/phone/VisualCallSettingActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    const v13, 0x7f0d0c93

    invoke-virtual {v0, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/android/phone/VisualCallSettingActivity$5;

    invoke-direct {v12, p0}, Lcom/android/phone/VisualCallSettingActivity$5;-><init>(Lcom/android/phone/VisualCallSettingActivity;)V

    const v13, 0x7f0d0c94

    invoke-virtual {v0, v13, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/android/phone/VisualCallSettingActivity$6;

    invoke-direct {v12, p0}, Lcom/android/phone/VisualCallSettingActivity$6;-><init>(Lcom/android/phone/VisualCallSettingActivity;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/VisualCallSettingActivity;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/android/phone/VisualCallSettingActivity;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_5
    const v12, 0x7f0d0c92

    invoke-virtual {p0, v12}, Lcom/android/phone/VisualCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_6
    new-instance v12, Landroid/text/style/URLSpan;

    const-string/jumbo v13, "http://m.dianhua.cn/ivr_termofservice"

    invoke-direct {v12, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v4

    const/16 v14, 0x21

    invoke-virtual {v5, v12, v4, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1
.end method

.method private updateAutoUpdate()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "VisualCallSettingActivity"

    const-string/jumbo v2, "updateAutoUpdate"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "visual_call_update_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "VisualCallSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AutoUpdate : AutoUpdate - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLayout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleIACommand(Z)I
    .locals 4

    const-string/jumbo v1, "VisualCallSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIACommand command...enable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixby:Z

    invoke-virtual {p0, p1}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus(Z)V

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->getValue()I

    move-result v0

    const-string/jumbo v1, "VisualCallSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIACommand rtn :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isPackageExisted(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    return v3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string/jumbo v0, "VisualCallSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0, p2}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0400ff

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->setContentView(I)V

    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "visual_call_turn_on"

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SemSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SemSwitchPreferenceScreen;

    const-string/jumbo v1, "preference_visual_call_update"

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CustomListPreference;

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const-string/jumbo v1, "preference_visual_call_update_material"

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "preference_update_smart_ivr_app"

    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateSmartIvrApp:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SemSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/CustomListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "visual_call_update_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0d0c8d

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->initLayout()V

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    const-string/jumbo v1, "config_hide_status_bar"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_3
    const-string/jumbo v1, "smart_ivr_callerid_info"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_1
    return-void

    :cond_6
    if-ne v0, v4, :cond_7

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0d0c90

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0d0c8e

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateSmartIvrApp:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateSmartIvrApp:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "IVRCallScreenMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SemSwitchPreferenceScreen;

    if-ne p1, v5, :cond_1

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    const-string/jumbo v3, "VisualCallSettingActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "click mTurnOnPreference value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus(Z)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    if-ne p1, v5, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "visual_call_update_type"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "VisualCallSettingActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " type =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v5, 0x7f0d0c8d

    invoke-virtual {v3, v5}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v5, 0x7f0d0c90

    invoke-virtual {v3, v5}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v5, 0x7f0d0c8e

    invoke-virtual {v3, v5}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/phone/VisualCallSettingActivity;->mMaterialAutoUpdate:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "visual_call_update_type"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    iget-object v4, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SemSwitchPreferenceScreen;

    if-ne p2, v4, :cond_2

    const-string/jumbo v4, "VisualCallSettingActivity"

    const-string/jumbo v5, "click mSelectCityPreference"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/VisualCallSettingActivity;->mTurnOnPreference:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/SemSwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus(Z)V

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateSmartIvrApp:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    const-string/jumbo v4, "smart_ivr_callerid_info"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "VisualCallSettingActivity"

    const-string/jumbo v5, "click mUpdateSmartIvrApp"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "market://details?id=co.breezeapp.breeze"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/VisualCallSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->first:Z

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v1, 0x7f0c00d8

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/FontUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->updateAutoUpdate()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/ia/VisualCallSettingActivityStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/VisualCallSettingActivityStateListener;-><init>(Lcom/android/phone/VisualCallSettingActivity;)V

    iput-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "IVRCallScreenMenu"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "IVRCallScreenMenu"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "IVRCallScreenMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setUpdateMode()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "visual_call_update_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0d0c8d

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0d0c90

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/VisualCallSettingActivity;->mUpdateVisulaCallListPreference:Lcom/android/phone/CustomListPreference;

    const v2, 0x7f0d0c8e

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomListPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public updateTurnOnStatus()V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "visual_call_status"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-ne v3, v5, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/VisualCallSettingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0d0c8a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v3, v5, :cond_3

    move v4, v5

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/phone/VisualCallSettingActivity;->updateLayout(Z)V

    const-string/jumbo v4, "smart_ivr_callerid_info"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "ivr.updatezip.helper"

    if-ne v3, v5, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->isPackageExisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0d0c8b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    goto :goto_3
.end method

.method public updateTurnOnStatus(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->getAgreementFlag()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->first:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "visual_call_status"

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    iget-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixby:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixby:Z

    invoke-direct {p0, v1}, Lcom/android/phone/VisualCallSettingActivity;->setValue(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/VisualCallSettingActivity;->showUserAgreementDialog()V

    iget-boolean v0, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixby:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/phone/VisualCallSettingActivity;->mBixby:Z

    invoke-direct {p0, v2}, Lcom/android/phone/VisualCallSettingActivity;->setValue(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method
