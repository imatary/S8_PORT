.class public Lcom/sec/game/gamecast/common/model/UuidInfo;
.super Ljava/lang/Object;
.source "UuidInfo.java"


# instance fields
.field private mLocalSyncTime:J

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/UuidInfo;->mUuid:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/game/gamecast/common/model/UuidInfo;->mLocalSyncTime:J

    return-void
.end method


# virtual methods
.method public final getLocalSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/game/gamecast/common/model/UuidInfo;->mLocalSyncTime:J

    return-wide v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/UuidInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalSyncTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/game/gamecast/common/model/UuidInfo;->mLocalSyncTime:J

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/UuidInfo;->mUuid:Ljava/lang/String;

    return-void
.end method
