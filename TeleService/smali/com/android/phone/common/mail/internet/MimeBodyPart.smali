.class public Lcom/android/phone/common/mail/internet/MimeBodyPart;
.super Lcom/android/phone/common/mail/BodyPart;
.source "MimeBodyPart.java"


# static fields
.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field protected mBody:Lcom/android/phone/common/mail/Body;

.field protected mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

.field protected mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/common/mail/internet/MimeBodyPart;-><init>(Lcom/android/phone/common/mail/Body;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/common/mail/Body;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/mail/internet/MimeBodyPart;-><init>(Lcom/android/phone/common/mail/Body;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/common/mail/Body;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/BodyPart;-><init>()V

    new-instance v0, Lcom/android/phone/common/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/phone/common/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->setBody(Lcom/android/phone/common/mail/Body;)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcom/android/phone/common/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mBody:Lcom/android/phone/common/mail/Body;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "text/plain"

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget v0, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mSize:I

    return v0
.end method

.method public setBody(Lcom/android/phone/common/mail/Body;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mBody:Lcom/android/phone/common/mail/Body;

    instance-of v3, p1, Lcom/android/phone/common/mail/Multipart;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/phone/common/mail/Multipart;

    invoke-virtual {v1, p0}, Lcom/android/phone/common/mail/Multipart;->setParent(Lcom/android/phone/common/mail/Part;)V

    const-string/jumbo v3, "Content-Type"

    invoke-virtual {v1}, Lcom/android/phone/common/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, p1, Lcom/android/phone/common/mail/internet/TextBody;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "%s;\n charset=utf-8"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-static {v3, v4}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n name=\"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v3, "Content-Type"

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Content-Transfer-Encoding"

    const-string/jumbo v4, "base64"

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mSize:I

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mBody:Lcom/android/phone/common/mail/Body;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeBodyPart;->mBody:Lcom/android/phone/common/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/phone/common/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
