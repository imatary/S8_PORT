.class public Lcom/android/phone/RecordCallsAutomaticallyActivity;
.super Landroid/preference/PreferenceActivity;
.source "RecordCallsAutomaticallyActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RecordCallsAutomaticallyActivity$1;,
        Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;
    }
.end annotation


# instance fields
.field items:[I

.field items_value:[I

.field private mActionBar:Landroid/app/ActionBar;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRecordCallsTypeListAdapter:Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;

.field private mRecordTypeView:Landroid/widget/ListView;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;

.field private mVoiceRecordCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceRecordList:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/phone/RecordCallsAutomaticallyActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->updateRecordCallListPref()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const v0, 0x7f0d0c7b

    const v1, 0x7f0d0c7c

    const v2, 0x7f0d0c7a

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->items:[I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->items_value:[I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;-><init>(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private updateRecordCallListPref()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "record_calls_automatically_on_off"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "record_calls_automatically_type"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_1

    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mVoiceRecordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mVoiceRecordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateRecordCallsettingScreen()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "record_calls_automatically_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "record_calls_automatically_on_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v2, 0x7f0d06f9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->updateRecordCallListPref()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v2, 0x7f0d06f8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "RecordCallsAutomaticallyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCheckedChanged isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const v0, 0x7f0d0257

    invoke-virtual {p0, v0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d029a

    invoke-virtual {p0, v0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "record_calls_automatically_on_off"

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v2, 0x7f0d06f9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "record_calls_automatically_on_off"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordCallsTypeListAdapter:Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;

    invoke-virtual {v0}, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v1, 0x7f0d06f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "record_calls_automatically_on_off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d0273

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0298

    invoke-virtual {p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0400b1

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->setContentView(I)V

    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string/jumbo v1, "enhanced_voice_record_category"

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mVoiceRecordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mVoiceRecordCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "enhanced_voice_record_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mVoiceRecordList:Landroid/preference/PreferenceScreen;

    const v1, 0x7f10003c

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v1, 0x7f10003d

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v1, 0x7f10003b

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mSubAppBarView:Landroid/view/View;

    new-instance v2, Lcom/android/phone/RecordCallsAutomaticallyActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity$2;-><init>(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100216

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordTypeView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordTypeView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->items:[I

    invoke-direct {v1, p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;-><init>(Lcom/android/phone/RecordCallsAutomaticallyActivity;[I)V

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordCallsTypeListAdapter:Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordTypeView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordCallsTypeListAdapter:Lcom/android/phone/RecordCallsAutomaticallyActivity$RecordCallsTypeListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordTypeView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "record_calls_automatically_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordTypeView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->items_value:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const v1, 0x7f0d0257

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0275

    invoke-virtual {p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
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

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AutoRecordCalls"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mVoiceRecordList:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0d0257

    invoke-virtual {p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02b4

    invoke-virtual {p0, v3}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":android:show_fragment"

    const-class v3, Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":android:no_headers"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "RecordCallsAutomaticallyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const v0, 0x7f0d0257

    invoke-virtual {p0, v0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->updateRecordCallsettingScreen()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;-><init>(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoRecordCalls"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AutoRecordCalls"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public selectRecordType(I)I
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "record_calls_automatically_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "record_calls_automatically_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->mRecordTypeView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity;->items_value:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->updateRecordCallsettingScreen()V

    return v3

    :cond_0
    const/4 v1, 0x2

    return v1
.end method
