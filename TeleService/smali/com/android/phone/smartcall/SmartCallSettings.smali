.class public Lcom/android/phone/smartcall/SmartCallSettings;
.super Landroid/preference/PreferenceActivity;
.source "SmartCallSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/smartcall/SmartCallSettings$1;
    }
.end annotation


# instance fields
.field private alreadyCheck:Z

.field private first:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAutoReject:Landroid/preference/PreferenceScreen;

.field private mAutoUpdate:Landroid/preference/SwitchPreference;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mDescriptionText:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAlreadySendIntent:Z

.field private mListView:Landroid/widget/ListView;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mShareNameNumber:Landroid/preference/SwitchPreference;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/phone/smartcall/SmartCallSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/smartcall/SmartCallSettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarView:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->first:Z

    iput-boolean v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->alreadyCheck:Z

    iput-boolean v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIsAlreadySendIntent:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/smartcall/SmartCallSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/smartcall/SmartCallSettings$1;-><init>(Lcom/android/phone/smartcall/SmartCallSettings;)V

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initLayout()V
    .locals 5

    const/16 v4, 0x8

    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mListView:Landroid/widget/ListView;

    const v2, 0x7f10003c

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v2, 0x7f10003d

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v2, 0x7f10003b

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarView:Landroid/view/View;

    const v2, 0x7f100243

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mDescriptionText:Landroid/widget/TextView;

    const v2, 0x7f100293

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAnimationView:Landroid/widget/ImageView;

    const-string/jumbo v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature_usa"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0d0bf1

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0bf2

    invoke-virtual {p0, v3}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAnimationView:Landroid/widget/ImageView;

    const v3, 0x7f0201bb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarView:Landroid/view/View;

    new-instance v3, Lcom/android/phone/smartcall/SmartCallSettings$2;

    invoke-direct {v3, p0}, Lcom/android/phone/smartcall/SmartCallSettings$2;-><init>(Lcom/android/phone/smartcall/SmartCallSettings;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->first:Z

    return-void

    :cond_1
    const v2, 0x7f0d0bf0

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "support_spam_call_reject"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mDescriptionText:Landroid/widget/TextView;

    const v3, 0x7f0d0be5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mDescriptionText:Landroid/widget/TextView;

    const v3, 0x7f0d0be4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initSmartCallPreference()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "button_share_name_number_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "feature_usa"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private initSpamCallPreference()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "button_auto_reject_calls"

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoReject:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "button_auto_update"

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoUpdate:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "support_spam_call_reject"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoReject:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoReject:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoReject:Landroid/preference/PreferenceScreen;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private sendSmartCallOnOffIntent(Z)V
    .locals 5

    const-string/jumbo v2, "SmartCallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendSmartCallOnOffIntent, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.smartcallprovider.logging.SMART_CALL_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "applogging_feature"

    const-string/jumbo v3, "MLSY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/smartcall/SmartCallSettings;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v2, "applogging_feature"

    const-string/jumbo v3, "MLSN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SmartCallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendSmartCallOnOffIntent - Failed to sendBroadcast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startProviderActivity()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v5, "SmartCallSettings"

    const-string/jumbo v6, "startProviderActivity"

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "spam_call_enable"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "smart_call_share_name_number"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_2

    const/4 v3, 0x1

    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIsAlreadySendIntent:Z

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.smartcallprovider.ACTION_REQUEST_PERMISSION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getTnCAgreed()Z

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIsAlreadySendIntent:Z

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/phone/smartcall/SmartCallSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "SmartCallSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SmartCallProvider - Failed to startActivity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v5, "SmartCallSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SmartCallProvider activity is not found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateAutoupdate()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "SmartCallSettings"

    const-string/jumbo v2, "updateAutoupdate"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "spam_call_auto_update"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SmartCallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAutoupdate : updateValue - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLayout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIsAlreadySendIntent:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->updateShareNameNumber()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoReject:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoReject:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoUpdate:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoUpdate:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private updateShareNameNumber()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "SmartCallSettings"

    const-string/jumbo v2, "updateShareNameNumber"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smart_call_share_name_number"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SmartCallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateShareNameNumber : updateValue - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->startProviderActivity()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "SmartCallSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onActivityResult requestCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", resultCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    if-ne p2, v10, :cond_3

    const-string/jumbo v4, "RequestPermissions"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v7, v3

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v2, v3, v6

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v4, "SmartCallSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onActivityResult grantResult : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    :cond_2
    if-ne v0, v10, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "smart_call_share_name_number"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIsAlreadySendIntent:Z

    goto :goto_0

    :pswitch_1
    if-ne p2, v10, :cond_4

    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "spam_call_enable"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_5

    :goto_4
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/smartcall/SmartCallSettings;->sendSmartCallOnOffIntent(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "spam_call_enable"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "smart_call_roaming_backup"

    invoke-static {v4, v5}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->updateTurnOnStatus()V

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string/jumbo v0, "SmartCallSettings"

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIsAlreadySendIntent:Z

    invoke-virtual {p0, p2}, Lcom/android/phone/smartcall/SmartCallSettings;->updateTurnOnStatus(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string/jumbo v0, "SmartCallSettings"

    const-string/jumbo v1, "onConfigurationChanged"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

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
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "SmartCallSettings"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const v2, 0x7f0400ee

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->setContentView(I)V

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "support_smart_call_mcc"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1, v6, v6}, Lcom/android/phone/smartcall/SmartCallSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->initLayout()V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string/jumbo v2, "config_hide_status_bar"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_2
    const-string/jumbo v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "feature_usa"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d0bee

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->setTitle(I)V

    :goto_1
    const v2, 0x7f0d01f1

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0236

    invoke-virtual {p0, v3}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f070060

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->initSmartCallPreference()V

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SmartCallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPhone : Illegal State Exception Occured"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f0d0bed

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->setTitle(I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "support_spam_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->initSpamCallPreference()V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v4, "IUCS"

    invoke-static {v2, v3, v4}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d01f7

    invoke-virtual {p0, v1}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0217

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "IdentifyUnsavedNumbers"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v2, "SmartCallSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", value: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoUpdate:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "spam_call_auto_update"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "action_auto_update_broadcast"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "spam_call_auto_update"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return v3

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mShareNameNumber:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    const-string/jumbo v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d01f7

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f0d0251

    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "smart_call_share_name_number"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_1
    int-to-long v8, v2

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "smart_call_share_name_number"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v4, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIsAlreadySendIntent:Z

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->updateShareNameNumber()V

    :cond_5
    return v3

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mAutoReject:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.bst.spamcall"

    const-string/jumbo v3, "com.bst.spamcall.SpamCallAutoRejectSettingActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SmartCallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity for adding calls isn\'t found. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v0, "SmartCallSettings"

    const-string/jumbo v1, "onResume"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d01f7

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->updateTurnOnStatus()V

    iput-boolean v4, p0, Lcom/android/phone/smartcall/SmartCallSettings;->first:Z

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v1, 0x7f0c00d8

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/FontUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->updateShareNameNumber()V

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->updateAutoupdate()V

    iput-boolean v4, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mIsAlreadySendIntent:Z

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/ia/SmartCallSettingsStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/SmartCallSettingsStateListener;-><init>(Lcom/android/phone/smartcall/SmartCallSettings;)V

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "IdentifyUnsavedNumbers"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "IdentifyUnsavedNumbers"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "IdentifyUnsavedNumbers"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public perFormClickSubAppBarView(Ljava/lang/Boolean;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "smart_call_privacy_notice_agree"

    invoke-static {v1, v3}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->first:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    return v1

    :cond_2
    return v3

    :cond_3
    return v3
.end method

.method public updateTurnOnStatus()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "spam_call_enable"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/smartcall/SmartCallSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0d0bcf

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string/jumbo v1, "support_spam_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v6, "IUCX"

    if-ne v0, v2, :cond_5

    const-string/jumbo v1, "On"

    :goto_2
    invoke-static {v4, v5, v6, v1}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v6, "IUNO"

    if-ne v0, v2, :cond_6

    const-string/jumbo v1, "On"

    :goto_3
    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-ne v0, v2, :cond_7

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/phone/smartcall/SmartCallSettings;->updateLayout(Z)V

    iput-boolean v3, p0, Lcom/android/phone/smartcall/SmartCallSettings;->alreadyCheck:Z

    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0d0bd0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "Off"

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "Off"

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method public updateTurnOnStatus(Z)V
    .locals 14

    const v10, 0x7f0d0237

    const v9, 0x7f0d01f7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v7, "spam_calls_dialog_do_not_show"

    invoke-static {v7, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v7, "smart_call_privacy_notice_donotshow"

    invoke-static {v7, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "spam_call_enable"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v7, "smart_call_privacy_notice_agree"

    invoke-static {v7, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v7, "support_spam_call"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    iget-boolean v7, p0, Lcom/android/phone/smartcall/SmartCallSettings;->first:Z

    if-eqz v7, :cond_4

    :cond_0
    const-string/jumbo v7, "support_smart_call"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportedSmartCallNoti()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v7, p0, Lcom/android/phone/smartcall/SmartCallSettings;->first:Z

    if-eqz v7, :cond_5

    :cond_1
    iget-boolean v7, p0, Lcom/android/phone/smartcall/SmartCallSettings;->alreadyCheck:Z

    if-nez v7, :cond_3

    iput-boolean v6, p0, Lcom/android/phone/smartcall/SmartCallSettings;->alreadyCheck:Z

    const-string/jumbo v7, "support_smart_call"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v9}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v10}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "spam_call_enable"

    if-eqz p1, :cond_7

    move v7, v6

    :goto_0
    int-to-long v12, v7

    invoke-static {v8, v9, v10, v12, v13}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spam_call_enable"

    if-eqz p1, :cond_8

    move v7, v6

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v7, "smart_call_roaming_backup"

    if-eqz p1, :cond_9

    :goto_2
    invoke-static {v7, v6}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->updateTurnOnStatus()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "tencent_functions_type"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "spam_call_menu"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/smartcall/SmartCallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v10}, Lcom/android/phone/smartcall/SmartCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "spam_call_enable"

    if-eqz p1, :cond_6

    move v5, v6

    :cond_6
    int-to-long v10, v5

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "smart_call_menu"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v5, 0x2

    invoke-virtual {p0, v1, v5}, Lcom/android/phone/smartcall/SmartCallSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_7
    move v7, v5

    goto :goto_0

    :cond_8
    move v7, v5

    goto :goto_1

    :cond_9
    move v6, v5

    goto :goto_2
.end method
