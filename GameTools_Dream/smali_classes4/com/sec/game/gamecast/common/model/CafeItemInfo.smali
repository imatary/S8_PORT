.class public Lcom/sec/game/gamecast/common/model/CafeItemInfo;
.super Ljava/lang/Object;
.source "CafeItemInfo.java"


# instance fields
.field private cafeId:Ljava/lang/String;

.field private localSyncTime:J

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->cafeId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->localSyncTime:J

    return-void
.end method


# virtual methods
.method public getCafeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->cafeId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->localSyncTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setCafeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->cafeId:Ljava/lang/String;

    return-void
.end method

.method public setLocalSyncTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->localSyncTime:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->packageName:Ljava/lang/String;

    return-void
.end method
