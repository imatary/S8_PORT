.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;,
        Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;,
        Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;,
        Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;,
        Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;,
        Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;,
        Lcom/android/phone/PhoneInterfaceManager$UiccOperation;,
        Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    }
.end annotation


# static fields
.field public static final SALES_CODE:Ljava/lang/String;

.field private static mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

.field private static messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

.field private static sInstance:Lcom/android/phone/PhoneInterfaceManager;

.field private static smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;


# instance fields
.field carrierPrivilegeConfigs:Landroid/content/SharedPreferences;

.field mApp:Lcom/android/phone/PhoneGlobals;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mGetHandsetInfo:Ljava/lang/reflect/Method;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mTelephonySharedPreferences:Landroid/content/SharedPreferences;

.field private final mUpKnightLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field private op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

.field private scCmdResult:[B


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getUiccCardFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/phone/PhoneInterfaceManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/PhoneInterfaceManager;I[BLandroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw(I[BLandroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->SALES_CODE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$UiccOperation;)V

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mUpKnightLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "persona"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "appops"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;)V

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->carrierPrivilegeConfigs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    :try_start_0
    const-class v1, Lcom/android/internal/telephony/Phone;

    const-string/jumbo v2, "getHandsetInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private answerRingingCallInternal(I)V
    .locals 7

    const-string/jumbo v5, "answerRingingCallInternal..."

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternalMultiSim()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getActivePhoneTypeForSlot(I)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/services/utils/SecTelecomAdapter;->answerRingingCallInUI()V

    :goto_3
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3

    :cond_6
    return-void
.end method

.method private answerRingingCallInternalMultiSim()V
    .locals 6

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    return-void

    :cond_4
    return-void
.end method

.method private canReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {v4, v6, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v5, "android.permission.READ_SMS"

    invoke-virtual {v4, v5, p2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0xe

    invoke-virtual {v4, v6, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Neither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "android.permission.READ_SMS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, p2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, p2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x33

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    return v5
.end method

.method private checkCallerInteractAcrossUsersFull()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static checkIfCallerIsSelfOrForegroundUser()Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-ne v7, v8, :cond_0

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return v3

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enforceCallPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceCanReadPhoneState(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceCarrierPrivilege(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getCarrierPrivilegeStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "No Carrier Privilege."

    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "No Carrier Privilege."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceFineOrCoarseLocationPermission(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceModifyPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceModifyPermissionOrCarrierPrivilege(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "No modify permission, check carrier privilege next."

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege(I)V

    return-void
.end method

.method private enforcePrivilegedPhoneStatePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getAllSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getAppNameByPID(I)Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v4

    :cond_1
    const-string/jumbo v4, ""

    return-object v4
.end method

.method private getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    return-object v1

    :catch_0
    move-exception v0

    sput-object v3, Lcom/android/phone/PhoneInterfaceManager;->mMobileInfo:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
.end method

.method private getDefaultSubscription()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method private getIccId(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "getIccId: No UICC"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "getIccId: ICC ID is null or empty."

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    return-object v3

    :cond_1
    return-object v1
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 3

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    return-object v2
.end method

.method private getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    .locals 2

    iget-object v0, p1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferredVoiceSubscription()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v0

    return v0
.end method

.method private getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string/jumbo v0, "ril.currentplmn"

    const-string/jumbo v1, "domestic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oversea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getServiceUserAgent()C
    .locals 3

    const/16 v0, 0x30

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->isWIFIConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x44

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x36

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x42

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x43

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x38

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x39

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x36

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x46

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSlotForDefaultSubscription()I
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private getUiccCardFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;
    .locals 4

    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    :goto_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeOemRilRequestRaw(I[BLandroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method private isInCallUIDisplay()Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v5, 0x7fffffff

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "com.android.incallui.service.IncomingPopupService"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    return v7

    :catch_0
    move-exception v1

    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isInCallUIDisplay service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.android.incallui.InCallActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    return v5

    :catch_1
    move-exception v1

    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isInCallUIDisplay activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private isRadioOnForSubscriber(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isWIFIConnected()Z
    .locals 2

    const-string/jumbo v1, "gsm.wifiConnected.active"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private publish()V
    .locals 1

    const-string/jumbo v0, "phone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "This method will deadlock if called from the main thread."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v2, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3, p1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :try_start_1
    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private sendRequestAsync(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private shutdownRadioUsingPhoneId(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->shutdownRadio()V

    :cond_0
    return-void
.end method


# virtual methods
.method public IsDomesticRoaming()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    return v0
.end method

.method public IsInternationalRoaming()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    return v0
.end method

.method public NSRI_requestProc(I[B)[B
    .locals 4

    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRIStart()V

    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[NSRI_Messenger] NSRI_requestProc() ==START==  datalen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    invoke-virtual {v0, p2, p1}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->commonNSRIRequestProcCmd([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[NSRI_Messenger] NSRI_requestProc()  ==END== retResult.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public SimSlotActivation(Z)V
    .locals 0

    return-void
.end method

.method public SimSlotOnOff(I)V
    .locals 0

    return-void
.end method

.method public answerRingingCall()V
    .locals 1

    const-string/jumbo v0, "answerRingingCall..."

    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallForSubscriber(I)V

    return-void
.end method

.method public answerRingingCallAndHangUpActive()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    const-string/jumbo v4, "answerRingingCallAndHangUpActive"

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne v2, v5, :cond_1

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_2

    if-ne v2, v5, :cond_2

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    :cond_2
    if-eq v2, v6, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-eq v2, v4, :cond_3

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method public answerRingingCallForSubscriber(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->isInCallUIDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->answerRingingCallInUI()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    invoke-direct {p0, v2, v3, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "calculateAkaResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "UICC operation start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->calculateAka([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v12, 0x0

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getAid()Ljava/lang/String;

    move-result-object v12

    :cond_0
    const/16 v18, 0x0

    const/4 v13, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/android/phone/PhoneInterfaceManager;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DD10"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "10"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v16, v3, 0x2

    const-string/jumbo v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " calculateGbaBootstrappingResponse():request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v5

    add-int/lit8 v10, v16, -0x1

    const/4 v6, 0x2

    const/16 v7, 0x88

    const/4 v8, 0x0

    const/16 v9, 0x84

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/phone/PhoneInterfaceManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/phone/PhoneInterfaceManager;->iccCloseLogicalChannel(II)Z

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v21

    const-string/jumbo v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calculateGbaBootstrappingResponse:result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_3

    const/4 v3, 0x0

    aget-byte v3, v21, v3

    const/16 v5, -0x25

    if-eq v3, v5, :cond_1

    const/4 v3, 0x0

    aget-byte v3, v21, v3

    if-nez v3, :cond_3

    :cond_1
    const/4 v3, 0x1

    aget-byte v19, v21, v3

    if-lez v19, :cond_2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_2
    :goto_0
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "res"

    move-object/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v3, "auts"

    invoke-virtual {v15, v3, v13}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v3, "PhoneInterfaceManager"

    const-string/jumbo v5, "calculateGbaBootstrappingResponse()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    :cond_3
    if-eqz v21, :cond_2

    const/4 v3, 0x0

    aget-byte v3, v21, v3

    const/16 v5, -0x24

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    aget-byte v14, v21, v3

    if-lez v14, :cond_2

    new-array v13, v14, [B

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v3, v13, v5, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public calculateNafExternalKey([B)[B
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v12, 0x0

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getAid()Ljava/lang/String;

    move-result-object v12

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/android/phone/PhoneInterfaceManager;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DE"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    const-string/jumbo v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " calculateNafExternalKey():request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x88

    const/4 v8, 0x0

    const/16 v9, 0x84

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/phone/PhoneInterfaceManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v15}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/phone/PhoneInterfaceManager;->iccCloseLogicalChannel(II)Z

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v18

    const-string/jumbo v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " calculateNafExternalKey(): result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    if-eqz v18, :cond_1

    const/4 v3, 0x0

    aget-byte v3, v18, v3

    const/16 v5, -0x25

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    aget-byte v17, v18, v3

    if-lez v17, :cond_1

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    return-object v19
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getPreferredVoiceSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0xd

    invoke-virtual {v6, v8, v7, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, p1, :cond_2

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v6, "subscription"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public canChangeDtmfToneLength()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "dtmf_type_enabled_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "checkCarrierPrivilegesForPackage: No UICC"

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_3
    return v2
.end method

.method public checkNSRIUSIMstate_int()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    const-string/jumbo v1, "PhoneInterfaceManager"

    const-string/jumbo v2, "[NSRI_SMS] create "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->start()V

    :cond_0
    const-string/jumbo v1, "PhoneInterfaceManager"

    const-string/jumbo v2, "[NSRI_SMS] checkNSRIUsimCmd() ==START==  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->checkNSRIUsimCmd()I

    move-result v0

    return v0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getPreferredVoiceSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->dialForSubscriber(ILjava/lang/String;)V

    return-void
.end method

.method public dialForSubscriber(ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public disableDataConnectivity()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3
.end method

.method public disableLocationUpdates()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->disableLocationUpdatesForSubscriber(I)V

    return-void
.end method

.method public disableLocationUpdatesForSubscriber(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.CONTROL_LOCATION_UPDATES"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    :cond_0
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    return v3

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public enableLocationUpdates()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->enableLocationUpdatesForSubscriber(I)V

    return-void
.end method

.method public enableLocationUpdatesForSubscriber(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "android.permission.CONTROL_LOCATION_UPDATES"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    :cond_0
    return-void
.end method

.method public enableVideoCalling(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->setVtSetting(Landroid/content/Context;Z)V

    return-void
.end method

.method public endCall()Z
    .locals 1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getMultiSimForegroundPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->endCallForSubscriber(I)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->endCallForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public endCallForSubscriber(I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "endCallForSubscriber : Uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Pid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Package name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getAppNameByPID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public factoryReset(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceConnectivityInternalPermission()V

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_network_reset"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "factoryReset: DISALLOW_NETWORK_RESET !!!"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_mobile_networks"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v2, "factoryReset: NOT  DISALLOW_CONFIG_MOBILE_NETWORKS !!!"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->isManualSelection()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->setNetworkSelectionModeAutomatic(I)V

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "VALUE_OF_CURRENT_SELECTION_MODE"

    const-string/jumbo v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    :cond_3
    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-virtual {p0, p1, v2}, Lcom/android/phone/PhoneInterfaceManager;->setPreferredNetworkType(II)Z

    :cond_4
    const-string/jumbo v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "feature_hktw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/phone/PhoneInterfaceManager;->setDataEnabled(IZ)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/telephony/SubscriptionManager;->setDataRoaming(II)I

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    const-string/jumbo v2, "feature_att"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voicecall_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "international_voicecall_type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    const-string/jumbo v2, "remove_mobile_networks_kor_data_network_mode"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lte_mode_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_8
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v2}, Lcom/android/phone/PhoneInterfaceManager;->setDataEnabled(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getActiveFgCallState()Z
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "PhoneInterfaceManager"

    const-string/jumbo v2, "ForegroundCall is exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getActivePhoneType()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getSlotForDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getActivePhoneTypeForSlot(I)I

    move-result v0

    return v0
.end method

.method public getActivePhoneTypeForSlot(I)I
    .locals 2

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    return v1
.end method

.method public getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "getAllCellInfo"

    invoke-direct {p0, v4}, Lcom/android/phone/PhoneInterfaceManager;->enforceFineOrCoarseLocationPermission(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v3, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return-object v6

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->checkCallerInteractAcrossUsersFull()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    return-object v6
.end method

.method public getAtr(I)[B
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    const-string/jumbo v3, "getAtrUsingSubId"

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->enforceCanReadPhoneState(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "PhoneInterfaceManager"

    const-string/jumbo v4, "SIM_GET_ATR "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x23

    invoke-direct {p0, v4, v5, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SIM_GET_ATR resp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PhoneInterfaceManager"

    const-string/jumbo v4, "Invalid format of the response string"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCalculatedPreferredNetworkType(Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v0, "getCalculatedPreferredNetworkType"

    invoke-direct {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getCallState()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getSlotForDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCallStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getCallStateForSlot(I)I
    .locals 2

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v1

    goto :goto_0
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    return-object v3

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "getCarrierPackageNamesForIntent: No UICC"

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    return-object v3

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getCarrierPrivilegeStatus(I)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "getCarrierPrivilegeStatus: Invalid subId"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "getCarrierPrivilegeStatus: No UICC"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v2

    return v2
.end method

.method public getCdmaEriIconIndex(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    const-string/jumbo v1, "getCdmaEriIconIndexForSubscriber"

    invoke-direct {p0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v1

    return v1

    :cond_1
    return v2
.end method

.method public getCdmaEriIconMode(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    const-string/jumbo v1, "getCdmaEriIconModeForSubscriber"

    invoke-direct {p0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v1

    return v1

    :cond_1
    return v2
.end method

.method public getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "getCdmaEriIconTextForSubscriber"

    invoke-direct {p0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v2
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method public getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "getCellLocation"

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->enforceFineOrCoarseLocationPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v4, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "getCellLocation: returning null; mode != allowed"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-object v5

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->checkCallerInteractAcrossUsersFull()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    return-object v0

    :cond_2
    return-object v5
.end method

.method public getCellLocationBySubId(I)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CellNetworkScanResult;

    return-object v0
.end method

.method public getCurrentUATI()[B
    .locals 6

    const-string/jumbo v3, "PhoneInterfaceManager"

    const-string/jumbo v4, "getCurrentUATI()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v3

    const/16 v4, 0xc

    const/16 v5, 0x17

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getDataEnabled(I)Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v5, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabled()Z

    move-result v3

    return v3

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public getDataNetworkType(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "getDataNetworkTypeForSubscriber"

    invoke-direct {p0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    return v1

    :cond_1
    return v2
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledUsingSubID(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getDataServiceStateUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getDataServiceStateUsingSubId(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    return v1
.end method

.method public getDataStateSimSlot(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    return v0
.end method

.method public getDefaultSim()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "getDeviceId"

    invoke-direct {p0, p1, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v2
.end method

.method public getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "getDeviceSoftwareVersionForSlot"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDeviceUAField()Ljava/lang/String;
    .locals 33

    const/16 v24, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v15, ""

    const-string/jumbo v14, ""

    const/16 v28, 0x0

    const/4 v10, 0x0

    const/16 v25, 0x0

    const/16 v30, 0xa

    move/from16 v0, v30

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v30, "010"

    const/16 v31, 0x0

    aput-object v30, v3, v31

    const-string/jumbo v30, "SKT"

    const/16 v31, 0x1

    aput-object v30, v3, v31

    const-string/jumbo v30, "010"

    const/16 v31, 0x2

    aput-object v30, v3, v31

    const-string/jumbo v30, "010"

    const/16 v31, 0x3

    aput-object v30, v3, v31

    const-string/jumbo v30, "010"

    const/16 v31, 0x4

    aput-object v30, v3, v31

    const-string/jumbo v30, "010"

    const/16 v31, 0x5

    aput-object v30, v3, v31

    const-string/jumbo v30, "KTF"

    const/16 v31, 0x6

    aput-object v30, v3, v31

    const-string/jumbo v30, "STI"

    const/16 v31, 0x7

    aput-object v30, v3, v31

    const-string/jumbo v30, "HSP"

    const/16 v31, 0x8

    aput-object v30, v3, v31

    const-string/jumbo v30, "LGT"

    const/16 v31, 0x9

    aput-object v30, v3, v31

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    const-string/jumbo v30, "SKC"

    sget-object v31, Lcom/android/phone/PhoneInterfaceManager;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_0

    const/16 v30, 0x0

    return-object v30

    :cond_0
    :try_start_0
    new-instance v18, Ljava/io/File;

    const-string/jumbo v30, "/system/skt/ua/uafield.dat"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v26, Ljava/io/BufferedReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string/jumbo v30, "PhoneInterfaceManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "ua -"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    if-nez v29, :cond_1

    const/16 v30, 0x0

    return-object v30

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object/from16 v25, v26

    move-object v10, v11

    move-object/from16 v28, v29

    :cond_2
    const-string/jumbo v30, "oversea"

    const-string/jumbo v31, "ril.currentplmn"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v30, "gsm.operator.numeric"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneInterfaceManager;->getServiceUserAgent()C

    move-result v21

    const/16 v30, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_4

    const/16 v30, 0x0

    return-object v30

    :catch_1
    move-exception v8

    :goto_1
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_2
    if-nez v28, :cond_2

    const/16 v30, 0x0

    return-object v30

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v30

    :goto_3
    :try_start_7
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_4
    if-nez v28, :cond_3

    const/16 v30, 0x0

    return-object v30

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_3
    throw v30

    :cond_4
    invoke-static {v5}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v6, :cond_5

    const/16 v30, 0x0

    return-object v30

    :cond_5
    :try_start_8
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    const v30, 0xff00

    and-int v30, v30, v7

    shr-int/lit8 v30, v30, 0x8

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v22, v0

    shr-int/lit8 v30, v7, 0x10

    and-int/lit8 v30, v30, 0x1f

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v27, v0

    shr-int/lit8 v30, v7, 0x15

    and-int/lit8 v30, v30, 0x7f

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v17, v0

    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v30

    add-int/lit8 v30, v30, -0x30

    aget-object v24, v3, v30

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0xb

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :goto_5
    const/16 v30, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "0"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v19, 0x0

    const/16 v30, 0x46

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, ";ECI;"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ";"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_6
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v24, :cond_6

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/phone/PhoneInterfaceManager;->getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v30, "PhoneInterfaceManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "getDeviceUAField():"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    if-nez v12, :cond_8

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "0"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_a
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v31, v22, 0xa

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    rem-int/lit8 v31, v22, 0xa

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, ";"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ";"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ";"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ";"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ";"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v19

    goto/16 :goto_6

    :catch_4
    move-exception v8

    const-string/jumbo v30, "PhoneInterfaceManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "No Sim or No MSISDN -"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v30, 0x0

    return-object v30

    :catchall_1
    move-exception v30

    move-object v10, v11

    goto/16 :goto_3

    :catchall_2
    move-exception v30

    move-object/from16 v25, v26

    move-object v10, v11

    goto/16 :goto_3

    :catchall_3
    move-exception v30

    move-object/from16 v25, v26

    move-object v10, v11

    move-object/from16 v28, v29

    goto/16 :goto_3

    :catch_5
    move-exception v8

    move-object v10, v11

    goto/16 :goto_1

    :catch_6
    move-exception v8

    move-object/from16 v25, v26

    move-object v10, v11

    goto/16 :goto_1

    :catch_7
    move-exception v8

    move-object/from16 v25, v26

    move-object v10, v11

    move-object/from16 v28, v29

    goto/16 :goto_1
.end method

.method public getDisable2g()I
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x40

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    aget v1, v0, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getEuimid()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "getEuimid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getEuimid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeliCaUimLockStatus(I)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "PhoneInterfaceManager"

    const-string/jumbo v2, "call getFeliCaUimLockStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IccCard;->getFeliCaUimLockStatus(I)I

    move-result v0

    const-string/jumbo v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result getFeliCaUimLockStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mGetHandsetInfo:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getImei : Ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "getImeiForSlot"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const-string/jumbo v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getIpAddressFromLinkProp nwkType :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "MOBILE"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getIpAddressFromLinkProp: inetAddress IP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    const-string/jumbo v6, "0.0.0.0.0.0.0.0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v2

    const-string/jumbo v6, "PhoneInterfaceManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v9
.end method

.method public getLgt3GDataStatus(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mobile_data"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "2"

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "0"

    return-object v2
.end method

.method public getLgtOzStartPage()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lgt_oz_startpage"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "getLine1AlphaTagForDisplay"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "carrier_alphtag_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v4
.end method

.method public getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "getLine1NumberForDisplay"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "carrier_number_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v4
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    return-object v11

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, -0x1

    if-ne v1, v10, :cond_3

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v6

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_3
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    if-ne v10, v1, :cond_4

    move-object v2, v3

    :cond_5
    if-nez v2, :cond_2

    return-object v11

    :cond_6
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    :cond_7
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v8}, Lcom/android/internal/telephony/MccTable;->getLocaleFromMcc(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_8
    return-object v11
.end method

.method public getLteCellInfo()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "LUC"

    sget-object v6, Lcom/android/phone/PhoneInterfaceManager;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return-object v8

    :cond_0
    const-string/jumbo v5, "PhoneInterfaceManager"

    const-string/jumbo v6, "getLteCellInfo() "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v6, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v8

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v6, v8}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3
    instance-of v5, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    goto :goto_1

    :cond_4
    instance-of v5, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getLteCellId()I

    move-result v1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getLteTac()I

    move-result v4

    goto :goto_1
.end method

.method public getLteOnCdmaMode(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    const-string/jumbo v1, "getLteOnCdmaModeForSubscriber"

    invoke-direct {p0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v1

    return v1
.end method

.method public getMeid()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMEID : Ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 26

    const-string/jumbo v23, "getMergedSubscriberIds"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x0

    return-object v23

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v17

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v19

    const/16 v23, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget v18, v19, v23

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v23, "carrier_subscriber_"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const-string/jumbo v23, "carrier_subscriber_"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "carrier_number_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v23, 0x0

    return-object v23

    :catchall_0
    move-exception v23

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    :cond_4
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v23, "carrier_number_"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const-string/jumbo v23, "carrier_number_"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "carrier_subscriber_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v16
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforcePrivilegedPhoneStatePermission()V

    const-string/jumbo v3, "PhoneInterfaceManager"

    const-string/jumbo v4, "getMobileQualityInformation enforcePrivilegedPhoneStatePermission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v3

    const/16 v4, 0x16

    const/16 v5, 0x25

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PhoneInterfaceManager"

    const-string/jumbo v4, "getMobileQualityInformation Good Job"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    const-string/jumbo v3, "PhoneInterfaceManager"

    const-string/jumbo v4, "getMobileQualityInformation enforceReadPermission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMultiSimForegroundPhoneId()I
    .locals 1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimForegroundPhoneId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiSimLastRejectIncomingCallPhoneId()I
    .locals 1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v5, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v4, v6, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return-object v7

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->checkCallerInteractAcrossUsersFull()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x0

    const/4 v4, -0x1

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v1

    :catch_1
    move-exception v2

    const-string/jumbo v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNeighboringCellInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-object v7
.end method

.method public getNetworkType()I
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "getNetworkTypeForSubscriber"

    invoke-direct {p0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    return v1

    :cond_1
    return v2
.end method

.method public getPackagesWithCarrierPrivileges()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-ge v1, v7, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->hasCarrierPrivilegeRules()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v3, :cond_2

    const v7, 0x8240

    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_3

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    return-object v6
.end method

.method public getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "getPcscfAddress"

    invoke-direct {p0, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneServiceState()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(I)I
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x15

    invoke-direct {p0, v3, v4, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    aget v0, v1, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRadioAccessFamily(ILjava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "getRadioAccessFamily"

    invoke-direct {p0, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ProxyController;->getRadioAccessFamily(I)I

    move-result v0

    return v0
.end method

.method public getSdnAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSdnAvailable()Z

    move-result v0

    return v0
.end method

.method public getServiceState()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getServiceStateUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "getServiceStateForSubscriber"

    invoke-direct {p0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    return-object v1
.end method

.method public getServiceStateUsingSubId(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getSimPinRetry()I
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "getSimPinRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getSimPinRetryForSubscriber(I)I
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "getSimPinRetryForSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getSimPukRetry()I
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "getSimPukRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result v0

    return v0
.end method

.method public getSimPukRetryForSubscriber(I)I
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "getSimPukRetryForSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result v0

    return v0
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 1

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v0

    return v0
.end method

.method public getTetherApnRequired()I
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tether_dun_required"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->hasMatchedTetherApnSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v3, "getTimeInfo() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public getUaUap(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v5

    const/4 v2, 0x0

    invoke-direct {p0, v5}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gid1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CscParser;->getInstance(Ljava/lang/String;)Lcom/android/phone/CscParser;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/android/phone/CscParser;->getUaUap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getGroupIdLevel1 phone is null for Subscription:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getVoiceMessageCountForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountForSubscriber(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "getDataNetworkTypeForSubscriber"

    invoke-direct {p0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    return v1

    :cond_1
    return v2
.end method

.method public getVoicePhoneServiceState()Landroid/telephony/ServiceState;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getVoicePhoneServiceStateUsingSubId(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getVoicePhoneServiceStateUsingSubId(I)Landroid/telephony/ServiceState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getPhoneForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getRingtoneUri(Lcom/android/internal/telephony/Phone;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getWipiSysInfo()Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v3, "getWipiSysInfo() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v2

    const/16 v3, 0x16

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardUsingSlotId(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCardUsingSlotId(I)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v1

    aget v2, v1, v3

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v2

    return v2

    :cond_0
    return v3
.end method

.method public iccCloseLogicalChannel(II)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    if-gez p2, :cond_0

    return v1

    :cond_0
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    const-string/jumbo v2, ""

    invoke-direct {v1, p2, v2}, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-direct {p0, v3, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    const/4 v1, -0x1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v10, 0x0

    const/4 v8, 0x2

    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v0, v0

    add-int/lit8 v8, v0, 0x2

    new-array v10, v8, [B

    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    iget-object v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v10, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    add-int/lit8 v0, v8, -0x1

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    add-int/lit8 v0, v8, -0x2

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    return-object v10

    :cond_0
    new-array v10, v8, [B

    goto :goto_0
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p2}, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {p0, v3, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/IccOpenLogicalChannelResponse;

    return-object v0
.end method

.method public iccOpenLogicalChannelWithP2(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;-><init>(ILjava/lang/String;B)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-direct {p0, v3, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/IccOpenLogicalChannelResponse;

    return-object v0
.end method

.method public iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    new-instance v9, Ljava/lang/StringBuffer;

    iget v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    if-gez p2, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    new-instance v9, Ljava/lang/StringBuffer;

    iget v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v0

    return v0
.end method

.method public invokeOemRilRequestRawForSubscriber(I[B[B)I
    .locals 8

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1b

    invoke-direct {p0, v6, p2, v5}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    array-length v5, v2

    array-length v6, p3

    if-le v5, v6, :cond_0

    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Buffer to copy response too small: Response length is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "bytes. Buffer Size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, p3, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v4, v2

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v1, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_1

    mul-int/lit8 v4, v4, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "PhoneInterfaceManager"

    const-string/jumbo v6, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v4

    if-lez v4, :cond_1

    mul-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method public isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApnTypeAvailableUsingSubId(Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isDualBTConnection()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v0, v1, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDualBTConnection() bluetoothHeadset is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    if-nez v0, :cond_1

    return v2

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isDualHfConnected()Z

    move-result v1

    return v1
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isIdle(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIdleForSubscriber(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "isIdleForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public isImsCall()Z
    .locals 4

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    return v3

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public isImsRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    return v0
.end method

.method public isOffhook(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isOffhookForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOffhookForSubscriber(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "isOffhookForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public isRadioOn(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOnForSubscriber(ILjava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "isRadioOnForSubscriber"

    invoke-direct {p0, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public isRinging(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRingingForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRingingForSubscriber(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "isRingingForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public isSimFDNEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->isSimFDNEnabledForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public isSimFDNEnabledForSubscriber(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FdnEnabled?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method public isTtyModeSupported()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isTtySupported()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVideoCall()Z
    .locals 14

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v11

    const-string/jumbo v12, "callmodifystatus"

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v11

    const-string/jumbo v12, "callmodifystatus"

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-nez v7, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v11

    const-string/jumbo v12, "callmodifystatus"

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    const-string/jumbo v11, "modify_call_us"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v11, "cms_moprogress"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "cms_mtprogress"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    const/4 v6, 0x1

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v11

    if-eqz v11, :cond_9

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/services/telephony/TelephonyConnection;->isSessionModifying()Z

    move-result v4

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->isSessionModifying()Z

    move-result v1

    :cond_6
    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConnection;->isSessionModifying()Z

    move-result v8

    :cond_7
    if-nez v4, :cond_8

    if-nez v1, :cond_8

    if-eqz v8, :cond_9

    :cond_8
    const/4 v6, 0x1

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-nez v11, :cond_d

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-nez v11, :cond_d

    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-nez v11, :cond_d

    :cond_c
    if-eqz v6, :cond_e

    :cond_d
    return v13

    :cond_e
    const-string/jumbo v11, "us_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string/jumbo v11, "ee_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string/jumbo v11, "canada_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_f
    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v11, v12, :cond_10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    if-eqz v11, :cond_10

    return v13

    :cond_10
    const/4 v11, 0x0

    return v11
.end method

.method public isVideoCallingEnabled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "isVideoCallingEnabled"

    invoke-direct {p0, p1, v1}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public isVideoTelephonyAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v0

    return v0
.end method

.method public isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getPhoneForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->isVibrationEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    return v1
.end method

.method public isVolteAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiCallingAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method public isWorldPhone()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "world_phone_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public messengerNSRIStart()V
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "[NSRI_Messenger] messengerNSRIStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->start()V

    :cond_0
    return-void
.end method

.method public needMobileRadioShutdown()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Phones are shutdown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->logv(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "NAME"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "NUMBER"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "LABEL"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "DATE"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.server.telecom.action.NOTIFY_MISSED_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.server.telecom.extra.NOTIFY_MISSED_CALL_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothVoIPService()Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyVoIPCallStateChangeIntoBT() bluetoothVoIP is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;->handleVoipCallStateChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "RemoteException - handleVoipCallStateChange() cannot be accessed"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nvResetConfig(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    const/16 v1, 0x11

    invoke-direct {p0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public prepareEmergencyCall(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getInstance()Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->prepareEmergencyCall(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    const/16 v2, 0x3a

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ModemActivityInfo;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "controller_activity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x19

    invoke-direct {p0, v3, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v2, v2, 0x8

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public sendRequestRawToRIL([BLandroid/os/Message;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    const/4 v0, 0x0

    return v0
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 10

    const/16 v7, 0x6f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, -0x4

    packed-switch p3, :pswitch_data_0

    const-string/jumbo v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendRequestToRIL: unexpected message code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v6, "ICCPCSC_POWERUP"

    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/16 v6, 0x25

    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    array-length v6, v0

    if-ne v6, v9, :cond_2

    aget-byte v6, v0, v8

    if-ne v6, v7, :cond_2

    :cond_1
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "sendRequestToRIL: atrInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x6

    goto :goto_0

    :cond_2
    aget-byte v6, v0, v8

    add-int/lit8 v6, v6, 0x2

    invoke-static {v0, v8, p2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_2
    const-string/jumbo v6, "ICCPCSC_CONNECT"

    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/16 v6, 0x27

    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_3

    array-length v6, v1

    if-ne v6, v9, :cond_4

    aget-byte v6, v1, v8

    if-ne v6, v7, :cond_4

    :cond_3
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "sendRequestToRIL: response is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "LUC"

    sget-object v7, Lcom/android/phone/PhoneInterfaceManager;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "90"

    aget-byte v7, v1, v8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "0"

    aget-byte v7, v1, v9

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, "90"

    aget-byte v7, v1, v9

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "0"

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-byte v4, v1, v8

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v6, "ICCPCSC_DISCONNECT"

    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v4, -0x3

    const/16 v6, 0x29

    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_6

    array-length v6, v2

    if-ne v6, v9, :cond_7

    aget-byte v6, v2, v8

    if-ne v6, v7, :cond_7

    :cond_6
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "sendRequestToRIL: response is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v6, "90"

    aget-byte v7, v2, v8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "0"

    aget-byte v7, v2, v9

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v6, "ICCPCSC_TRANSMIT"

    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/16 v6, 0x2b

    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_8

    array-length v6, v5

    if-ne v6, v9, :cond_9

    aget-byte v6, v5, v8

    if-ne v6, v7, :cond_9

    :cond_8
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "sendRequestToRIL: response is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x5

    goto/16 :goto_0

    :cond_9
    array-length v6, v5

    invoke-static {v5, v8, p2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v4, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAirplaneMode(Ljava/lang/String;Z)I
    .locals 6

    const/4 v2, 0x0

    const/4 v4, -0x1

    const-string/jumbo v1, "SKC"

    sget-object v3, Lcom/android/phone/PhoneInterfaceManager;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    const-string/jumbo v1, "#*123987*#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAirplaneMode: mode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const-wide/16 v4, 0x3e8

    const/16 v3, 0x37

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return v2

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public setBTUserWantsAudioOn(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v0, v1, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBTUserWantsAudioOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") bluetoothHeadset is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    goto :goto_1
.end method

.method public setBTUserWantsSwitchAudio()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v0, v1, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBTUserWantsSwitchAudio() bluetoothHeadset is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->switchAudio()Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    return-void
.end method

.method public setDataEnabled(IZ)V
    .locals 12

    const/4 v2, 0x1

    const/4 v0, 0x5

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    const-string/jumbo v1, "ril.datacross.slotid"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_2

    if-le v9, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataEnabled() for each phones : datacross"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_3

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataEnabled: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_0

    const-string/jumbo v5, "Enabling Cellular Data"

    :goto_1
    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, p2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "Disabling Cellular Data"

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataEnabled: no phone for phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v11

    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_4

    const-string/jumbo v5, "Enabling Cellular Data"

    :goto_3
    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, p2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    const-string/jumbo v5, "Disabling Cellular Data"

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDataEnabled: no phone for subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setDisable2g(I)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public setDmCmd(I[B)[I
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v5, v10, [I

    const/4 v6, 0x0

    const-string/jumbo v10, "ro.debuggable"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    move v0, v8

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setDmCmd - code :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", data:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-object v5

    :cond_1
    move v0, v9

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x62

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    if-eqz v0, :cond_2

    const-string/jumbo v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "LOG_SET - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    aput v9, v5, v8

    aput v9, v5, v9

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    aput v8, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x63

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :goto_3
    if-eqz v0, :cond_4

    const-string/jumbo v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "EVENT_SET - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    aput v9, v5, v8

    aput v9, v5, v9

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    aput v8, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    goto/16 :goto_1

    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    :goto_4
    if-eqz v0, :cond_6

    const-string/jumbo v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "STATE_CHANGE_SET - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    aput v9, v5, v8

    aput v9, v5, v9

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    aput v8, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    goto/16 :goto_1

    :pswitch_3
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x65

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    :goto_5
    if-eqz v0, :cond_8

    const-string/jumbo v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MEM_SET - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string/jumbo v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    aput v9, v5, v8

    aput v9, v5, v9

    goto/16 :goto_1

    :catch_3
    move-exception v1

    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    aput v8, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    goto/16 :goto_1

    :pswitch_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v10

    const/16 v11, 0x16

    const/16 v12, 0x66

    invoke-virtual {v10, v11, v12, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v6

    :goto_6
    if-eqz v0, :cond_a

    const-string/jumbo v10, "DMLogService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MEM_CHECK - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :try_start_5
    const-string/jumbo v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    aput v10, v5, v11

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    aput v10, v5, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v2

    aput v8, v5, v8

    aput v8, v5, v9

    goto/16 :goto_1

    :catch_5
    move-exception v1

    const/4 v6, 0x0

    goto :goto_6

    :pswitch_5
    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager;->mUpKnightLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_6
    const-string/jumbo v8, "ril.dmlog.completed"

    const-string/jumbo v10, "0"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v4, 0x0

    :try_start_7
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCommToRILThread()Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    move-result-object v4

    const/16 v8, 0x16

    const/16 v10, 0x67

    invoke-virtual {v4, v8, v10, p2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->waitDmLogSync()V

    const/4 v8, 0x0

    const/4 v10, 0x1

    aput v8, v5, v10

    const/4 v8, 0x0

    const/4 v10, 0x0

    aput v8, v5, v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    if-eqz v0, :cond_b

    :try_start_8
    const-string/jumbo v8, "DMLogService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SAVE_LOG - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    monitor-exit v9

    goto/16 :goto_1

    :catch_6
    move-exception v1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    :try_start_9
    aput v8, v5, v10

    const/4 v8, 0x1

    const/4 v10, 0x0

    aput v8, v5, v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :pswitch_6
    :try_start_a
    new-instance v3, Ljava/io/File;

    const-string/jumbo v10, "/data/log/knightBuff.tmp"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_c

    const-string/jumbo v10, "DMLogService"

    const-string/jumbo v11, "knightBuff, log not exist! "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :goto_8
    aput v9, v5, v8

    aput v9, v5, v9

    goto/16 :goto_1

    :cond_c
    :try_start_b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_8

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v10, "DMLogService"

    const-string/jumbo v11, "DELETE_LOG failed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_7
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/telephony/Phone;->setDmCmdInfo(I[B)Z

    move-result v10

    if-eqz v10, :cond_d

    aput v9, v5, v8

    aput v9, v5, v9

    goto/16 :goto_1

    :cond_d
    aput v8, v5, v8

    aput v8, v5, v9

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public setEPSLOCI([B)V
    .locals 5

    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v3, "> setEPSLOCI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IccCard;->setEPSLOCI([B)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string/jumbo v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "< setEPSLOCI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "UICC operation start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->op:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    return-void
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege(I)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "carrier_alphtag_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "carrier_number_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "carrier_subscriber_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez p3, :cond_2

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v6, 0x1

    return v6

    :cond_1
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public setMultiSimForegroundPhoneId(I)V
    .locals 1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->setMultiSimForegroundPhoneId(I)V

    :cond_0
    return-void
.end method

.method public setMultiSimLastRejectIncomingCallPhoneId(I)V
    .locals 1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->setMultiSimLastRejectIncomingCallPhoneId(I)V

    :cond_0
    return-void
.end method

.method public setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/16 v6, 0x15

    const/4 v5, -0x1

    const-string/jumbo v3, "SKC"

    sget-object v4, Lcom/android/phone/PhoneInterfaceManager;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v5

    :cond_0
    const/4 v3, 0x3

    new-array v1, v3, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v3, "#*13795*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    if-le p3, v3, :cond_2

    :cond_1
    return v5

    :cond_2
    const-string/jumbo v3, "GSM"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_0
    aget-object v3, v1, v2

    aget v0, v3, p3

    if-ne v0, v5, :cond_6

    return v5

    :cond_3
    const-string/jumbo v3, "WCDMA"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "LTE"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x2

    goto :goto_0

    :cond_5
    return v5

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x35

    invoke-direct {p0, v4, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    nop

    :array_0
    .array-data 4
        0x14
        -0x1
        0xd
        0xc
        -0x1
        -0x1
        -0x1
        -0x1
        0xb
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x3
        0x2
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x15
        0x1b
        0x16
        0x27
        0x17
        -0x1
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1c
        -0x1
        -0x1
        -0x1
        0x1d
    .end array-data
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    return-void
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;

    invoke-direct {v0, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;-><init>(Lcom/android/internal/telephony/OperatorInfo;Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public setOperatorBrandOverride(ILjava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege(I)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Phone;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setPreferredNetworkType(II)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x17

    invoke-direct {p0, v3, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lte_mode_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public setRadio(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->setRadioForSubscriber(IZ)Z

    move-result v0

    return v0
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneInterfaceManager"

    const-string/jumbo v2, "setRadioCapability: Runtime Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRadioForSubscriber(IZ)Z
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_0
    if-eq v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOffForSubscriber(I)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRadioPower(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->setRadioPowerForSubscriber(IZ)Z

    move-result v0

    return v0
.end method

.method public setRadioPowerForSubscriber(IZ)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege(I)V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/Phone;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public setTransmitPower(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    const-string/jumbo v2, "ril.backoffstate"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public setUimRemoteLockStatus(I)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "PhoneInterfaceManager"

    const-string/jumbo v2, "call setUimRemoteLockStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IccCard;->setUimRemoteLockStatus(I)I

    move-result v0

    const-string/jumbo v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result setUimRemoteLockStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege(I)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x21

    invoke-direct {p0, v3, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public shutdownMobileRadios()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Shutting down Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->logv(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->shutdownRadioUsingPhoneId(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public silenceRinger()V
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "silenseRinger not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sms_NSRI_decryptsms(I[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->start()V

    :cond_0
    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[NSRI_SMS] sms_NSRI_decryptsms() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0, p2, p1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->smsNSRIDecryptCmd([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    return-object v0
.end method

.method public sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->start()V

    :cond_0
    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[NSRI_SMS] sms_NSRI_decryptsmsintxside() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  phonenumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0, p2, p3, p1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->smsNSRIDecryptTxCmd(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    return-object v0
.end method

.method public sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->start()V

    :cond_0
    const-string/jumbo v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[NSRI_SMS] sms_NSRI_encryptsms() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  phonenumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->smsNSRI:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v0, p2, p3, p1}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->smsNSRIEncryptCmd(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->scCmdResult:[B

    return-object v0
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 0

    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 0

    return-void
.end method

.method public startMobileQualityInformation()V
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "startMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startVoiceLessOtaProvisioning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "startVoiceLessOtaProvisioning"

    invoke-direct {p0, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 0

    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 0

    return-void
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "stopMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->start()V

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->checkPerso(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    invoke-virtual {v0, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public toggleRadioOnOff()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOffForSubscriber(I)V

    return-void
.end method

.method public toggleRadioOnOffForSubscriber(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnForSubscriber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateServiceLocation()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->updateServiceLocationForSubscriber(I)V

    return-void
.end method

.method public updateServiceLocationForSubscriber(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    return-void
.end method

.method public validateMsisdn()I
    .locals 2

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "validateMsisdn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->validateMsisdn()I

    move-result v0

    return v0
.end method
