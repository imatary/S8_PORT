.class public Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;
.super Landroid/app/Activity;
.source "SmartCallPrivacyNoticeActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAgreeButton:Landroid/widget/Button;

.field private mComeToMenu:Z

.field private mContentTextPart1:Landroid/widget/TextView;

.field private mContentTextPart2:Landroid/widget/TextView;

.field private mDeclineButton:Landroid/widget/Button;

.field mNM:Lcom/android/phone/SmartCallNotificationMgr;


# direct methods
.method static synthetic -get0(Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mComeToMenu:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->setSmartCall()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mComeToMenu:Z

    return-void
.end method

.method private getContentText()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart2:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    const/high16 v0, 0x29000000

    invoke-direct {v2, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const-string/jumbo v0, "feature_usa"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d0bee

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_0
    const v0, 0x7f0d0bfd

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f0d0bfb

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0d0bfc

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0d0bfe

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v11, v1, v13

    aput-object v9, v1, v14

    const/4 v12, 0x2

    aput-object v4, v1, v12

    const/4 v12, 0x3

    aput-object v6, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    :try_start_0
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/URLSpan;

    const-string/jumbo v1, "https://hiya.com/ss-terms-of-service?partner=samsung"

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    const/16 v12, 0x21

    invoke-virtual {v10, v0, v3, v1, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/URLSpan;

    const-string/jumbo v1, "https://hiya.com/ss-data-policy?partner=samsung"

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    const/16 v12, 0x21

    invoke-virtual {v10, v0, v5, v1, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart1:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart1:Landroid/widget/TextView;

    new-instance v0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$3;-><init>(Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;Landroid/text/style/BackgroundColorSpan;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart1:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart2:Landroid/widget/TextView;

    const v1, 0x7f0d0bff

    invoke-virtual {p0, v1}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v11, v12, v13

    invoke-static {v1, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const v0, 0x7f0d0bef

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart1:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setSmartCall()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "smart_call_privacy_notice_agree"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spam_call_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "smart_call_roaming_backup"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "SmartCallPrivacyNoticeActivity"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SmartCallPrivacyNoticeActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getSmartCallNotificationMgr()Lcom/android/phone/SmartCallNotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mNM:Lcom/android/phone/SmartCallNotificationMgr;

    const v0, 0x7f0400ec

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->setContentView(I)V

    const v0, 0x7f10028b

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart1:Landroid/widget/TextView;

    const v0, 0x7f10028d

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mContentTextPart2:Landroid/widget/TextView;

    const v0, 0x7f10028e

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mDeclineButton:Landroid/widget/Button;

    const v0, 0x7f10028f

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mAgreeButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getContentText()V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "smart_call_menu"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mComeToMenu:Z

    const v0, 0x7f0d01f9

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0236

    invoke-virtual {p0, v1}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v2, "IUNC"

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mDeclineButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$1;-><init>(Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mAgreeButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mAgreeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;-><init>(Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mComeToMenu:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string/jumbo v0, "SmartCallPrivacyNoticeActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string/jumbo v0, "SmartCallPrivacyNoticeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mNM:Lcom/android/phone/SmartCallNotificationMgr;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isShowingSmartCallNoti()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mNM:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/SmartCallNotificationMgr;->cancelSmartCallsFilterNotification()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    const v4, 0x7f020164

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v2, "SmartCallPrivacyNoticeActivity"

    const-string/jumbo v3, "onResume"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0d01f8

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
