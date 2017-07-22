.class public Lcom/android/phone/CLIRSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "CLIRSwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRSwitchPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/phone/CLIRSwitchPreference$MyHandler;

.field private mIsVoLTE:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CLIRSwitchPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRSwitchPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/CLIRSwitchPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRSwitchPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/phone/CLIRSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CLIRSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/phone/CLIRSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/phone/CLIRSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CLIRSwitchPreference;->DBG:Z

    new-instance v0, Lcom/android/phone/CLIRSwitchPreference$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CLIRSwitchPreference$MyHandler;-><init>(Lcom/android/phone/CLIRSwitchPreference;Lcom/android/phone/CLIRSwitchPreference$MyHandler;)V

    iput-object v0, p0, Lcom/android/phone/CLIRSwitchPreference;->mHandler:Lcom/android/phone/CLIRSwitchPreference$MyHandler;

    iput-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/phone/CLIRSwitchPreference;->mSimId:I

    iput-boolean v1, p0, Lcom/android/phone/CLIRSwitchPreference;->mIsVoLTE:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRSwitchPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/phone/CLIRSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/phone/CLIRSwitchPreference;->clirArray:[I

    const/4 v0, 0x2

    aget v3, p1, v2

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    if-eq v0, v1, :cond_0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/CLIRSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "switch_clir_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/android/phone/CLIRSwitchPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_clir_key"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "CLIRSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switch_clir_key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const-string/jumbo v2, "CLIRSwitchPreference"

    const-string/jumbo v3, "getOutgoingCallerIdDisplay"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CLIRSwitchPreference;->mHandler:Lcom/android/phone/CLIRSwitchPreference$MyHandler;

    invoke-virtual {v3, v6, v6, v6}, Lcom/android/phone/CLIRSwitchPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v2, p0, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CLIRSwitchPreference"

    const-string/jumbo v3, "switch_clir_key not found."

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CLIRSwitchPreference;->mHandler:Lcom/android/phone/CLIRSwitchPreference$MyHandler;

    invoke-virtual {v3, v5}, Lcom/android/phone/CLIRSwitchPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    iget-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v2, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v2, "CLIRSwitchPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange. newValue = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/CLIRSwitchPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    iget-object v3, p0, Lcom/android/phone/CLIRSwitchPreference;->mHandler:Lcom/android/phone/CLIRSwitchPreference$MyHandler;

    invoke-virtual {v3, v1}, Lcom/android/phone/CLIRSwitchPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/CLIRSwitchPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CLIRSwitchPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
