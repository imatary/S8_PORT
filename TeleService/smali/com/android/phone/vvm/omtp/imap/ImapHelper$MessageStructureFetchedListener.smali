.class final Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;
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
    name = "MessageStructureFetchedListener"
.end annotation


# instance fields
.field private mVoicemail:Landroid/telecom/Voicemail;

.field final synthetic this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;


# direct methods
.method public constructor <init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNumber([Lcom/android/phone/common/mail/Address;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "ImapHelper"

    const-string/jumbo v3, "More than one from addresses found. Using the first one."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    aget-object v2, p1, v5

    invoke-virtual {v2}, Lcom/android/phone/common/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    return-object v3
.end method

.method private getVoicemailFromMessage(Lcom/android/phone/common/mail/Message;)Landroid/telecom/Voicemail;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getMimeType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "multipart/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "ImapHelper"

    const-string/jumbo v9, "Ignored non multi-part message"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v11

    :cond_0
    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getBody()Lcom/android/phone/common/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/mail/Multipart;

    if-nez v4, :cond_1

    const-string/jumbo v8, "ImapHelper"

    const-string/jumbo v9, "message body is null"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v11

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Lcom/android/phone/common/mail/Multipart;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-virtual {v4, v2}, Lcom/android/phone/common/mail/Multipart;->getBodyPart(I)Lcom/android/phone/common/mail/BodyPart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/common/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "ImapHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bodyPart mime type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v8, "audio/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getFrom()[Lcom/android/phone/common/mail/Address;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->getNumber([Lcom/android/phone/common/mail/Address;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getFlags()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v9, "seen"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v6, v7, v5}, Landroid/telecom/Voicemail;->createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-static {v9}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->-get1(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/Voicemail$Builder;->setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-static {v9}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->-get0(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/Voicemail$Builder;->setSourcePackage(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/telecom/Voicemail$Builder;->setIsRead(Z)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Voicemail$Builder;->build()Landroid/telecom/Voicemail;

    move-result-object v8

    return-object v8

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v11
.end method


# virtual methods
.method public getVoicemail()Landroid/telecom/Voicemail;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->mVoicemail:Landroid/telecom/Voicemail;

    return-object v0
.end method

.method public messageRetrieved(Lcom/android/phone/common/mail/Message;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "ImapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetched message structure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v1, "ImapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message retrieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->getVoicemailFromMessage(Lcom/android/phone/common/mail/Message;)Landroid/telecom/Voicemail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->mVoicemail:Landroid/telecom/Voicemail;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->mVoicemail:Landroid/telecom/Voicemail;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ImapHelper"

    const-string/jumbo v2, "This voicemail does not have an attachment..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImapHelper"

    const-string/jumbo v2, "Messaging Exception"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-static {v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->-wrap0(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V

    :cond_0
    return-void
.end method
