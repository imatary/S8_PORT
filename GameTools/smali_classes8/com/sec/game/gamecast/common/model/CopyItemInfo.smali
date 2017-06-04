.class public Lcom/sec/game/gamecast/common/model/CopyItemInfo;
.super Ljava/lang/Object;
.source "CopyItemInfo.java"


# instance fields
.field fileSize:J

.field newFile:Ljava/lang/String;

.field oldFile:Ljava/lang/String;

.field originFile:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field pkgTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->oldFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->newFile:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->fileSize:J

    iput-object p4, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->pkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->pkgTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->fileSize:J

    return-wide v0
.end method

.method public getNewFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->newFile:Ljava/lang/String;

    return-object v0
.end method

.method public getOldFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->oldFile:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->originFile:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->pkgTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setFileSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->fileSize:J

    return-void
.end method

.method public setNewFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->newFile:Ljava/lang/String;

    return-void
.end method

.method public setOldFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->oldFile:Ljava/lang/String;

    return-void
.end method

.method public setOriginFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->originFile:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setPkgTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/CopyItemInfo;->pkgTitle:Ljava/lang/String;

    return-void
.end method
