.class Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;
.super Ljava/lang/Object;
.source "ImageResourceBlock.java"


# instance fields
.field final data:[B

.field final id:I

.field final nameData:[B


# direct methods
.method constructor <init>(I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->id:I

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
