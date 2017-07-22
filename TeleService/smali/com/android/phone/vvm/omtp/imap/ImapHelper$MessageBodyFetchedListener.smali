.class final Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;
.super Ljava/lang/Object;
.source "ImapHelper.java"

# interfaces
.implements Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/vvm/omtp/imap/ImapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageBodyFetchedListener"
.end annotation


# instance fields
.field private mVoicemailPayload:Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

.field final synthetic this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;


# direct methods
.method private constructor <init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;-><init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V

    return-void
.end method

.method private getAudioDataFromBody(Lcom/android/phone/common/mail/Body;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/phone/common/mail/Body;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private getVoicemailPayloadFromMessage(Lcom/android/phone/common/mail/Message;)Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getBody()Lcom/android/phone/common/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/mail/Multipart;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Lcom/android/phone/common/mail/Multipart;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Lcom/android/phone/common/mail/Multipart;->getBodyPart(I)Lcom/android/phone/common/mail/BodyPart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/common/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "ImapHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bodyPart mime type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v5, "audio/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/common/mail/BodyPart;->getBody()Lcom/android/phone/common/mail/Body;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->getAudioDataFromBody(Lcom/android/phone/common/mail/Body;)[B

    move-result-object v2

    const-string/jumbo v5, "ImapHelper"

    const-string/jumbo v6, "Fetched %s bytes of data"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    array-length v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v5, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

    invoke-direct {v5, v1, v2}, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;-><init>(Ljava/lang/String;[B)V

    return-object v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "ImapHelper"

    const-string/jumbo v6, "No audio attachment found on this voicemail"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method public getVoicemailPayload()Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->mVoicemailPayload:Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

    return-object v0
.end method

.method public messageRetrieved(Lcom/android/phone/common/mail/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "ImapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fetched message body for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v2, "ImapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message retrieved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->getVoicemailPayloadFromMessage(Lcom/android/phone/common/mail/Message;)Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->mVoicemailPayload:Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ImapHelper"

    const-string/jumbo v3, "IO Exception:"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "ImapHelper"

    const-string/jumbo v3, "Messaging Exception:"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
