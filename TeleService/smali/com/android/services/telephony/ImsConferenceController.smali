.class public Lcom/android/services/telephony/ImsConferenceController;
.super Ljava/lang/Object;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/ImsConferenceController$1;,
        Lcom/android/services/telephony/ImsConferenceController$2;
    }
.end annotation


# instance fields
.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private final mImsConferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/services/telephony/ImsConference;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/services/telephony/ImsConferenceController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/services/telephony/ImsConferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculate()V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/ImsConferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController$1;-><init>(Lcom/android/services/telephony/ImsConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConferenceListener:Landroid/telecom/Conference$Listener;

    new-instance v0, Lcom/android/services/telephony/ImsConferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController$2;-><init>(Lcom/android/services/telephony/ImsConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-void
.end method

.method private isMemberOfPeerConference(Landroid/telecom/Connection;)Z
    .locals 4

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-nez v3, :cond_0

    return v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMemberOfPeerConference()Z

    move-result v2

    :cond_1
    return v2
.end method

.method private recalculate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConferenceable()V

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V

    return-void
.end method

.method private recalculateConference()V
    .locals 4

    const-string/jumbo v2, "recalculateConference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/ImsConferenceController;->startConference(Lcom/android/services/telephony/TelephonyConnection;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recalculateConferenceable()V
    .locals 15

    const-string/jumbo v11, "recalculateConferenceable : %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/services/telephony/TelephonyConnection;

    sget-boolean v11, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "recalc - %s %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/telecom/Connection;->getState()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v8, v12, v13

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v8}, Lcom/android/services/telephony/ImsConferenceController;->isMemberOfPeerConference(Landroid/telecom/Connection;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "Skipping connection in peer conference: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/telecom/Connection;->getState()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/services/telephony/ImsConference;

    sget-boolean v11, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string/jumbo v11, "recalc - %s %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/services/telephony/ImsConference;->getState()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v4}, Lcom/android/services/telephony/ImsConference;->isConferenceHost()Z

    move-result v11

    if-nez v11, :cond_6

    sget-boolean v11, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v11, :cond_4

    const-string/jumbo v11, "skipping conference (not hosted on this device): %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Lcom/android/services/telephony/ImsConference;->getState()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string/jumbo v11, "active: %d, holding: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Conferenceable;

    instance-of v11, v6, Landroid/telecom/Connection;

    if-eqz v11, :cond_8

    move-object v8, v6

    check-cast v8, Landroid/telecom/Connection;

    invoke-virtual {v8, v1}, Landroid/telecom/Connection;->setConferenceables(Ljava/util/List;)V

    goto :goto_2

    :cond_9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Conferenceable;

    instance-of v11, v6, Landroid/telecom/Connection;

    if-eqz v11, :cond_a

    move-object v8, v6

    check-cast v8, Landroid/telecom/Connection;

    invoke-virtual {v8, v0}, Landroid/telecom/Connection;->setConferenceables(Ljava/util/List;)V

    goto :goto_3

    :cond_b
    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v4}, Lcom/android/services/telephony/ImsConference;->isConferenceHost()Z

    move-result v11

    if-nez v11, :cond_d

    sget-boolean v11, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v11, :cond_c

    const-string/jumbo v11, "skipping conference (not hosted on this device): %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v11

    if-nez v11, :cond_e

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    sget-boolean v11, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v11, :cond_10

    const-string/jumbo v11, "conference conferenceable: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v4, v10}, Lcom/android/services/telephony/ImsConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_4

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 7

    sget-boolean v4, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Start new ImsConference - connection: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->cloneConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    :cond_1
    new-instance v0, Lcom/android/services/telephony/ImsConference;

    iget-object v4, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {v0, v4, v1, v3}, Lcom/android/services/telephony/ImsConference;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/services/telephony/ImsConference;->setState(I)V

    iget-object v4, p0, Lcom/android/services/telephony/ImsConferenceController;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, v4}, Lcom/android/services/telephony/ImsConference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    invoke-virtual {v0}, Lcom/android/services/telephony/ImsConference;->updateConferenceParticipantsAfterCreation()V

    iget-object v4, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v4, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->addConference(Landroid/telecom/Conference;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/ImsConference;->getTelecomCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/services/telephony/TelephonyConnection;->setTelecomCallId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v4}, Lcom/android/services/telephony/TelephonyConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->clearOriginalConnection()V

    new-instance v4, Landroid/telecom/DisconnectCause;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    iget-object v4, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method add(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 3

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "add connection %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V

    return-void
.end method

.method remove(Landroid/telecom/Connection;)V
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConferenceable()V

    return-void
.end method
