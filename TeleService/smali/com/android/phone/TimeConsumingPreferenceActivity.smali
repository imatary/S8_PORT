.class public Lcom/android/phone/TimeConsumingPreferenceActivity;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Lcom/android/phone/TimeConsumingPreferenceListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final mBusyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCanShowDialog:Z

.field private final mDismiss:Landroid/content/DialogInterface$OnClickListener;

.field private final mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

.field protected mIsForeground:Z

.field protected mIsShowDialog:Z

.field private mResult:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->DBG:Z

    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mCanShowDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 4

    const-string/jumbo v1, "TimeConsumingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismissDialogSafely, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    invoke-virtual {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method dumpState()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "TimeConsumingPreferenceActivity"

    const-string/jumbo v3, "dumpState begin"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "TimeConsumingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBusyList: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "TimeConsumingPreferenceActivity"

    const-string/jumbo v3, "dumpState end"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dumpState()V

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->finish()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x64

    const/4 v8, 0x0

    const v7, 0x7f0d0394

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    if-eq p1, v9, :cond_0

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "TimeConsumingPreferenceActivity"

    const-string/jumbo v6, "key list is empty, no need to show dialog"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    if-ne p1, v9, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/phone/TimeConsumingPreferenceActivity;->setCancelable(Z)V

    invoke-virtual {p0, p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    :goto_0
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    return-object v2

    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/phone/TimeConsumingPreferenceActivity;->setCancelable(Z)V

    goto :goto_0

    :cond_3
    const/16 v5, 0x190

    if-eq p1, v5, :cond_4

    const/16 v5, 0x1f4

    if-ne p1, v5, :cond_5

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d038d

    sparse-switch p1, :sswitch_data_0

    const v3, 0x7f0d0392

    iget-object v5, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v6}, Lcom/android/phone/TimeConsumingPreferenceActivity;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_5
    const/16 v5, 0x12c

    if-eq p1, v5, :cond_4

    const/16 v5, 0x258

    if-eq p1, v5, :cond_4

    return-object v10

    :sswitch_0
    const v3, 0x7f0d0391

    iget-object v5, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :sswitch_1
    const v3, 0x7f0d0393

    iget-object v5, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :sswitch_2
    const v3, 0x7f0d061a

    const v4, 0x7f0d0565

    iget-object v5, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x258 -> :sswitch_2
    .end sparse-switch
.end method

.method public onError(Landroid/preference/Preference;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dumpState()V

    const-string/jumbo v0, "TimeConsumingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError, preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mCanShowDialog:Z

    invoke-virtual {p0, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p2, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    goto :goto_0
.end method

.method public onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "cdma_additional_setting_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "feature_multisim_dsda_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dumpState()V

    const-string/jumbo v0, "TimeConsumingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinished, preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    :goto_0
    iget v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    if-eq v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    :cond_0
    iput v3, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mResult:I

    :cond_1
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_2
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mCanShowDialog:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    :cond_0
    return-void
.end method

.method public onStarted(Landroid/preference/Preference;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dumpState()V

    const-string/jumbo v0, "TimeConsumingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStarted, preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "cdma_additional_setting_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    iput-boolean v3, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mCanShowDialog:Z

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mCanShowDialog:Z

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method
