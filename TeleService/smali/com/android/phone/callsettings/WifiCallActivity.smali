.class public Lcom/android/phone/callsettings/WifiCallActivity;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "WifiCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/WifiCallActivity$1;,
        Lcom/android/phone/callsettings/WifiCallActivity$2;,
        Lcom/android/phone/callsettings/WifiCallActivity$3;,
        Lcom/android/phone/callsettings/WifiCallActivity$4;,
        Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;
    }
.end annotation


# static fields
.field private static mHidePreferredMenu:Z

.field private static progressDlg:Landroid/app/ProgressDialog;

.field private static sim_provisioned:Z


# instance fields
.field private mCallType:[Ljava/lang/String;

.field private mCallTypeValue:[Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mListDivider:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRogersWfcText:Landroid/widget/TextView;

.field private mRogersWfcTextDivider:Landroid/view/View;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;

.field private mWFCEnableObserver:Landroid/database/ContentObserver;

.field private mWFCSettingObserver:Landroid/database/ContentObserver;

.field private mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

.field private wifiCallList:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/WifiCallActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/WifiCallActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/WifiCallActivity;)Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/callsettings/WifiCallActivity;->sim_provisioned:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/callsettings/WifiCallActivity;->sim_provisioned:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/WifiCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/WifiCallActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity;->handleWiFiCall(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/WifiCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->setMenuEnabled()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/WifiCallActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity;->setWiFiPrefValue(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/WifiCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->showProgressDialogForRogers()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/callsettings/WifiCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->updateWifiCalling()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/callsettings/WifiCallActivity;->sim_provisioned:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/WifiCallActivity;->mHidePreferredMenu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/WifiCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/WifiCallActivity$1;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/WifiCallActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/WifiCallActivity$2;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWFCEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/WifiCallActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/WifiCallActivity$3;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWFCSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/WifiCallActivity$4;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/WifiCallActivity$4;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private dismissDialog()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiCallActivity"

    const-string/jumbo v2, "DismissDialog start!!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v4, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "WifiCallActivity"

    const-string/jumbo v2, "DismissDialog end!!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiCallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to Dismiss progressDlg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiCallActivity"

    const-string/jumbo v2, "DismissDialog null"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleWiFiCall(Z)V
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "WifiCallActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleWiFiCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0208

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0244

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "wifi_call_enable"

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    int-to-long v8, v2

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wfc_dialog_show_never_again"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wfc_do_not_show_again_opl_dialog"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "show_wfc_emergency_call_dialog"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->showEmergencyCallDialog()V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "wifi_call_enable"

    if-eqz p1, :cond_8

    :goto_2
    invoke-static {v2, v5, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v2, "vowifi_in_can"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    sget-boolean v2, Lcom/android/phone/callsettings/WifiCallActivity;->sim_provisioned:Z

    if-eqz v2, :cond_9

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "show_wfc_information_dialog_latin"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->showWfcInfoDialogForLatin()V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "support_wfc_opl"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->showWfcOPLDialog()V

    return-void

    :cond_5
    const-string/jumbo v2, "vowifi_in_can"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/utils/WifiSettingUtils;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsIMS;->isLocationMenuNeed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->showLocationInfoDialog()V

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->showWfcRogersWifiDialog()V

    return-void

    :cond_8
    move v3, v4

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->showProgressDialogForRogers()V

    goto :goto_3
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f10003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v2, 0x7f10003d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v2, 0x7f10003b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarView:Landroid/view/View;

    const v2, 0x7f100041

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListDivider:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/phone/callsettings/WifiCallActivity$5;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/WifiCallActivity$5;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarView:Landroid/view/View;

    new-instance v3, Lcom/android/phone/callsettings/WifiCallActivity$6;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/WifiCallActivity$6;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v2, "vowifi_in_can"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f10003e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mRogersWfcText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mRogersWfcText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f10003f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mRogersWfcTextDivider:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mRogersWfcTextDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0c95

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isRogersSIM()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/text/style/URLSpan;

    const-string/jumbo v3, "http://www.rogers.com/AndroidWiFi/"

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mRogersWfcText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mRogersWfcText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isFidoSIM()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/text/style/URLSpan;

    const-string/jumbo v3, "http://www.fido.ca/AndroidWiFi/"

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private initializeListView()V
    .locals 4

    const v3, 0x7f09009d

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->wifiCallList:Ljava/util/TreeMap;

    const-string/jumbo v1, "wfc_preferred_menu_wifi_only_plus"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallType:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallTypeValue:[Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallType:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->wifiCallList:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallTypeValue:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallType:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "vowifi_in_can"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallType:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallTypeValue:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallType:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mCallTypeValue:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity;->wifiCallList:Ljava/util/TreeMap;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/app/Activity;Ljava/util/TreeMap;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setMenuEnabled()V
    .locals 3

    const-string/jumbo v1, "vowifi_menu_enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/phone/callsettings/WifiCallActivity;->mHidePreferredMenu:Z

    if-eqz v1, :cond_6

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWifiCallAdapter:Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method private setWiFiPrefValue(I)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "WifiCallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWiFiPrefValue position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_preferred"

    invoke-static {v1, v2, p1}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    if-ne p1, v4, :cond_2

    const v0, 0x7f0d027c

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const v0, 0x7f0d027b

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const v0, 0x7f0d027d

    goto :goto_0
.end method

.method private showEmergencyCallDialog()V
    .locals 7

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/WifiCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f04010a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0cf1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/WifiCallActivity$7;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/callsettings/WifiCallActivity$7;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/widget/CheckBox;)V

    const v6, 0x7f0d02ca

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showLocationInfoDialog()V
    .locals 9

    const/4 v7, 0x0

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/WifiCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f04010a

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f10009a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v6, 0x7f1002da

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string/jumbo v6, "support_wfc_ftm"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v5, 0x7f0d0cf4

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/phone/callsettings/WifiCallActivity$11;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/callsettings/WifiCallActivity$11;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/widget/CheckBox;)V

    const v8, 0x7f0d02ca

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/phone/callsettings/WifiCallActivity$12;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/WifiCallActivity$12;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    const v8, 0x7f0d02c7

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    new-instance v6, Lcom/android/phone/callsettings/WifiCallActivity$13;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/WifiCallActivity$13;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_1
    const v5, 0x7f0d0cf3

    goto :goto_0
.end method

.method private showProgressDialogForRogers()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c91

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sget-object v0, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showWfcInfoDialogForLatin()V
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/WifiCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f04010a

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f10009a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v5, 0x7f1002da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v5, 0x7f0d0cf5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/phone/callsettings/WifiCallActivity$8;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/callsettings/WifiCallActivity$8;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/widget/CheckBox;)V

    const v7, 0x7f0d02ca

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWfcOPLDialog()V
    .locals 6

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/WifiCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f04010b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0cf7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/callsettings/WifiCallActivity$9;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/WifiCallActivity$9;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    const v5, 0x7f0d0cfe

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v3, Lcom/android/phone/callsettings/WifiCallActivity$10;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/WifiCallActivity$10;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private showWfcRogersWifiDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0c8e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0c92

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/WifiCallActivity$14;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/WifiCallActivity$14;-><init>(Lcom/android/phone/callsettings/WifiCallActivity;)V

    const v3, 0x7f0d02ca

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method

.method private updateWifiCalling()V
    .locals 5

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "wifi_call_enable"

    invoke-static {v1, v4, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f0d0bcf

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListDivider:Landroid/view/View;

    sget-boolean v1, Lcom/android/phone/callsettings/WifiCallActivity;->mHidePreferredMenu:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    sget-boolean v4, Lcom/android/phone/callsettings/WifiCallActivity;->mHidePreferredMenu:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0bd0

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v5, "WifiCallActivity"

    const-string/jumbo v6, "OnCreate"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "vowifi_in_can"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_calling_rogers_imsi"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string/jumbo v5, "support_wfc_gpg"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "vowifi_in_can"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/WifiCallActivity;->setHasOptionsMenu(Z)V

    :cond_3
    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->getWiFiCallingTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :cond_5
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/phone/callsettings/WifiCallActivity;->sim_provisioned:Z

    const-string/jumbo v5, "WifiCallActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sim_Provisioned value ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/phone/callsettings/WifiCallActivity;->sim_provisioned:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "WifiCallActivity"

    const-string/jumbo v2, "onCreateOptionsMenu"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0d04b7

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string/jumbo v1, "support_wfc_gpg"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "vowifi_in_can"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const v1, 0x7f040012

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/WifiCallActivity;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->initializeListView()V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "WifiCallActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onOptionsItemSelected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, ".callsettings.WifiCallHelpActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "isFromNoti"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/WifiCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v4, 0x7f0d0208

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/WifiCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0219

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/WifiCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_0
    move-exception v1

    const-string/jumbo v4, "WifiCallActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ActivityNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "WifiCallActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "vowifi_in_can"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWFCEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWFCSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v2, "vowifi_in_can"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_menu_enable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWFCEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VoWifiSettingsDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mWFCSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->showWifiPreference()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    sput-boolean v1, Lcom/android/phone/callsettings/WifiCallActivity;->mHidePreferredMenu:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->setMenuEnabled()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->updateWifiCalling()V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v2, 0x7f0c00d8

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/utils/FontUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    const-string/jumbo v0, "WifiCallActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "vowifi_in_can"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/WifiCallActivity;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiCallActivity;->dismissDialog()V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method
