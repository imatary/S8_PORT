.class public Landroid/icu/impl/data/ResourceReader;
.super Ljava/lang/Object;
.source "ResourceReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private encoding:Ljava/lang/String;

.field private lineNo:I

.field private reader:Ljava/io/BufferedReader;

.field private resourceName:Ljava/lang/String;

.field private root:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    iput-object v2, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    if-nez p3, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-class v0, Landroid/icu/impl/ICUData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-class v0, Landroid/icu/impl/ICUData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/icu/impl/data/ResourceReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v3, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    if-nez v3, :cond_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    iget-object v4, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    if-nez v3, :cond_2

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    iput v5, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    return-void

    :cond_2
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    iput-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    :cond_0
    return-void
.end method

.method public describePosition()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xffef

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xfeff

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readLineSkippingComments()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/data/ResourceReader;->readLineSkippingComments(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLineSkippingComments(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/data/ResourceReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public reset()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
