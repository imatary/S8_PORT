.class public Lcom/android/phone/GsmUmtsCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallForwardOptions.java"

# interfaces
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static mSimId:I


# instance fields
.field private bSlot1RoamingNetwork:Z

.field private bSlot2RoamingNetwork:Z

.field private disableScreen:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mEditReplyMSG:Landroid/preference/PreferenceScreen;

.field private mFirstResume:Z

.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mIsHotSwapRegister:Z

.field private mIsLaunchFromWidget:Z

.field private mPlayVoicemail:Landroid/preference/PreferenceScreen;

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field mToast:Landroid/widget/Toast;

.field private prefVal:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/GsmUmtsCallForwardOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->processActionCallIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/GsmUmtsCallForwardOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->showAlertDialogEditAnsweringMessage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/GsmUmtsCallForwardOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->showAlertDialogPlayVoicemailMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    sput v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsHotSwapRegister:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    return-void
.end method

.method private checkNotSupportSSQuery()Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "not_support_ss_query"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellCSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private processActionCallIntent(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "GsmUmtsCallForwardOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processActionCallIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GsmUmtsCallForwardOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showAlertDialogEditAnsweringMessage()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0c1b

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0ae1

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0523

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/GsmUmtsCallForwardOptions$5;

    invoke-direct {v2, p0}, Lcom/android/phone/GsmUmtsCallForwardOptions$5;-><init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d056d

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogPlayVoicemailMessage()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0ad8

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0ada

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0523

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/GsmUmtsCallForwardOptions$4;

    invoke-direct {v2, p0}, Lcom/android/phone/GsmUmtsCallForwardOptions$4;-><init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d056d

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GsmUmtsCallForwardOptions"

    const-string/jumbo v1, "Fragment finished. We ignore it."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const-string/jumbo v0, "GsmUmtsCallForwardOptions"

    const-string/jumbo v1, "onActivityResult: done"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "GsmUmtsCallForwardOptions"

    const-string/jumbo v1, "onActivityResult: contact picker result not OK."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v0, "GsmUmtsCallForwardOptions"

    const-string/jumbo v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onCFtimeLayoutVisble(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onCFtimeLayoutVisble(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onCFtimeLayoutVisble(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onCFtimeLayoutVisble(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v6, :cond_0

    const-string/jumbo v4, "enable_ss_settings_vowifi_regi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    :cond_2
    const-string/jumbo v4, "support_softphone"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableSoftphone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    :cond_3
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallForwardOptions;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->registerAirplainModeObserver()V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "button_cfu_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const-string/jumbo v4, "button_cfb_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    const-string/jumbo v4, "button_cfnry_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    const-string/jumbo v4, "button_cfnrc_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsCallForwardOptions;->onCreateMultiSIM(Landroid/preference/PreferenceScreen;)V

    const-string/jumbo v4, "default_vm_in_callforwarding"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    iput-boolean v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mCanShowDialog:Z

    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "FROMWIDGET"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_4
    const-string/jumbo v4, "video_call_not_support"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "show_callforward_allcalls_string"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mToast:Landroid/widget/Toast;

    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    if-eqz v4, :cond_d

    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string/jumbo v4, "call_setting_ui_kdi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "voicemail_category_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const/4 v1, 0x0

    const-string/jumbo v4, "callforward_category_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const/4 v1, 0x0

    :goto_3
    const-string/jumbo v4, "feature_kdi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "play_voicemail_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const/4 v1, 0x0

    const-string/jumbo v4, "edit_reply_message"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    const/4 v1, 0x0

    :goto_4
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, Lcom/android/phone/GsmUmtsCallForwardOptions$3;

    invoke-direct {v4, p0}, Lcom/android/phone/GsmUmtsCallForwardOptions$3;-><init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v7, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsHotSwapRegister:Z

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->checkNotSupportSSQuery()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0d0329

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_a
    return-void

    :cond_b
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f0d055a

    invoke-virtual {p0, v7}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    move v4, v6

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f0d04bb

    invoke-virtual {p0, v7}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v4, "play_voicemail_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallForwardOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPlayVoicemail:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPlayVoicemail:Landroid/preference/PreferenceScreen;

    new-instance v7, Lcom/android/phone/GsmUmtsCallForwardOptions$1;

    invoke-direct {v7, p0}, Lcom/android/phone/GsmUmtsCallForwardOptions$1;-><init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v4, "edit_reply_message"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsCallForwardOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mEditReplyMSG:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mEditReplyMSG:Landroid/preference/PreferenceScreen;

    new-instance v7, Lcom/android/phone/GsmUmtsCallForwardOptions$2;

    invoke-direct {v7, p0}, Lcom/android/phone/GsmUmtsCallForwardOptions$2;-><init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_4
.end method

.method public onCreateMultiSIM(Landroid/preference/PreferenceScreen;)V
    .locals 11

    const/4 v7, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v1

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v6, "fragment_title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    if-ne v1, v7, :cond_5

    if-ne v2, v7, :cond_5

    const-string/jumbo v6, "GsmUmtsCallForwardOptions"

    const-string/jumbo v7, "multisim DUAL SIM"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v3

    const-string/jumbo v6, "CallSettingTab"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    :cond_2
    :goto_0
    invoke-static {v10}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    const-string/jumbo v6, "GsmUmtsCallForwardOptions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Roaming Slot1= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Slot2= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "GsmUmtsCallForwardOptions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSimId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "feature_ctc"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    if-eqz v6, :cond_9

    sget v6, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-nez v6, :cond_9

    :goto_1
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    sget v6, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    if-ne v6, v9, :cond_4

    const-string/jumbo v6, "enable_ss_settings_vowifi_regi"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_4
    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    :goto_2
    return-void

    :cond_5
    if-ne v2, v7, :cond_6

    const-string/jumbo v6, "GsmUmtsCallForwardOptions"

    const-string/jumbo v7, "multisim SIM2 Only"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_6
    if-ne v1, v7, :cond_7

    const-string/jumbo v6, "GsmUmtsCallForwardOptions"

    const-string/jumbo v7, "multisim SIM1 Only"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v6

    if-ne v6, v9, :cond_8

    const-string/jumbo v6, "GsmUmtsCallForwardOptions"

    const-string/jumbo v7, "multisim CG Mode"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const-string/jumbo v6, "GsmUmtsCallForwardOptions"

    const-string/jumbo v7, "multisim GC Mode"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_9
    iget-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    if-eqz v6, :cond_3

    sget v6, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-ne v6, v9, :cond_3

    goto :goto_1

    :cond_a
    iput-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsHotSwapRegister:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsHotSwapRegister:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GsmUmtsCallForwardOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsForeground:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "GsmUmtsCallForwardOptions"

    const-string/jumbo v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    return-void

    :cond_3
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    sget v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FROMWIDGET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string/jumbo v2, "feature_multisim_dsda"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    const-string/jumbo v2, "GsmUmtsCallForwardOptions"

    const-string/jumbo v3, "updating default for call forwarding dialogs"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0353

    invoke-virtual {p0, v3}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "FROMWIDGET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->finish()V

    return v5

    :catch_0
    move-exception v0

    return v5

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const v1, 0x7f0d025b

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02bf

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02c0

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02c1

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02c2

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 15

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    const v12, 0x7f0d025b

    invoke-virtual {p0, v12}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const-string/jumbo v12, "enabled"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget v12, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-static {v12}, Lcom/android/phone/PhoneUtilsCommon;->isTWAPTSIM(I)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    if-eqz v12, :cond_0

    const-string/jumbo v12, "GsmUmtsCallForwardOptions"

    const-string/jumbo v13, " cfnrc removed for TW APT new operator"

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    :cond_0
    iget-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v12, :cond_2

    const-string/jumbo v12, "GsmUmtsCallForwardOptions"

    const-string/jumbo v13, "start to init "

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v13, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/phone/CallForwardEditPreference;

    sget v13, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    const/4 v14, 0x0

    invoke-virtual {v12, p0, v14, v13}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    const-string/jumbo v12, "feature_multisim"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "video_call_not_support"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    :cond_1
    const-string/jumbo v12, "feature_multisim"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v12

    :goto_1
    invoke-virtual {v4, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iput v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    iget-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v5}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v12, "toggle"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v5, v12}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    const-string/jumbo v12, "number"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const-string/jumbo v12, "status"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    const-string/jumbo v12, "keyEnable"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->prefVal:Z

    iget-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    :goto_3
    sget v12, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    const/4 v13, 0x1

    invoke-virtual {v5, p0, v13, v12}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_2

    :cond_3
    iget-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->prefVal:Z

    invoke-virtual {v5, v12}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "dsa_main"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "SelectSimStatus"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string/jumbo v12, "SimStatus"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "dsa_is_activate"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    sget v12, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-nez v12, :cond_c

    :cond_6
    :goto_4
    const-string/jumbo v12, "GsmUmtsCallForwardOptions"

    const-string/jumbo v13, "DSA_IS_ACTIVATE"

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    :cond_8
    const-string/jumbo v12, "support_bixby"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v12

    if-eqz v12, :cond_b

    const-string/jumbo v12, "ShowVoiceCallForwarding"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "CallForwarding"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_9
    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_a
    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v12}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_b
    return-void

    :cond_c
    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    sget v12, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    :cond_d
    if-nez v11, :cond_7

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "toggle"

    invoke-virtual {v1}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v1, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "number"

    iget-object v4, v1, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "status"

    iget-object v4, v1, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v3, "keyEnable"

    invoke-virtual {v1}, Lcom/android/phone/CallForwardEditPreference;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
