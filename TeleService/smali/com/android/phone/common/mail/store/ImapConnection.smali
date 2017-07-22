.class public Lcom/android/phone/common/mail/store/ImapConnection;
.super Ljava/lang/Object;
.source "ImapConnection.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mParser:Lcom/android/phone/common/mail/store/imap/ImapResponseParser;

.field private mTransport:Lcom/android/phone/common/mail/MailTransport;


# direct methods
.method constructor <init>(Lcom/android/phone/common/mail/store/ImapStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ImapConnection"

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/ImapConnection;->setStore(Lcom/android/phone/common/mail/store/ImapStore;)V

    return-void
.end method

.method private createParser()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->destroyResponses()V

    new-instance v0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    invoke-virtual {v1}, Lcom/android/phone/common/mail/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mParser:Lcom/android/phone/common/mail/store/imap/ImapResponseParser;

    return-void
.end method

.method private doLogin()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;,
            Lcom/android/phone/common/mail/AuthenticationFailedException;
        }
    .end annotation

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->getLoginPhrase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/phone/common/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "ImapConnection"

    const-string/jumbo v5, "ImapException"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->getResponseCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "AUTHENTICATIONFAILED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "EXPIRED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "NO"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v4}, Lcom/android/phone/common/mail/store/ImapStore;->getImapHelper()Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    new-instance v4, Lcom/android/phone/common/mail/AuthenticationFailedException;

    invoke-direct {v4, v0, v2}, Lcom/android/phone/common/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    new-instance v4, Lcom/android/phone/common/mail/MessagingException;

    invoke-direct {v4, v0, v2}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/MailTransport;->close()V

    iput-object v1, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->destroyResponses()V

    iput-object v1, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mParser:Lcom/android/phone/common/mail/store/imap/ImapResponseParser;

    iput-object v1, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    return-void
.end method

.method destroyResponses()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mParser:Lcom/android/phone/common/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mParser:Lcom/android/phone/common/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->destroyResponses()V

    :cond_0
    return-void
.end method

.method executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/common/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCommandResponses()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v6, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mParser:Lcom/android/phone/common/mail/store/imap/ImapResponseParser;

    invoke-virtual {v6}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/phone/common/mail/store/imap/ImapResponse;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isOk()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStatusOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->destroyResponses()V

    iget-object v6, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v6}, Lcom/android/phone/common/mail/store/ImapStore;->getImapHelper()Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    const-string/jumbo v6, "UNAVAILABLE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/android/phone/common/mail/MessagingException;

    const/16 v7, 0x13

    invoke-direct {v6, v7, v0}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_1
    new-instance v6, Lcom/android/phone/common/mail/store/ImapStore$ImapException;

    invoke-direct {v6, v5, v4, v0, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    :cond_2
    return-object v3
.end method

.method getLoginPhrase()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/ImapStore;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/ImapStore;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LOGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/ImapStore;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/ImapStore;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/common/mail/store/imap/ImapUtility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    return-object v0
.end method

.method open()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    invoke-virtual {v2}, Lcom/android/phone/common/mail/MailTransport;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/ImapStore;->cloneTransport()Lcom/android/phone/common/mail/MailTransport;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    :cond_1
    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    invoke-virtual {v2}, Lcom/android/phone/common/mail/MailTransport;->open()V

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->createParser()V

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->doLogin()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->destroyResponses()V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "ImapConnection"

    const-string/jumbo v3, "IOException"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/ImapStore;->getImapHelper()Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->destroyResponses()V

    throw v2

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "ImapConnection"

    const-string/jumbo v3, "SSLException "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/ImapStore;->getImapHelper()Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    new-instance v2, Lcom/android/phone/common/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/phone/common/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method readResponse()Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mParser:Lcom/android/phone/common/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/phone/common/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapConnection;->open()V

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Null transport"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    if-eqz p2, :cond_1

    const-string/jumbo p1, "[IMAP command redacted]"

    :cond_1
    invoke-virtual {v2, v0, p1}, Lcom/android/phone/common/mail/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method setStore(Lcom/android/phone/common/mail/store/ImapStore;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    return-void
.end method
