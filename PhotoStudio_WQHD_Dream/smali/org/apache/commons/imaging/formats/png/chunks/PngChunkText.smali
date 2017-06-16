.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;
.source "PngChunkText.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;-><init>(III[B)V

    invoke-static {p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([B)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "PNG tEXt chunk keyword is not terminated."

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, p4, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    array-length v2, p4

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, p4, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keyword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getContents()Lorg/apache/commons/imaging/formats/png/PngText;
    .locals 3

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngText$Text;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngText$Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    return-object v0
.end method
