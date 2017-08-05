.class public Lcom/android/phone/CdmaCallWaitingSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallWaitingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallWaitingSetting$1;,
        Lcom/android/phone/CdmaCallWaitingSetting$2;,
        Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-CdmaCallWaitingSetting$AppStateSwitchesValues:[I

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static mSimId:I


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCWDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDisplayMode:I

.field private mGetMoreOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CdmaCallWaitingSetting;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/CdmaCallWaitingSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-CdmaCallWaitingSetting$AppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->-com-android-phone-CdmaCallWaitingSetting$AppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->-com-android-phone-CdmaCallWaitingSetting$AppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->values()[Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->-com-android-phone-CdmaCallWaitingSetting$AppStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->NUM_PROJECTION:[Ljava/lang/String;

    sput v2, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    const/4 v0, -0x4

    iput v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    new-instance v0, Lcom/android/phone/CdmaCallWaitingSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallWaitingSetting$1;-><init>(Lcom/android/phone/CdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaCallWaitingSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallWaitingSetting$2;-><init>(Lcom/android/phone/CdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mGetMoreOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method private final dismissBusyDialog()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CDMA call waiting settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "CDMA call waiting settings"

    const-string/jumbo v1, "multisim CG Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    :cond_0
    :goto_0
    sget v0, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "CDMA call waiting settings"

    const-string/jumbo v1, "multisim GC Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v3, 0x64

    const/16 v2, 0x384

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_3

    sparse-switch p2, :sswitch_data_0

    :goto_0
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    :goto_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    :goto_2
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/phone/CdmaCallWaitingSetting;->-getcom-android-phone-CdmaCallWaitingSetting$AppStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string/jumbo v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_3

    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_9

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0d036c

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->onCreateMultiSIM()V

    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "button_cdma_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "button_cdma_cw_dis_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v7}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d071b

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v7}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d071b

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mContactListIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mContactListIntent:Landroid/content/Intent;

    const-string/jumbo v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eqz p1, :cond_6

    const-string/jumbo v2, "app_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const-string/jumbo v2, "button_cdma_cw_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    const-string/jumbo v2, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_7

    :cond_3
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    :cond_5
    return-void

    :cond_6
    iput-boolean v5, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    iput-boolean v4, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0d0394

    const/4 v6, 0x1

    const/16 v5, 0x64

    if-eq p1, v5, :cond_0

    const/16 v5, 0x384

    if-ne p1, v5, :cond_1

    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d038c

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    return-object v2

    :sswitch_0
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v5, 0x7f0d038f

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v5, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v6, 0x258

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    const v5, 0x7f0d038e

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x12c

    if-eq p1, v5, :cond_2

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_3

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d038d

    sparse-switch p1, :sswitch_data_1

    const v3, 0x7f0d0392

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-object v1

    :cond_3
    const/16 v5, 0x320

    if-eq p1, v5, :cond_2

    const/4 v5, 0x0

    return-object v5

    :sswitch_2
    const v3, 0x7f0d0391

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :sswitch_3
    const v3, 0x7f0d0393

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v4, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v3, v4, :cond_0

    return-void

    :cond_0
    const/4 v3, -0x2

    if-ne p2, v3, :cond_1

    sget-object v3, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    return-void

    :cond_1
    instance-of v3, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_2

    move-object v0, p1

    const-string/jumbo v2, ""

    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "simSlot"

    sget v4, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v3, "simSlot"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "*74"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "*740"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v1, :cond_2

    :cond_1
    const/4 v1, -0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setDisplayMode(I)V

    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    :cond_2
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    return v3
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "button_cdma_cw_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    const-string/jumbo v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 5

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
