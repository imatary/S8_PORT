.class public Lcom/android/phone/KTCallWaiting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTCallWaiting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTCallWaiting$MyHandler;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mCheckedProgressDialog:Z

.field private mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

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

.field private mSettingInfo:Landroid/preference/PreferenceScreen;

.field private mSettingOff:Landroid/preference/PreferenceScreen;

.field private mSettingOn:Landroid/preference/PreferenceScreen;

.field private mSettingStatus:Landroid/preference/PreferenceScreen;

.field private mtimer:Ljava/util/Timer;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/android/phone/KTCallWaiting;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/KTCallWaiting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/KTCallWaiting;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/KTCallWaiting$MyHandler;-><init>(Lcom/android/phone/KTCallWaiting;Lcom/android/phone/KTCallWaiting$MyHandler;)V

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    iput-object v1, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    iput-object v1, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    return-void
.end method

.method private destoryProgressDialogFromNoResponse()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    const v2, 0x7f0d07ac

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    new-instance v3, Lcom/android/phone/KTCallWaiting$2;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/KTCallWaiting$2;-><init>(Lcom/android/phone/KTCallWaiting;Landroid/widget/Toast;)V

    const-wide/16 v4, 0x1b58

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method handleGetCallWaitingResult(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    iput-object v4, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v2, 0x7f0d07a1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0d07a0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handleSetCallWaitingResult(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    iput-object v4, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    :cond_1
    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0d079e

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_2
    const v2, 0x7f0d079f

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const v2, 0x7f0d07ac

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string/jumbo v0, "KTCallWaiting"

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
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "setting_on_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingOn:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "setting_off_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingOff:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "setting_status__preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingStatus:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "setting_info_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x0

    const v4, 0x7f0d079d

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/KTCallWaiting;->mSettingOn:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v3, :cond_0

    iput-boolean v6, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v4}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v7, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v5, v6}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    iput-boolean v6, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    :cond_0
    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/phone/KTCallWaiting;->mSettingOff:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v3, :cond_2

    iput-boolean v5, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v4}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v7, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v5, v6}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    iput-boolean v6, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    :cond_2
    return v6

    :cond_3
    iget-object v3, p0, Lcom/android/phone/KTCallWaiting;->mSettingStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v4}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v7, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    iput-boolean v6, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    :cond_4
    return v6

    :cond_5
    iget-object v3, p0, Lcom/android/phone/KTCallWaiting;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v3, :cond_6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d079b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d079c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/phone/KTCallWaiting$1;

    invoke-direct {v3, p0}, Lcom/android/phone/KTCallWaiting$1;-><init>(Lcom/android/phone/KTCallWaiting;)V

    const v4, 0x7f0d02ca

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_6
    return v6

    :cond_7
    return v5
.end method

.method showReturnError(Ljava/lang/Throwable;)V
    .locals 13

    const v12, 0x7f0d07b7

    const v11, 0x7f0d07a5

    const v10, 0x7f0d07a2

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

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

    return-void

    :cond_0
    return-void

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

    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    iput-boolean v8, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    iput-object v9, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    :cond_2
    const-string/jumbo v5, "37"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v5, "38"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v0, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "43"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f0d07a3

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x7f0d07a4

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_7
    const-string/jumbo v5, "10"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v0, v11, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_8
    const-string/jumbo v5, "11"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v0, v11, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_9
    const-string/jumbo v5, "13"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x7f0d07a6

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_a
    const-string/jumbo v5, "16"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f0d07a7

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v5, "17"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const v5, 0x7f0d07a8

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v5, "18"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const v5, 0x7f0d07a9

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "19"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const v5, 0x7f0d07aa

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "20"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const v5, 0x7f0d07ab

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v5, "34"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const v5, 0x7f0d07ac

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v5, "35"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const v5, 0x7f0d07ad

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v5, "36"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const v5, 0x7f0d07ae

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v5, "121"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const v5, 0x7f0d07af

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v5, "122"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const v5, 0x7f0d07b0

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v5, "71"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const v5, 0x7f0d07b1

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v5, "72"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const v5, 0x7f0d07b2

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v5, "54"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const v5, 0x7f0d07b3

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v5, "9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const v5, 0x7f0d07b4

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v5, "21"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const v5, 0x7f0d07b5

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v5, "27"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const v5, 0x7f0d07b6

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v5, "29"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v0, v12, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v5, "30"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v0, v12, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v5, "123"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const v5, 0x7f0d07b8

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v5, "124"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const v5, 0x7f0d07b9

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v5, "125"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const v5, 0x7f0d07ba

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v5, "126"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const v5, 0x7f0d07bb

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v5, "127"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0d07bc

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
