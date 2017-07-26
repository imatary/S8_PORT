.class public Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "CallSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/phone/callsettings/DialogCreatable;


# instance fields
.field private isCreatedAndNotStopped:Z

.field private mAirplainModeObserver:Landroid/database/ContentObserver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field protected mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsAirplainModeObserverRegister:Z

.field private mIsContentChanged:Z

.field private mIsForeground:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsForeground:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsContentChanged:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsContentChanged:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsForeground:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsAirplainModeObserverRegister:Z

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mAirplainModeObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method protected dismissDialog(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getActionBar()Landroid/app/ActionBar;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected isContentChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsContentChanged:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "CallSettingsPreferenceFragment"

    const-string/jumbo v1, "onDestroy "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    invoke-static {v0, v1}, Lcom/android/phone/utils/AppLogging;->insertMultipleLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;)V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsAirplainModeObserverRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mAirplainModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CallSettingsPreferenceFragment"

    const-string/jumbo v1, "Unregister for air plane mode listener in"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsAirplainModeObserverRegister:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mAirplainModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsForeground:Z

    const-string/jumbo v0, "CallSettingsPreferenceFragment"

    const-string/jumbo v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareDialog(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsForeground:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    return-void
.end method

.method protected registerAirplainModeObserver()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "CallSettingsPreferenceFragment"

    const-string/jumbo v1, "registerAirplainModeObserver"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsAirplainModeObserverRegister:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$1;-><init>(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mAirplainModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mAirplainModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsAirplainModeObserverRegister:Z

    :cond_0
    return-void
.end method

.method protected registerContentUri(Landroid/net/Uri;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$2;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$2;-><init>(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method protected removeDialog(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->getDialogId()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    iput-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->getDialogId()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected resetContentChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsContentChanged:Z

    return-void
.end method

.method protected setCancelable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    iput-object p1, v0, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    iput-object p1, v0, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "CallSettingsPreferenceFragment"

    const-string/jumbo v4, "Old dialog fragment not null!"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "CallSettingsPreferenceFragment"

    const-string/jumbo v4, "But, same dialog. We ignore showDialog command."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    if-nez v3, :cond_2

    const-string/jumbo v3, "CallSettingsPreferenceFragment"

    const-string/jumbo v4, "Fragment is not visible. We ignore showDialog."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v3, Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;-><init>(Lcom/android/phone/callsettings/DialogCreatable;I)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 6

    const v5, 0x7f0d0356

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "CallSettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method protected unregisterContentUri()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
