.class public Lcom/android/phone/KTCallForwardingConditional;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTCallForwardingConditional.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTCallForwardingConditional$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mChecked:Z

.field private mCheckedProgressDialog:Z

.field private mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClass:I

.field private mSettingInfo:Landroid/preference/PreferenceScreen;

.field private mSettingOff:Landroid/preference/PreferenceScreen;

.field private mSettingOn:Landroid/preference/EditTextPreference;

.field private mSettingStatus:Landroid/preference/PreferenceScreen;

.field private mtimer:Ljava/util/Timer;

.field private phone:Lcom/android/internal/telephony/Phone;

.field reason:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/KTCallForwardingConditional;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/phone/KTCallForwardingConditional$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/KTCallForwardingConditional;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/KTCallForwardingConditional;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mServiceClass:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/KTCallForwardingConditional;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/KTCallForwardingConditional;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/KTCallForwardingConditional;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/KTCallForwardingConditional;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mServiceClass:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/KTCallForwardingConditional;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/KTCallForwardingConditional;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingConditional;->destoryProgressDialogFromNoResponse()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/KTCallForwardingConditional;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;-><init>(Lcom/android/phone/KTCallForwardingConditional;Lcom/android/phone/KTCallForwardingConditional$MyHandler;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    iput-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    iput-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    return-void
.end method

.method private destoryProgressDialogFromNoResponse()V
    .locals 6

    iget-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d07ac

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/phone/KTCallForwardingConditional$3;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/KTCallForwardingConditional$3;-><init>(Lcom/android/phone/KTCallForwardingConditional;Landroid/widget/Toast;)V

    const-wide/16 v4, 0x1b58

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    const-string/jumbo v5, "KTCallForwardingConditional"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleGetCFResponse done, callForwardInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    iput-object v11, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0d079e

    invoke-static {v1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d07a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d07bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const/16 v7, 0x9

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x7f0d079f

    invoke-static {v1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_7
    const v5, 0x7f0d07a1

    invoke-static {v1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string/jumbo v0, "KTCallForwardingConditional"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "setting_on_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOn:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOn:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/phone/KTCallForwardingConditional$1;

    invoke-direct {v1, p0}, Lcom/android/phone/KTCallForwardingConditional$1;-><init>(Lcom/android/phone/KTCallForwardingConditional;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOn:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d0792

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOn:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d0795

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    const-string/jumbo v0, "setting_off_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOff:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "setting_status__preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingStatus:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "setting_info_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12

    const v11, 0x7f0d079d

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    iput v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mServiceClass:I

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOff:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    if-nez v0, :cond_1

    const/4 v1, 0x4

    iget v0, p0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v4, 0x0

    :goto_0
    const/4 v3, 0x0

    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v0, :cond_3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-boolean v0, Lcom/android/phone/KTCallForwardingConditional;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KTCallForwardingConditional"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ",number="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v11}, Lcom/android/phone/KTCallForwardingConditional;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v7, v10, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    invoke-virtual {v5, v8}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingConditional;->destoryProgressDialogFromNoResponse()V

    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    :cond_1
    return v8

    :cond_2
    const/16 v4, 0x14

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    if-nez v0, :cond_5

    iput-boolean v9, p0, Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v11}, Lcom/android/phone/KTCallForwardingConditional;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v7, v10, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    invoke-virtual {v5, v9}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingConditional;->destoryProgressDialogFromNoResponse()V

    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    :cond_5
    return v8

    :cond_6
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    if-nez v0, :cond_7

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0797

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d0798

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/phone/KTCallForwardingConditional$2;

    invoke-direct {v0, p0}, Lcom/android/phone/KTCallForwardingConditional$2;-><init>(Lcom/android/phone/KTCallForwardingConditional;)V

    const v2, 0x7f0d02ca

    invoke-virtual {v6, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_7
    return v8

    :cond_8
    return v9
.end method

.method showReturnError(Ljava/lang/Throwable;)Z
    .locals 13

    const v12, 0x7f0d07a5

    const v11, 0x7f0d07a2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v5, :cond_0

    const-string/jumbo v5, "ril.ss.errorcode"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v8

    :cond_0
    return v8

    :cond_1
    const/4 v3, 0x0

    const-string/jumbo v5, "SOO_Test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "   value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    iput-object v10, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    :cond_2
    const-string/jumbo v5, "37"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0, v11, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_3
    const-string/jumbo v5, "38"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0, v11, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_4
    const-string/jumbo v5, "43"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const v5, 0x7f0d07a3

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_5
    const-string/jumbo v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f0d07a4

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_6
    const-string/jumbo v5, "10"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v0, v12, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_7
    const-string/jumbo v5, "11"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v0, v12, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_8
    const-string/jumbo v5, "13"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f0d07a6

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_9
    const-string/jumbo v5, "16"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x7f0d07a7

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_a
    const-string/jumbo v5, "17"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f0d07a8

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_b
    const-string/jumbo v5, "18"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const v5, 0x7f0d07a9

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_c
    const-string/jumbo v5, "19"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const v5, 0x7f0d07aa

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_d
    const-string/jumbo v5, "20"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const v5, 0x7f0d07ab

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_e
    const-string/jumbo v5, "34"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const v5, 0x7f0d07ac

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_f
    const-string/jumbo v5, "35"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const v5, 0x7f0d07ad

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_10
    const-string/jumbo v5, "36"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const v5, 0x7f0d07ae

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_11
    const-string/jumbo v5, "121"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const v5, 0x7f0d07af

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_12
    const-string/jumbo v5, "122"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const v5, 0x7f0d07b0

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_13
    const-string/jumbo v5, "71"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const v5, 0x7f0d07b1

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_14
    const-string/jumbo v5, "72"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const v5, 0x7f0d07b2

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_15
    const-string/jumbo v5, "54"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const v5, 0x7f0d07b3

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_16
    const-string/jumbo v5, "9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const v5, 0x7f0d07b4

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_17
    const-string/jumbo v5, "21"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const v5, 0x7f0d07b5

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_18
    const-string/jumbo v5, "27"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const v5, 0x7f0d07b6

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_19
    const-string/jumbo v5, "29"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const v5, 0x7f0d07b7

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_1a
    const-string/jumbo v5, "30"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const v5, 0x7f0d07b7

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_1b
    const-string/jumbo v5, "123"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const v5, 0x7f0d07b8

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_1c
    const-string/jumbo v5, "124"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const v5, 0x7f0d07b9

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_1d
    const-string/jumbo v5, "125"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const v5, 0x7f0d07ba

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_1e
    const-string/jumbo v5, "126"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const v5, 0x7f0d07bb

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_1f
    const-string/jumbo v5, "127"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const v5, 0x7f0d07bc

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v9

    :cond_20
    return v8
.end method
