.class public Lcom/android/phone/CallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardEditPreference$1;,
        Lcom/android/phone/CallForwardEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static VIDEO_CFU_END_TIME:Ljava/lang/String;

.field private static VIDEO_CFU_START_TIME:Ljava/lang/String;

.field private static VOICE_CFU_END_TIME:Ljava/lang/String;

.field private static VOICE_CFU_START_TIME:Ljava/lang/String;


# instance fields
.field private bIsActivating:Z

.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field private mCFError:Z

.field private mCFU:Z

.field private mCallForward_kddi:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mEditEnd:Landroid/widget/Button;

.field private mEditStart:Landroid/widget/Button;

.field mEndTime:Landroid/text/format/Time;

.field private mFirstState_Voicemail:Z

.field private mForwardNumber:Ljava/lang/String;

.field private mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

.field private mProcessing:Z

.field private mSelect_kddi:Landroid/widget/RadioGroup;

.field private mSelectedButton:I

.field private mServiceClass:I

.field private mSimSlot:I

.field mStartTime:Landroid/text/format/Time;

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field private mTime:Landroid/widget/LinearLayout;

.field private mTimeEnd:Ljava/lang/String;

.field private mTimePicker:Landroid/app/Dialog;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mTimeStart:Ljava/lang/String;

.field private mTimeView:Landroid/widget/TextView;

.field private mUpdateSummaryWithNoQuery:Z

.field private mVoiceMail_kddi:Landroid/widget/RadioButton;

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_END_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_START_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/CallForwardEditPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CallForwardEditPreference;->mProcessing:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/phone/CallForwardEditPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mSelectedButton:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/phone/CallForwardEditPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/phone/CallForwardEditPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mSimSlot:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/phone/CallForwardEditPreference;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTimePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/phone/CallForwardEditPreference;)Landroid/app/TimePickerDialog$OnTimeSetListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mVoiceMail_kddi:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_END_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_START_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/CallForwardEditPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CallForwardEditPreference;->mCFU:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mCallForward_kddi:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/CallForwardEditPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mEditEnd:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mEditStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mForwardNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/CallForwardEditPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallForwardEditPreference;->mCFError:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/CallForwardEditPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallForwardEditPreference;->mCFU:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/CallForwardEditPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/CallForwardEditPreference;->mSelectedButton:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/CallForwardEditPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/phone/CallForwardEditPreference;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/phone/CallForwardEditPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallForwardEditPreference;->mUpdateSummaryWithNoQuery:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryTextKDDI()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "%s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    const-string/jumbo v0, "voice_cfu_start_time"

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_START_TIME:Ljava/lang/String;

    const-string/jumbo v0, "voice_cfu_end_time"

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_END_TIME:Ljava/lang/String;

    const-string/jumbo v0, "video_cfu_start_time"

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_START_TIME:Ljava/lang/String;

    const-string/jumbo v0, "video_cfu_end_time"

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_END_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/phone/CallForwardEditPreference;->mFirstState_Voicemail:Z

    new-instance v1, Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$MyHandler;)V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    iput-boolean v3, p0, Lcom/android/phone/CallForwardEditPreference;->mCFU:Z

    iput-boolean v3, p0, Lcom/android/phone/CallForwardEditPreference;->mCFError:Z

    iput-boolean v3, p0, Lcom/android/phone/CallForwardEditPreference;->mProcessing:Z

    iput-boolean v3, p0, Lcom/android/phone/CallForwardEditPreference;->mUpdateSummaryWithNoQuery:Z

    iput-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mContext:Landroid/content/Context;

    iput v3, p0, Lcom/android/phone/CallForwardEditPreference;->mSimSlot:I

    iput-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSelectedButton:I

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mEndTime:Landroid/text/format/Time;

    new-instance v1, Lcom/android/phone/CallForwardEditPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallForwardEditPreference$1;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->mContext:Landroid/content/Context;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0e0011

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const-string/jumbo v1, "volte_cmcc_cfu_time"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_START_TIME:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_END_TIME:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-nez v1, :cond_1

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_START_TIME:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_END_TIME:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    goto :goto_0
.end method

.method private doNotUpdateCFNRyKDDI()Z
    .locals 6

    const/4 v2, 0x1

    const-string/jumbo v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawTimeSeconds()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getTimeSeconds()I

    move-result v1

    const-string/jumbo v3, "CallForwardEditPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doNotUpdateCFNRyKDDI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",,, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",,, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-ne v1, v3, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCFInfoSBM()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCFInfoSBM. reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/phone/CallForwardEditPreference;->mProcessing:Z

    iput v4, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-boolean v0, p0, Lcom/android/phone/CallForwardEditPreference;->mCFError:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->mCFU:Z

    iput-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->mCFError:Z

    iput-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->mProcessing:Z

    iput v4, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v0, :pswitch_data_0

    iput-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->mCFU:Z

    iput-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->mProcessing:Z

    iput v4, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    :pswitch_0
    iput v3, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSummaryText()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v4, "CallForwardEditPreference"

    const-string/jumbo v5, "updateSummaryText"

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->mProcessing:Z

    if-eqz v4, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v4, "feature_sbm"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->mCFU:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->getCFInfoSBM()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    const-string/jumbo v4, "feature_sbm"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_3

    const-string/jumbo v4, "+81"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "CallForwardEditPreference"

    const-string/jumbo v5, "starts with +81, replace to 0"

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v4, "+81"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v4, v0, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v6, [Ljava/lang/String;

    aput-object v3, v2, v7

    iget v4, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0315

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d04d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0316

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateSummaryTextKDDI()V
    .locals 15

    const v14, 0x7f0d0bc8

    const v13, 0x7f0d0bbc

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v7, "CallForwardEditPreference"

    const-string/jumbo v8, "updateSummaryTextKDDI"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawTimeSeconds()I

    move-result v5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-string/jumbo v7, "ar"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "fa"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "ur"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u200f\u202d"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    new-array v6, v11, [Ljava/lang/String;

    aput-object v2, v6, v10

    sget-object v7, Lcom/android/phone/CallForwardEditPreference;->VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    :cond_2
    const-string/jumbo v7, "CallForwardEditPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSummaryTextKDDI reason :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-ne v7, v12, :cond_6

    iget v7, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v7, v11, :cond_3

    sget-object v7, Lcom/android/phone/CallForwardEditPreference;->VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_1
    const-string/jumbo v7, "CallForwardEditPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSummaryTextKDDI summaryOn :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v7, "CallForwardEditPreference"

    const-string/jumbo v8, "NullPointerException."

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    iget v7, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v7, v11, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d0315

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v7, v8, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d04d1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v7, v8, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d0316

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    const-string/jumbo v3, "CallForwardEditPreference"

    const-string/jumbo v6, "handleGetCFResponse done: "

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v3, "CallForwardEditPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callForwardInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "CallForwardEditPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callForwardInfo. timeSeconds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v3, "CallForwardEditPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPhoneNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v3, "support_callforward_cfnry_timer"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-virtual {p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setTimeSeconds(I)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_1
    iput-boolean v5, p0, Lcom/android/phone/CallForwardEditPreference;->bIsActivating:Z

    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/CallForwardEditPreference;->bIsActivating:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v3, :cond_2

    const-string/jumbo v3, "CallForwardEditPreference"

    const-string/jumbo v5, "Activation failed"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0334

    invoke-virtual {v1, v3, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d032d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0d0331

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/phone/CallForwardEditPreference;->mUpdateSummaryWithNoQuery:Z

    if-nez v3, :cond_3

    const-string/jumbo v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryTextKDDI()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v5

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "CallForwardEditPreference"

    const-string/jumbo v5, "handleCallForwardResult: is your activity running?"

    invoke-static {v3, v5, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    goto :goto_2
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-nez p2, :cond_1

    const-string/jumbo v0, "support_additional_ss_query"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSINSIM()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isSINSIM(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->bIsActivating:Z

    return-void

    :cond_2
    const-string/jumbo v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCallForwardingOption. mServiceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v2, v4, v4, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 3

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init -- simId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput p3, p0, Lcom/android/phone/CallForwardEditPreference;->mSimSlot:I

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mSimSlot:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    return-void
.end method

.method public initCheckBoxKDDI(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCheckBoxKDDI number :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/CallForwardEditPreference;->VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mVoiceMail_kddi:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mVoiceMail_kddi:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/CallForwardEditPreference;->setEnableCFPhoneNumber(ZZ)V

    iput-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->mFirstState_Voicemail:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/CallForwardEditPreference;->mFirstState_Voicemail:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mForwardNumber:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSelect_kddi:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSelect_kddi:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/android/phone/CallForwardEditPreference$4;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/CallForwardEditPreference$4;-><init>(Lcom/android/phone/CallForwardEditPreference;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_2
    return-void

    :cond_3
    sget-object v1, Lcom/android/phone/CallForwardEditPreference;->INVALID_CALL_FORWARD_NUMBER_KDDI:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mCallForward_kddi:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mCallForward_kddi:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-boolean v5, p0, Lcom/android/phone/CallForwardEditPreference;->mFirstState_Voicemail:Z

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x2

    iput v3, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V

    const v3, 0x7f1001fa

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    const-string/jumbo v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f1001ff

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mSelect_kddi:Landroid/widget/RadioGroup;

    const v3, 0x7f100200

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mVoiceMail_kddi:Landroid/widget/RadioButton;

    const v3, 0x7f100201

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mCallForward_kddi:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Lcom/android/phone/CallForwardEditPreference;->initCheckBoxKDDI(Landroid/view/View;)V

    :cond_0
    const-string/jumbo v3, "volte_cmcc_cfu_time"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f100207

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTime:Landroid/widget/LinearLayout;

    const v3, 0x7f100206

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeView:Landroid/widget/TextView;

    const v3, 0x7f100209

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditStart:Landroid/widget/Button;

    const v3, 0x7f10020b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditEnd:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTime:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getMprefId()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTime:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v3, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v3, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_START_TIME:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_END_TIME:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/text/format/Time;->hour:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    aget-object v4, v2, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/text/format/Time;->minute:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEndTime:Landroid/text/format/Time;

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/text/format/Time;->hour:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEndTime:Landroid/text/format/Time;

    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/text/format/Time;->minute:I

    :cond_1
    const-string/jumbo v3, "CallForwardEditPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBindDialogView  mTimeStart= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; mTimeEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditStart:Landroid/widget/Button;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditStart:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/CallForwardEditPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/CallForwardEditPreference$2;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditStart:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditStart:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditEnd:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditEnd:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/CallForwardEditPreference$3;

    invoke-direct {v4, p0}, Lcom/android/phone/CallForwardEditPreference$3;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditEnd:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mEditEnd:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_START_TIME:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_END_TIME:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    iput p2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 13

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mButtonClicked="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", positiveResult="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mCallForward_kddi:Landroid/widget/RadioButton;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mVoiceMail_kddi:Landroid/widget/RadioButton;

    if-eqz v0, :cond_e

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mFirstState_Voicemail :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/phone/CallForwardEditPreference;->mFirstState_Voicemail:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallForward_kddi.isChecked  :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mCallForward_kddi:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/CallForwardEditPreference;->mFirstState_Voicemail:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mCallForward_kddi:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mVoiceMail_kddi:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mVoiceMail_kddi:Landroid/widget/RadioButton;

    invoke-virtual {v0, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_c

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v2, -0x3

    if-ne v0, v2, :cond_f

    :cond_2
    const/4 v1, 0x3

    :goto_1
    const/4 v4, 0x0

    const-string/jumbo v0, "remove_callforward_cfnry_timer"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "REMOVE_CALLFORWARD_CFNRY_TIMER. time = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->isVoicemail:Z

    if-eqz v0, :cond_3

    sget-object v10, Lcom/android/phone/EditPhoneNumberPreference;->VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;

    :cond_3
    move-object v3, v10

    iget-boolean v0, p0, Lcom/android/phone/CallForwardEditPreference;->mChecked:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0d0314

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "callForwardInfo="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "volte_cmcc_cfu_time"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    if-eqz v0, :cond_12

    iput v8, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    :cond_5
    :goto_3
    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reason = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ; mTimeStart = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ; mTimeEnd ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_6
    const/4 v0, 0x3

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v11, :cond_7

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->doNotUpdateCFNRyKDDI()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-eq v0, v8, :cond_7

    const-string/jumbo v0, "support_callforward_cfnry_timer"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-ne v0, v7, :cond_13

    :cond_7
    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", action="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", number="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", service class="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v0, "support_callforward_cfnry_timer"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-ne v0, v7, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawTimeSeconds()I

    move-result v0

    if-nez v0, :cond_14

    const/16 v4, 0x14

    :goto_4
    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CF_REASON_NO_REPLY. time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-ne v0, v7, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getTimeSeconds()I

    move-result v4

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimeSeconds time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v0, 0x3

    if-ne v1, v0, :cond_a

    const-string/jumbo v0, "CallForwardEditPreference"

    const-string/jumbo v2, "start activating"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/phone/CallForwardEditPreference;->bIsActivating:Z

    :cond_a
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-eq v0, v11, :cond_b

    const-string/jumbo v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-nez v0, :cond_18

    :cond_b
    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDialogClosed : mServiceClass = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "volte_cmcc_cfu_time"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "CallForwardEditPreference"

    const-string/jumbo v2, "set voice time"

    invoke-static {v0, v2, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v6, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v8, v11, v1, v11}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_START_TIME:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VOICE_CFU_END_TIME:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_5
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v12}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_c
    :goto_6
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mCallForward_kddi:Landroid/widget/RadioButton;

    invoke-virtual {v0, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "CallForwardEditPreference"

    const-string/jumbo v2, "onDialogClosed - mCallForward_kddi or mVoiceMail_kddi is null"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_10
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-eq v0, v7, :cond_11

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_11
    const/16 v4, 0x14

    goto/16 :goto_2

    :cond_12
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-ne v0, v8, :cond_5

    iput v12, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v0, "CallForwardEditPreference"

    const-string/jumbo v2, "no change, do nothing"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_14
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawTimeSeconds()I

    move-result v4

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez v1, :cond_16

    iput v12, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCallForwardingOption. mServiceClass = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v6, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v6, v11, v1, v11}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_5

    :cond_16
    const-string/jumbo v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-eqz v0, :cond_17

    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallForwardingOption of CFU : reason = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v2, v12, v12, v12, v6}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v12, v6, v12, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_7
    const-string/jumbo v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCallForwardingOption. mServiceClass = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v5, v11, v1, v11}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_5

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    :cond_18
    const-string/jumbo v0, "volte_cmcc_cfu_time"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "CallForwardEditPreference"

    const-string/jumbo v2, "set video time"

    invoke-static {v0, v2, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v6, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v8, v11, v1, v11}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_START_TIME:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VIDEO_CFU_END_TIME:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v6, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v6, v11, v1, v11}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto/16 :goto_5
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "CallForwardEditPreference"

    const-string/jumbo v1, "AirplaneModeOn"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    goto :goto_0
.end method
