.class public Lcom/android/phone/common/mail/FixedLengthInputStream;
.super Ljava/io/InputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private mCount:I

.field private final mIn:Ljava/io/InputStream;

.field private final mLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    iput p2, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mLength:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mLength:I

    iget v1, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mLength:I

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mCount:I

    iget v1, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mLength:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mCount:I

    iget-object v0, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/phone/common/mail/FixedLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    iget v1, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mCount:I

    iget v2, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mLength:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    iget v2, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mLength:I

    iget v3, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mCount:I

    sub-int/2addr v2, v3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v4, :cond_0

    return v4

    :cond_0
    iget v1, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mCount:I

    return v0

    :cond_1
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "FixedLengthInputStream(in=%s, length=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/phone/common/mail/FixedLengthInputStream;->mLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
