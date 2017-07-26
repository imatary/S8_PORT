.class public Lcom/sec/game/gamecast/common/model/GosGlobalData;
.super Ljava/lang/Object;
.source "GosGlobalData.java"


# instance fields
.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/GosGlobalData;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/GosGlobalData;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/GosGlobalData;->uuid:Ljava/lang/String;

    return-void
.end method
