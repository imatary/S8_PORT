.class public Lcom/android/phone/CdmaSubscriptionListPreference;
.super Landroid/preference/ListPreference;
.source "CdmaSubscriptionListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CdmaSubscriptionListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;-><init>(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;)V

    iput-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    invoke-direct {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setCurrentCdmaSubscriptionModeValue()V

    return-void
.end method

.method private setCurrentCdmaSubscriptionModeValue()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "subscription_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSubscriptionListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "CdmaSubscriptionListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting new value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    invoke-virtual {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    return-void

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setCurrentCdmaSubscriptionModeValue()V

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method
