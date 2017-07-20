.class final Lcom/android/services/telephony/TelephonyConferenceController;
.super Ljava/lang/Object;
.source "TelephonyConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelephonyConferenceController$1;
    }
.end annotation


# instance fields
.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

.field private final mTelephonyConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/TelephonyConferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConferenceController$1;-><init>(Lcom/android/services/telephony/TelephonyConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-void
.end method

.method private isFullConference(Landroid/telecom/Conference;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x63

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private participatesInFullConference(Landroid/telecom/Connection;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConferenceController;->isFullConference(Landroid/telecom/Conference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculateConference()V
    .locals 18

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v6}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v12, v14, :cond_1

    sget-object v14, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v14, :cond_0

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v14, "Recalculate conference calls"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v14, 0x2

    if-ge v9, v14, :cond_7

    const-string/jumbo v14, "not enough connections to be a conference!"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Connection;

    instance-of v14, v5, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v14, :cond_3

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14, v5}, Lcom/android/services/telephony/TelephonyConference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v14, "with a conference to destroy!"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14}, Lcom/android/services/telephony/TelephonyConference;->destroy()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    :cond_5
    const-string/jumbo v14, "support_hide_conference_manager_menu_srvcc"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setSrvccConfCall(Z)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Connection;

    instance-of v14, v5, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v14, :cond_8

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14, v5}, Lcom/android/services/telephony/TelephonyConference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_3

    :cond_9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Connection;

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14, v5}, Lcom/android/services/telephony/TelephonyConference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v13}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    :cond_c
    new-instance v14, Lcom/android/services/telephony/TelephonyConference;

    invoke-direct {v14, v10}, Lcom/android/services/telephony/TelephonyConference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Connection;

    const-string/jumbo v14, "Adding a connection to a conference call: %s %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const/16 v16, 0x1

    aput-object v5, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14, v5}, Lcom/android/services/telephony/TelephonyConference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14, v15}, Lcom/android/services/telephony/TelephonyConnectionService;->addConference(Landroid/telecom/Conference;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14}, Lcom/android/services/telephony/TelephonyConference;->getConnectionCapabilities()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-static {v14, v2}, Lcom/android/services/utils/SecCapabilitiesBuilder;->build(Lcom/android/services/telephony/TelephonyConference;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14, v2}, Lcom/android/services/telephony/TelephonyConference;->setConnectionCapabilities(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14}, Lcom/android/services/telephony/TelephonyConference;->getPrimaryConnection()Landroid/telecom/Connection;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Primary Conferenced connection is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/telecom/Connection;->getState()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string/jumbo v14, "Setting conference to active"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14}, Lcom/android/services/telephony/TelephonyConference;->setActive()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v3}, Landroid/telecom/Connection;->getVideoState()I

    move-result v15

    invoke-virtual {v14, v3, v15}, Lcom/android/services/telephony/TelephonyConference;->setVideoState(Landroid/telecom/Connection;I)V

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getCntConfFromDisconnectingToActive()I

    move-result v14

    if-gt v9, v14, :cond_6

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setConfFromDisconnectingToActive(Z)V

    goto/16 :goto_2

    :pswitch_1
    const-string/jumbo v14, "Setting conference to hold"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v14}, Lcom/android/services/telephony/TelephonyConference;->setOnHold()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recalculateConferenceable()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "recalculateConferenceable : %d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/services/telephony/TelephonyConnection;

    const-string/jumbo v8, "recalc - %s"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/telecom/Connection;->getState()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/android/services/telephony/TelephonyConferenceController;->participatesInFullConference(Landroid/telecom/Connection;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Landroid/telecom/Connection;->getState()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "active: %d, holding: %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Connection;

    invoke-virtual {v4}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v4, v1}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Connection;

    invoke-virtual {v4}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v4, v0}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-direct {p0, v8}, Lcom/android/services/telephony/TelephonyConferenceController;->isFullConference(Landroid/telecom/Conference;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    :goto_3
    return-void

    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const-string/jumbo v8, "conference conferenceable"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v8, v6}, Lcom/android/services/telephony/TelephonyConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method add(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method

.method public recalculate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculateConference()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculateConferenceable()V

    return-void
.end method

.method remove(Landroid/telecom/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method
