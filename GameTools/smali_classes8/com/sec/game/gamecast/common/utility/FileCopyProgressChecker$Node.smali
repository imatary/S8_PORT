.class Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;
.super Ljava/lang/Object;
.source "FileCopyProgressChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field public fileName:Ljava/lang/String;

.field public fileSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;->fileName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;->fileSize:J

    return-void
.end method
