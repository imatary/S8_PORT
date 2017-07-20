.class public Lcom/android/services/telephony/common/SecCallExtra;
.super Ljava/lang/Object;
.source "SecCallExtra.java"


# static fields
.field private static final DOMAIN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESOLUTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "VOICE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "VIDEO_SHARE_TX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "VIDEO_SHARE_RX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "VIDEO"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MODIFY_REQUEST"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MODIFY_RECEIVE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->TYPE_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->DOMAIN_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "QCIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "VGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "VGALAND"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "HD720"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->RESOLUTION_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->initHashMap()V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->initHashMap()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "SecCallExtra"

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public static getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "SecCallExtra"

    const-string/jumbo v2, "getSecCallExtra - bundle = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/services/telephony/common/SecCallExtra;

    const-string/jumbo v1, "SecCallExtra"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Lcom/android/services/telephony/common/SecCallExtra;-><init>(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecCallExtra"

    const-string/jumbo v2, "getSecCallExtra - occur CalssCastException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "SecCallExtra"

    const-string/jumbo v1, "setSecCallExtraToBundle - secCallExtra = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo v0, "SecCallExtra"

    const-string/jumbo v1, "setSecCallExtraToBundle - bundle = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string/jumbo v0, "SecCallExtra"

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method


# virtual methods
.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanValue(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public getByteValue(Ljava/lang/String;)B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getByteValue(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public getByteValue(Ljava/lang/String;B)B
    .locals 2

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return p2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CdnipNumber"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionCallId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ConnectionCallId"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()I
    .locals 2

    const-string/jumbo v0, "Domain"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEpdgCall()Z
    .locals 1

    const-string/jumbo v0, "IsEpdgCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEpdgW2L()Z
    .locals 1

    const-string/jumbo v0, "IsEpdgW2L"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHDIcon()I
    .locals 2

    const-string/jumbo v0, "HDIcon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHasBeenVideoCall()Z
    .locals 1

    const-string/jumbo v0, "HasBeenVideoCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHoldStateOfTheOtherParty()B
    .locals 1

    const-string/jumbo v0, "IsHoldedByTheOtherParty"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getByteValue(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 2

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return p2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public getLineMSISDN()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "LineMSISDN"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogServiceType()I
    .locals 1

    const-string/jumbo v0, "LogSeviceType"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongValue(Ljava/lang/String;J)J
    .locals 4

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-wide p2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide p2
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method public getModifiedTimeMillis()J
    .locals 2

    const-string/jumbo v0, "ModifiedTimeMillis"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutgoingCallMessage()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "OutgoingCallMessage"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneTypeChanged()I
    .locals 1

    const-string/jumbo v0, "IsPhoneTypeChanged"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRecordSaveFilePath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "RecordSaveFilePath"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    const-string/jumbo v0, "SessionId"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    const-string/jumbo v0, "Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVideoResolution()I
    .locals 2

    const-string/jumbo v0, "VideoResolution"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public initHashMap()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setDomainCsCause(I)V

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setCVOStatus(I)V

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setVTSpeakerState(I)V

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setInitModifiedLogType(I)V

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedLogType(I)V

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setModifyCallRequestInProgress(Z)V

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setCallDirection(I)V

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSubId(I)V

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setSimReceiveSlot(I)V

    return-void
.end method

.method public isAutoRejectCall()Z
    .locals 1

    const-string/jumbo v0, "IsAutorejectCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIMSConferenceCall()Z
    .locals 1

    const-string/jumbo v0, "IMSConferenceCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModifyCallReceiveInProgress()Z
    .locals 1

    const-string/jumbo v0, "ModifyCallReceiveInProgress"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModifyCallRequestInProgress()Z
    .locals 1

    const-string/jumbo v0, "ModifyCallRequestInProgress"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReceivedCall()Z
    .locals 1

    const-string/jumbo v0, "ReceivedCall"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVirtualLine()Z
    .locals 1

    const-string/jumbo v0, "IsVirtualLine"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVolteConference()Z
    .locals 1

    const-string/jumbo v0, "IsVolteConference"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAliveParticipantNumber(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "GetAliveParticipantNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setArrayValues(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "audio_codec"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoRejectCall(Z)V
    .locals 1

    const-string/jumbo v0, "IsAutorejectCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBooleanValue(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setByteValue(Ljava/lang/String;B)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCVOStatus(I)V
    .locals 1

    const-string/jumbo v0, "CVOStatus"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setCWToneSignal(I)V
    .locals 1

    const-string/jumbo v0, "CWToneSignal"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setCallDirection(I)V
    .locals 1

    const-string/jumbo v0, "CallDirection"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setCdnipNumber(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CdnipNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConfParticipant(Z)V
    .locals 1

    const-string/jumbo v0, "IsConfParticipant"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDomain(I)V
    .locals 1

    const-string/jumbo v0, "Domain"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setDomainCsCause(I)V
    .locals 1

    const-string/jumbo v0, "DomainCsCause"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setEpdgCall(Z)V
    .locals 1

    const-string/jumbo v0, "IsEpdgCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEpdgW2L(Z)V
    .locals 1

    const-string/jumbo v0, "IsEpdgW2L"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFirstCallerForIMSConference(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "FirstCallerForIMSConference"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setForwardingNumber(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ForwardingNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setForwardingPresentation(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ForwardingPresentation"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHDIcon(I)V
    .locals 1

    const-string/jumbo v0, "HDIcon"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setHasBeenVideoCall(Z)V
    .locals 1

    const-string/jumbo v0, "HasBeenVideoCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHoldStateOfTheOtherParty(B)V
    .locals 1

    const-string/jumbo v0, "IsHoldedByTheOtherParty"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setByteValue(Ljava/lang/String;B)V

    return-void
.end method

.method public setIMSConferenceCall(Z)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIMSConferenceCallParticipantCount(I)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantCount"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setIMSConferenceCallParticipantCreateTime([J)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantCreateTime"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setLongArrayValues(Ljava/lang/String;[J)V

    return-void
.end method

.method public setIMSConferenceCallParticipantDuration([J)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantDuration"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setLongArrayValues(Ljava/lang/String;[J)V

    return-void
.end method

.method public setIMSConferenceCallParticipantLookupKey([Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantLookupKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setArrayValues(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setIMSConferenceCallParticipantName([Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantName"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setArrayValues(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setIMSConferenceCallParticipantNumber([Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceCallParticipantNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setArrayValues(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setIMSConferenceCallParticipantPhotoUri([Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantPhotoUri"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setArrayValues(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setIMSConferenceCallParticipantStartDuration([J)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantStartDuration"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setLongArrayValues(Ljava/lang/String;[J)V

    return-void
.end method

.method public setIMSConferenceCallParticipantState([I)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantState"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntArrayValues(Ljava/lang/String;[I)V

    return-void
.end method

.method public setIMSConferenceCallParticipantStatus([I)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceParticipantStatus"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntArrayValues(Ljava/lang/String;[I)V

    return-void
.end method

.method public setIMSConferenceStateChanged(Z)V
    .locals 1

    const-string/jumbo v0, "IMSConferenceStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setImsCallId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ImsCallId"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitModifiedLogType(I)V
    .locals 1

    const-string/jumbo v0, "InitModifiedLogType"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setIntArrayValues(Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIsTwoPhone(Z)V
    .locals 1

    const-string/jumbo v0, "IsTwoPhoneMode"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsVoicePartyCall(I)V
    .locals 1

    const-string/jumbo v0, "IsVoicePartyCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setIsVolteGroupCall(I)V
    .locals 1

    const-string/jumbo v0, "IsVolteGroupCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setLineCtrl(Z)V
    .locals 1

    const-string/jumbo v0, "LineCtrl"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLineMSISDN(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "LineMSISDN"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogServiceType(I)V
    .locals 1

    const-string/jumbo v0, "LogSeviceType"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setLongArrayValues(Ljava/lang/String;[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setLongValue(Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setLongValue(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setModifiedLogType(I)V
    .locals 1

    const-string/jumbo v0, "ModifiedLogType"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setModifiedTimeMillis(J)V
    .locals 1

    const-string/jumbo v0, "ModifiedTimeMillis"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/services/telephony/common/SecCallExtra;->setLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public setModifyCallRequestInProgress(Z)V
    .locals 1

    const-string/jumbo v0, "ModifyCallRequestInProgress"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNameForIMSConference(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "NameForIMSConference"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNumberForIMSConference(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "NumberForIMSConference"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneTypeChanged(I)V
    .locals 1

    const-string/jumbo v0, "IsPhoneTypeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setPhotoringContentUrl(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "key_photoring_mt_content_url"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReceivedCall(Z)V
    .locals 1

    const-string/jumbo v0, "ReceivedCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRecordSaveFilePath(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "RecordSaveFilePath"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionId(I)V
    .locals 1

    const-string/jumbo v0, "SessionId"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setSimReceiveSlot(I)V
    .locals 1

    const-string/jumbo v0, "SimReceiveSlot"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setSipCallId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SipCallId"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubId(I)V
    .locals 1

    const-string/jumbo v0, "SubId"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setTtyType(I)V
    .locals 1

    const-string/jumbo v0, "TtyType"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    const-string/jumbo v0, "Type"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setUpdateEmerencyCallState(Z)V
    .locals 1

    const-string/jumbo v0, "UpdateEmergencyCallstate"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setVTSpeakerState(I)V
    .locals 1

    const-string/jumbo v0, "VTSpeakerState"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVideoResolution(I)V
    .locals 1

    const-string/jumbo v0, "VideoResolution"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setVolteConference(Z)V
    .locals 1

    const-string/jumbo v0, "IsVolteConference"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWaitingCall(Z)V
    .locals 1

    const-string/jumbo v0, "IsWaitingCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWifiCall(Z)V
    .locals 1

    const-string/jumbo v0, "IsWifiCall"

    invoke-virtual {p0, v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/common/SecCallExtra;->map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string/jumbo v4, "SpamNumber"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
