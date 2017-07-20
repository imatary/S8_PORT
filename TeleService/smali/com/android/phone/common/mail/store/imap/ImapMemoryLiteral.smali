.class public Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;
.super Lcom/android/phone/common/mail/store/imap/ImapString;
.source "ImapMemoryLiteral.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mData:[B


# direct methods
.method constructor <init>(Lcom/android/phone/common/mail/FixedLengthInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;-><init>()V

    const-string/jumbo v2, "ImapMemoryLiteral"

    iput-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/phone/common/mail/FixedLengthInputStream;->getLength()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v3, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Lcom/android/phone/common/mail/FixedLengthInputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    const-string/jumbo v2, "ImapMemoryLiteral"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-super {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->destroy()V

    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImapMemoryLiteral"

    const-string/jumbo v2, "Unsupported encoding: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "{%d byte literal(memory)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
