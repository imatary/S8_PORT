.class public Lcom/android/phone/mobilenetworks/kor/NetworkMode;
.super Landroid/app/ListActivity;
.source "NetworkMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/kor/NetworkMode$1;,
        Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mDataDependencyMet:Z

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTargetBand:Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeToEnableData:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/kor/NetworkMode;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/mobilenetworks/kor/NetworkMode;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->selectedBandInformed(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkMode$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode$1;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkMode;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d0c61

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d0c60

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "ANY"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->getValue()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lte_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getSelectedBandMode()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lte_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private getSelectedBandMode()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method private loadBandList([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    invoke-direct {v0, p0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    new-instance v2, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v1, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkMode;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getSelectedBandMode()V

    return-void
.end method

.method private selectedBandInformed(Landroid/os/AsyncResult;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v1, v0, v3

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mDataDependencyMet:Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->loadBandList([Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    const-string/jumbo v0, "NetworkMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The last known met: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mDataDependencyMet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mDataDependencyMet:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetworkMode"

    const-string/jumbo v1, "Re-enabling data dependency..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->setMobileDataEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTimeToEnableData:Z

    const-string/jumbo v0, "NetworkMode"

    const-string/jumbo v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->setMobileDataEnabled(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mProgressDialog:Landroid/app/ProgressDialog;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0d0c62

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTargetBand:Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkMode$ListItem;->getValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    const-string/jumbo v0, "NetworkMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFinishing()? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; time to enable data? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTimeToEnableData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTimeToEnableData:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "NetworkMode"

    const-string/jumbo v1, "Re-enabling data dependency..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->setMobileDataEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTimeToEnableData:Z

    const-string/jumbo v0, "NetworkMode"

    const-string/jumbo v1, "Disabling data connectivity..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkMode;->mTimeToEnableData:Z

    invoke-super {p0}, Landroid/app/ListActivity;->onUserLeaveHint()V

    const-string/jumbo v0, "NetworkMode"

    const-string/jumbo v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
