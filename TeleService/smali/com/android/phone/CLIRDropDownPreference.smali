.class public Lcom/android/phone/CLIRDropDownPreference;
.super Lcom/android/phone/DropDownPreference;
.source "CLIRDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRDropDownPreference$MyHandler;
    }
.end annotation


# static fields
.field private static prev_CLIR_value1:I

.field private static prev_CLIR_value2:I


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/phone/CLIRDropDownPreference$MyHandler;

.field private mInitDropDown:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSelectedPosition:I

.field private mSimId:I

.field private final mSpinner:Landroid/widget/Spinner;

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/phone/CLIRDropDownPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/CLIRDropDownPreference$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mHandler:Lcom/android/phone/CLIRDropDownPreference$MyHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/CLIRDropDownPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mInitDropDown:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/CLIRDropDownPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mSimId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/CLIRDropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic -get7()I
    .locals 1

    sget v0, Lcom/android/phone/CLIRDropDownPreference;->prev_CLIR_value1:I

    return v0
.end method

.method static synthetic -get8()I
    .locals 1

    sget v0, Lcom/android/phone/CLIRDropDownPreference;->prev_CLIR_value2:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/CLIRDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CLIRDropDownPreference;->mInitDropDown:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CLIRDropDownPreference;->prev_CLIR_value1:I

    sput v0, Lcom/android/phone/CLIRDropDownPreference;->prev_CLIR_value2:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v9, p0, Lcom/android/phone/CLIRDropDownPreference;->DBG:Z

    new-instance v4, Lcom/android/phone/CLIRDropDownPreference$MyHandler;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/phone/CLIRDropDownPreference$MyHandler;-><init>(Lcom/android/phone/CLIRDropDownPreference;Lcom/android/phone/CLIRDropDownPreference$MyHandler;)V

    iput-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mHandler:Lcom/android/phone/CLIRDropDownPreference$MyHandler;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mValues:Ljava/util/ArrayList;

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mSelectedPosition:I

    iput-boolean v9, p0, Lcom/android/phone/CLIRDropDownPreference;->mInitDropDown:Z

    iput v5, p0, Lcom/android/phone/CLIRDropDownPreference;->mSimId:I

    const-string/jumbo v4, "feature_multisim_dsda"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSimId()I

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    const-string/jumbo v4, "CLIRDropDownPreference"

    const-string/jumbo v6, "CLIRDropDownPreference"

    invoke-static {v4, v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-object p1, p0, Lcom/android/phone/CLIRDropDownPreference;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/phone/CLIRDropDownPreference;->mContext:Landroid/content/Context;

    const v7, 0x1090009

    invoke-direct {v4, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/CLIRDropDownPreference;->clearItems()V

    iget-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0900d7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0900d6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    array-length v6, v1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v3, v1, v4

    const-string/jumbo v7, "CLIRDropDownPreference"

    const-string/jumbo v8, "CLIRDropDownPreference addItem"

    invoke-static {v7, v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    aget-object v7, v0, v2

    invoke-virtual {p0, v7, v3}, Lcom/android/phone/CLIRDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/phone/CLIRDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/phone/CLIRDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/android/phone/CLIRDropDownPreference$1;

    invoke-direct {v6, p0}, Lcom/android/phone/CLIRDropDownPreference$1;-><init>(Lcom/android/phone/CLIRDropDownPreference;)V

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/CLIRDropDownPreference;->setPersistent(Z)V

    new-instance v4, Lcom/android/phone/CLIRDropDownPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/CLIRDropDownPreference$2;-><init>(Lcom/android/phone/CLIRDropDownPreference;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/CLIRDropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private saveClirInSystemSettings(I)V
    .locals 4

    const-string/jumbo v1, "CLIRDropDownPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveClirInSystemSettings value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CLIRDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "clir_preference"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CLIRDropDownPreference"

    const-string/jumbo v2, "could not persist clir in system setting - "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method handleGetCLIRResult([I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/android/phone/CLIRDropDownPreference;->clirArray:[I

    aget v3, p1, v6

    if-eq v3, v6, :cond_0

    aget v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/phone/CLIRDropDownPreference;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "CLIRDropDownPreference"

    const-string/jumbo v4, "USIM is CMCC SIM. Disable CLIR."

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    const-string/jumbo v3, "CLIRDropDownPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGetCLIRResponse: CLIR successfully queried, tmpClirArray[0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", tmpClirArray[1]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v2, 0x0

    aget v3, p1, v6

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    :goto_2
    const-string/jumbo v3, "CLIRDropDownPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGetCLIRResult value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0, v2}, Lcom/android/phone/CLIRDropDownPreference;->setSelectedItem(I)V

    iget v3, p0, Lcom/android/phone/CLIRDropDownPreference;->mSimId:I

    if-nez v3, :cond_4

    sput v2, Lcom/android/phone/CLIRDropDownPreference;->prev_CLIR_value1:I

    :cond_1
    :goto_3
    const v1, 0x7f0d030b

    packed-switch v2, :pswitch_data_1

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRDropDownPreference;->setSummary(I)V

    invoke-direct {p0, v2}, Lcom/android/phone/CLIRDropDownPreference;->saveClirInSystemSettings(I)V

    return-void

    :cond_2
    aget v3, p1, v6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/phone/CLIRDropDownPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_1
    aget v3, p1, v7

    packed-switch v3, :pswitch_data_2

    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/android/phone/CLIRDropDownPreference;->mSimId:I

    if-ne v3, v6, :cond_1

    sput v2, Lcom/android/phone/CLIRDropDownPreference;->prev_CLIR_value2:I

    goto :goto_3

    :pswitch_4
    const v1, 0x7f0d030a

    goto :goto_4

    :pswitch_5
    const v1, 0x7f0d0309

    goto :goto_4

    :pswitch_6
    const v1, 0x7f0d030b

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/phone/CLIRDropDownPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const-string/jumbo v1, "CLIRDropDownPreference"

    const-string/jumbo v2, "CLIRDropDownPreference init"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mHandler:Lcom/android/phone/CLIRDropDownPreference$MyHandler;

    invoke-virtual {v2, v3, v3, v3}, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    :cond_0
    const-string/jumbo v1, "feature_chn"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "CLIRDropDownPreference"

    const-string/jumbo v2, "USIM is absent. Skip display of busy dialog"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 1

    invoke-static {p3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRDropDownPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iput p3, p0, Lcom/android/phone/CLIRDropDownPreference;->mSimId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/DropDownPreference;->onBindView(Landroid/view/View;)V

    const-string/jumbo v2, "CLIRDropDownPreference"

    const-string/jumbo v3, "onBindView"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "CLIRDropDownPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelectedItem position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0, p1, v3}, Lcom/android/phone/CLIRDropDownPreference;->setSelectedItem(IZ)V

    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSelectedPosition:I

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    const-string/jumbo v2, "CLIRDropDownPreference"

    const-string/jumbo v3, "setSelectedItem : position == mSelectedPosition return"

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CLIRDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v3, "CLIRDropDownPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSelectedItem : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CLIRDropDownPreference;->notifyDependencyChange(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
