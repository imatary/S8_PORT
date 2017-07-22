.class public Lcom/android/phone/common/mail/internet/MimeMessage;
.super Lcom/android/phone/common/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mBcc:[Lcom/android/phone/common/mail/Address;

.field private mBody:Lcom/android/phone/common/mail/Body;

.field private mCc:[Lcom/android/phone/common/mail/Address;

.field private mComplete:Z

.field private mFrom:[Lcom/android/phone/common/mail/Address;

.field private mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

.field private mInhibitLocalMessageId:Z

.field private mReplyTo:[Lcom/android/phone/common/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field protected mSize:I

.field private mTo:[Lcom/android/phone/common/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeMessage;->sRandom:Ljava/util/Random;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/common/mail/Message;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mComplete:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    return-void
.end method

.method private static generateMessageId()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    sget-object v4, Lcom/android/phone/common/mail/internet/MimeMessage;->sRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit8 v3, v4, 0x1f

    const-string/jumbo v4, "0123456789abcdefghijklmnopqrstuv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "@email.android.com>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/common/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/phone/common/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    return-object v0
.end method

.method private init()Lorg/apache/james/mime4j/MimeStreamParser;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/common/mail/internet/MimeHeader;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mFrom:[Lcom/android/phone/common/mail/Address;

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mTo:[Lcom/android/phone/common/mail/Address;

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mCc:[Lcom/android/phone/common/mail/Address;

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBcc:[Lcom/android/phone/common/mail/Address;

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mReplyTo:[Lcom/android/phone/common/mail/Address;

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    new-instance v1, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/android/phone/common/mail/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v0

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

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

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

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/android/phone/common/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mFrom:[Lcom/android/phone/common/mail/Address;

    if-nez v1, :cond_2

    const-string/jumbo v1, "From"

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/android/phone/common/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/phone/common/mail/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mFrom:[Lcom/android/phone/common/mail/Address;

    :cond_2
    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mFrom:[Lcom/android/phone/common/mail/Address;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const-string/jumbo v1, "Message-ID"

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/phone/common/mail/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Date"

    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Delivery-date"

    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Email Log"

    const-string/jumbo v3, "Message missing Date header"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Email Log"

    const-string/jumbo v3, "Message also missing Delivery-Date header"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSize:I

    return v0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->init()Lorg/apache/james/mime4j/MimeStreamParser;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/MimeStreamParser;->getPrematureEof()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mComplete:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setBody(Lcom/android/phone/common/mail/Body;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    instance-of v1, p1, Lcom/android/phone/common/mail/Multipart;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/phone/common/mail/Multipart;

    invoke-virtual {v0, p0}, Lcom/android/phone/common/mail/Multipart;->setParent(Lcom/android/phone/common/mail/Part;)V

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0}, Lcom/android/phone/common/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MIME-Version"

    const-string/jumbo v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/phone/common/mail/internet/TextBody;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Content-Transfer-Encoding"

    const-string/jumbo v2, "base64"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const-string/jumbo v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/phone/common/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
