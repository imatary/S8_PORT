.class Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
.super Ljava/lang/Object;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheBlock"
.end annotation


# instance fields
.field public final bytes:[B

.field private next:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

.field final synthetic this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

.field private triedNext:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;[B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    return-void
.end method


# virtual methods
.method public getNext()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->triedNext:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->triedNext:Z

    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    # invokes: Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    invoke-static {v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->access$000(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    goto :goto_0
.end method
