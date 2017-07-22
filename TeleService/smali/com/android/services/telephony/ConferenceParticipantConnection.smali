.class public Lcom/android/services/telephony/ConferenceParticipantConnection;
.super Landroid/telecom/Connection;
.source "ConferenceParticipantConnection.java"


# instance fields
.field private final mEndpoint:Landroid/net/Uri;

.field private final mParentConnection:Lcom/android/internal/telephony/Connection;

.field private final mUserEntity:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Connection;Landroid/telecom/ConferenceParticipant;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    iput-object p1, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mParentConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, p2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getParticipantPresentation(Landroid/telecom/ConferenceParticipant;)I

    move-result v2

    if-eq v2, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setAddress(Landroid/net/Uri;I)V

    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mUserEntity:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getEndpoint()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mEndpoint:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setCapabilities()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getCountryIso(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getParticipantAddress(Landroid/telecom/ConferenceParticipant;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getCountryIso(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v3}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/TelecomAccountRegistry;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getParticipantAddress(Landroid/telecom/ConferenceParticipant;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v4, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    :cond_2
    const-string/jumbo v4, "[@;:]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_3

    return-object v0

    :cond_3
    aget-object v2, v3, v7

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string/jumbo v4, "tel"

    if-eqz v1, :cond_5

    :goto_0
    invoke-static {v4, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method private getParticipantPresentation(Landroid/telecom/ConferenceParticipant;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return v5

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    const-string/jumbo v4, "[@]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    aget-object v1, v3, v6

    const-string/jumbo v4, "anonymous.invalid"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    return v6
.end method

.method private setCapabilities()V
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setConnectionCapabilities(I)V

    return-void
.end method


# virtual methods
.method public getUserEntity()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mUserEntity:Landroid/net/Uri;

    return-object v0
.end method

.method public onDisconnect()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mParentConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mUserEntity:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->onDisconnectConferenceParticipant(Landroid/net/Uri;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ConferenceParticipantConnection objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " endPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mEndpoint:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " parentConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mParentConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateState(I)V
    .locals 4

    const-string/jumbo v0, "updateState endPoint: %s state: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mEndpoint:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getState()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setActive()V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setInitializing()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setRinging()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDialing()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setOnHold()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setActive()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->destroy()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
