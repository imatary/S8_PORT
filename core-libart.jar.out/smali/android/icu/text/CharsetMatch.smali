.class public Landroid/icu/text/CharsetMatch;
.super Ljava/lang/Object;
.source "CharsetMatch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/CharsetMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private fCharsetName:Ljava/lang/String;

.field private fConfidence:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLang:Ljava/lang/String;

.field private fRawInput:[B

.field private fRawLength:I


# direct methods
.method constructor <init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    iput p3, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    iget v0, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    iput v0, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    :cond_0
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/icu/text/CharsetRecognizer;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    iput p3, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    iget v0, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    iput v0, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    :cond_0
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    iput-object p4, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    iput-object p5, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/CharsetMatch;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    iget v2, p1, Landroid/icu/text/CharsetMatch;->fConfidence:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    iget v2, p1, Landroid/icu/text/CharsetMatch;->fConfidence:I

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/CharsetMatch;

    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetMatch;->compareTo(Landroid/icu/text/CharsetMatch;)I

    move-result v0

    return v0
.end method

.method public getConfidence()I
    .locals 1

    iget v0, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    iget v3, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    return-object v5
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x400

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v0, v10, [C

    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;

    move-result-object v4

    if-gez p1, :cond_0

    const v2, 0x7fffffff

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v4, v0, v9, v8}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v6, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_0
    move v2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "_rtl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_4

    const-string/jumbo v8, "_ltr"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :goto_2
    if-lez v7, :cond_3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v5, Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    invoke-direct {v5, v8, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v5

    :cond_4
    const-string/jumbo v8, "_rtl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_2
.end method
