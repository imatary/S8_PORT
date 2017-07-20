.class public Lcom/android/phone/common/mail/store/imap/ImapSimpleString;
.super Lcom/android/phone/common/mail/store/imap/ImapString;
.source "ImapSimpleString.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;-><init>()V

    const-string/jumbo v0, "ImapSimpleString"

    iput-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    invoke-super {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->destroy()V

    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    const-string/jumbo v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImapSimpleString"

    const-string/jumbo v2, "Unsupported encoding: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
