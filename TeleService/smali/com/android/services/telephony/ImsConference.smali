.class public Lcom/android/services/telephony/ImsConference;
.super Landroid/telecom/Conference;
.source "ImsConference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/ImsConference$1;,
        Lcom/android/services/telephony/ImsConference$2;,
        Lcom/android/services/telephony/ImsConference$3;
    }
.end annotation


# instance fields
.field private mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

.field private final mConferenceHostListener:Landroid/telecom/Connection$Listener;

.field private final mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/services/telephony/ConferenceParticipantConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipantListener:Landroid/telecom/Connection$Listener;

.field private final mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

.field private mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;


# direct methods
.method static synthetic -get0(Lcom/android/services/telephony/ImsConference;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/services/telephony/ImsConference;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/ImsConference;->applyHostProperties(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/ImsConference;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/ImsConference;->applyVideoCapabilities(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->disconnectConferenceParticipants()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/ImsConference;->handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->handleOriginalConnectionChange()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/ConferenceParticipantConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/ImsConference;->removeConferenceParticipant(Lcom/android/services/telephony/ConferenceParticipantConnection;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateManageConference()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateStatusHints()V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/PhoneAccountHandle;)V
    .locals 7

    invoke-direct {p0, p3}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    new-instance v1, Lcom/android/services/telephony/ImsConference$1;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/ImsConference$1;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v1, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    new-instance v1, Lcom/android/services/telephony/ImsConference$2;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/ImsConference$2;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v1, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    new-instance v1, Lcom/android/services/telephony/ImsConference$3;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/ImsConference$3;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const v5, 0x3f666666    # 0.9f

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/services/telephony/ImsConference;->setConnectTimeMillis(J)V

    iput-object p1, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {p0, p2}, Lcom/android/services/telephony/ImsConference;->setConferenceHost(Lcom/android/services/telephony/TelephonyConnection;)V

    const v0, 0x200043

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionCapabilities()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/ImsConference;->applyVideoCapabilities(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->setConnectionCapabilities(I)V

    return-void
.end method

.method private applyCapability(II)I
    .locals 1

    or-int v0, p1, p2

    return v0
.end method

.method private applyHostProperties(II)I
    .locals 4

    const/16 v3, 0x10

    const/16 v2, 0x8

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/services/telephony/ImsConference;->changeBitmask(IIZ)I

    move-result p1

    invoke-static {p2, v2}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/services/telephony/ImsConference;->changeBitmask(IIZ)I

    move-result p1

    invoke-static {p2, v3}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/services/telephony/ImsConference;->changeBitmask(IIZ)I

    move-result p1

    return p1
.end method

.method private applyVideoCapabilities(II)I
    .locals 4

    const/high16 v3, 0x80000

    const/16 v2, 0xc00

    const/16 v1, 0x300

    invoke-static {p2, v1}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/services/telephony/ImsConference;->applyCapability(II)I

    move-result p1

    :goto_0
    invoke-static {p2, v2}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/android/services/telephony/ImsConference;->applyCapability(II)I

    move-result p1

    :goto_1
    invoke-static {p2, v3}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/android/services/telephony/ImsConference;->applyCapability(II)I

    move-result p1

    :goto_2
    return p1

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/services/telephony/ImsConference;->removeCapability(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/services/telephony/ImsConference;->removeCapability(II)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/services/telephony/ImsConference;->removeCapability(II)I

    move-result p1

    goto :goto_2
.end method

.method private changeBitmask(IIZ)I
    .locals 1

    if-eqz p3, :cond_0

    or-int v0, p1, p2

    return v0

    :cond_0
    not-int v0, p2

    and-int/2addr v0, p1

    return v0
.end method

.method private createConferenceParticipantConnection(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConferenceParticipant;)V
    .locals 5

    new-instance v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/android/services/telephony/ConferenceParticipantConnection;-><init>(Lcom/android/internal/telephony/Connection;Landroid/telecom/ConferenceParticipant;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    sget-boolean v2, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "createConferenceParticipantConnection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v2, v1, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->addConnection(Landroid/telecom/Connection;)Z

    return-void
.end method

.method private disconnectConferenceParticipants()V
    .locals 4

    const-string/jumbo v2, "disconnectConferenceParticipants"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/TelephonyConnection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/HashSet;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telecom/ConferenceParticipant;

    invoke-virtual {v10}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/services/telephony/ImsConference;->createConferenceParticipantConnection(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConferenceParticipant;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/ConferenceParticipantConnection;

    invoke-virtual {v10}, Landroid/telecom/ConferenceParticipant;->getState()I

    move-result v15

    invoke-virtual {v2, v15}, Lcom/android/services/telephony/ConferenceParticipantConnection;->updateState(I)V

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/ConferenceParticipant;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/ConferenceParticipantConnection;

    invoke-virtual {v5}, Landroid/telecom/ConferenceParticipant;->getState()I

    move-result v15

    invoke-virtual {v2, v15}, Lcom/android/services/telephony/ConferenceParticipantConnection;->updateState(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/services/telephony/ConferenceParticipantConnection;

    new-instance v15, Landroid/telecom/DisconnectCause;

    const/16 v16, 0x4

    invoke-direct/range {v15 .. v16}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v11, v15}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v11, v15}, Lcom/android/services/telephony/ConferenceParticipantConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v15, v11}, Lcom/android/services/telephony/TelephonyConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/ImsConference;->removeConnection(Landroid/telecom/Connection;)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    if-nez v8, :cond_6

    if-eqz v9, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/ImsConference;->updateManageConference()V

    :cond_7
    return-void
.end method

.method private handleOriginalConnectionChange()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v3, :cond_0

    const-string/jumbo v3, "handleOriginalConnectionChange; conference host missing."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result v3

    if-eq v3, v7, :cond_3

    sget-boolean v3, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Original connection for conference host is no longer an IMS connection; new connection: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v4, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3, v2, v4}, Lcom/android/services/telephony/TelephonyConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v4, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v3, v4}, Lcom/android/services/telephony/TelephonyConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v4, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v3, v4}, Lcom/android/services/telephony/TelephonyConnection;->removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    iput-object v5, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    new-instance v3, Landroid/telecom/DisconnectCause;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->destroy()V

    :cond_3
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateStatusHints()V

    return-void
.end method

.method private removeCapability(II)I
    .locals 2

    not-int v1, p2

    and-int v0, p1, v1

    return v0
.end method

.method private removeConferenceParticipant(Lcom/android/services/telephony/ConferenceParticipantConnection;)V
    .locals 3

    const-string/jumbo v0, "removeConferenceParticipant: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getUserEntity()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setConferenceHost(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 2

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConferenceHost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->setState(I)V

    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateStatusHints()V

    return-void
.end method

.method private updateManageConference()V
    .locals 7

    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/ImsConference;->can(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v4, "updateManageConference was:%s is:%s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    const-string/jumbo v3, "Y"

    :goto_1
    const/4 v6, 0x0

    aput-object v3, v5, v6

    if-eqz v0, :cond_3

    const-string/jumbo v3, "Y"

    :goto_2
    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->getConnectionCapabilities()I

    move-result v1

    if-eqz v0, :cond_4

    or-int/lit16 v1, v1, 0x80

    const v3, -0x200001

    and-int/2addr v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/ImsConference;->setConnectionCapabilities(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "N"

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "N"

    goto :goto_2

    :cond_4
    and-int/lit16 v1, v1, -0x81

    const/high16 v3, 0x200000

    or-int/2addr v1, v3

    goto :goto_3
.end method

.method private updateStatusHints()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v2, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/services/telephony/ImsConference;->setStatusHints(Landroid/telecom/StatusHints;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->isWifi()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/telecom/StatusHints;

    const v3, 0x7f0d0cfe

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c8

    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Landroid/telecom/StatusHints;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/ImsConference;->setStatusHints(Landroid/telecom/StatusHints;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/services/telephony/ImsConference;->setStatusHints(Landroid/telecom/StatusHints;)V

    goto :goto_0
.end method


# virtual methods
.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getVideoState()I
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getVideoState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConferenceHost()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isConferenceHost()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onDisconnect()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "onDisconnect: hanging up conference host."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Exception thrown trying to hangup conference"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 4

    :try_start_0
    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Exception thrown trying to merge call into a conference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->onPlayDtmfTone(C)V

    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 2

    const-string/jumbo v0, "Cannot separate connections from an IMS conference."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->onStopDtmfTone()V

    return-void
.end method

.method public onUnhold()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    return-void
.end method

.method public setState(I)V
    .locals 5

    const-string/jumbo v1, "setState %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->setDialing()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v1, :cond_0

    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->setActive()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->setOnHold()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ImsConference objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " telecomCallID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " hostConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " participants:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateConferenceParticipantsAfterCreation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateConferenceStateAfterCreation :: process participant update"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getConferenceParticipants()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/ImsConference;->handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "updateConferenceStateAfterCreation :: null mConferenceHost"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
