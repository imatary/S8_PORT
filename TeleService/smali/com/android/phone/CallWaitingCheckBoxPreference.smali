.class public Lcom/android/phone/CallWaitingCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field private static checked:Z


# instance fields
.field private final DBG:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CallWaitingCheckBoxPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/CallWaitingCheckBoxPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->checked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->DBG:Z

    new-instance v0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;)V

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    iput-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSimId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    const/4 v0, 0x0

    const-string/jumbo v2, "not_support_ss_query"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellCSIM()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string/jumbo v2, "CallWaitingCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClick : isChecked() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v5, "volte_call_waiting"

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v2, "feature_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v6, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v2, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const-string/jumbo v2, "CallWaitingCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCallWaiting : serviceClass() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v6, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_1
.end method
