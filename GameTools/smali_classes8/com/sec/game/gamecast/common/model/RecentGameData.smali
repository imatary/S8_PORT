.class public Lcom/sec/game/gamecast/common/model/RecentGameData;
.super Ljava/lang/Object;
.source "RecentGameData.java"


# instance fields
.field private gameName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/RecentGameData;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/RecentGameData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/RecentGameData;->pid:I

    return v0
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/RecentGameData;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/RecentGameData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/RecentGameData;->pid:I

    return-void
.end method
