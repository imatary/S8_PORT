.class Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetPhoneState"


# instance fields
.field private mBatteryCharge:I

.field private mCallState:I

.field private mContext:Landroid/content/Context;

.field private mListening:Z

.field private mMicVolume:I

.field private mNumActive:I

.field private mNumHeld:I

.field private mNumber:Ljava/lang/String;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoam:I

.field private mService:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignal:I

.field private mSlcReady:Z

.field private mSpeakerVolume:I

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mType:I


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)V

    return-object v0
.end method

.method private startListenForPhoneState()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    :cond_0
    return-void
.end method

.method private stopListenForPhoneState()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    return-void
.end method

.method getBatteryCharge()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    return v0
.end method

.method getCallState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return v0
.end method

.method getMicVolume()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    return v0
.end method

.method getNumActiveCall()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return v0
.end method

.method getNumHeldCall()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return v0
.end method

.method getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method getRoam()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    return v0
.end method

.method getService()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return v0
.end method

.method getSignal()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method getSpeakerVolume()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    return v0
.end method

.method getState()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    return v0
.end method

.method isInCall()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method listenForPhoneState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->startListenForPhoneState()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    goto :goto_0
.end method

.method sendDeviceDataStateChanged(I)V
    .locals 3

    const-string/jumbo v1, "HeadsetPhoneState"

    const-string/jumbo v2, "sendDeviceDataStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(II)V

    :cond_0
    return-void
.end method

.method sendDeviceStateChanged()V
    .locals 6

    iget v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    :goto_0
    const-string/jumbo v2, "HeadsetPhoneState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDeviceStateChanged. mService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mRoam="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mBatteryCharge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    iget v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/bluetooth/hfp/HeadsetDeviceState;-><init>(IIII)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBatteryCharge(I)V
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    :cond_0
    return-void
.end method

.method setCallState(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return-void
.end method

.method setMicVolume(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    return-void
.end method

.method setNumActiveCall(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return-void
.end method

.method setNumHeldCall(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return-void
.end method

.method setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumber:Ljava/lang/String;

    return-void
.end method

.method setRoam(I)V
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    :cond_0
    return-void
.end method

.method setService(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return-void
.end method

.method setSignal(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return-void
.end method

.method setSpeakerVolume(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    return-void
.end method

.method setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mType:I

    return-void
.end method
