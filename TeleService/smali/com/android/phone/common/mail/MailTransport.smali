.class public Lcom/android/phone/common/mail/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/MailTransport$SocketCreator;
    }
.end annotation


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFlags:I

.field private final mHost:Ljava/lang/String;

.field private final mImapHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

.field private mIn:Ljava/io/BufferedInputStream;

.field private final mNetwork:Landroid/net/Network;

.field private mOut:Ljava/io/BufferedOutputStream;

.field private final mPort:I

.field private mSocket:Ljava/net/Socket;

.field private mSocketCreator:Lcom/android/phone/common/mail/MailTransport$SocketCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/vvm/omtp/imap/ImapHelper;Landroid/net/Network;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/mail/MailTransport;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/mail/MailTransport;->mImapHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    iput-object p3, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    iput-object p4, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    iput p5, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    iput p6, p0, Lcom/android/phone/common/mail/MailTransport;->mFlags:I

    return-void
.end method

.method private verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/common/mail/MailTransport;->mImapHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-virtual {v2, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v2, Lcom/android/phone/common/mail/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v2, p2, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/common/mail/MailTransport;->mImapHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-virtual {v2, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Certificate hostname not useable for server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/phone/common/mail/MailTransport;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public canTrySslSecurity()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/phone/common/mail/MailTransport;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public clone()Lcom/android/phone/common/mail/MailTransport;
    .locals 7

    new-instance v0, Lcom/android/phone/common/mail/MailTransport;

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/common/mail/MailTransport;->mImapHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    iget-object v3, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    iget-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    iget v6, p0, Lcom/android/phone/common/mail/MailTransport;->mFlags:I

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/common/mail/MailTransport;-><init>(Landroid/content/Context;Lcom/android/phone/vvm/omtp/imap/ImapHelper;Landroid/net/Network;Ljava/lang/String;II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->clone()Lcom/android/phone/common/mail/MailTransport;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iput-object v2, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    iput-object v2, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    iput-object v2, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected createSocket()Ljava/net/Socket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mSocketCreator:Lcom/android/phone/common/mail/MailTransport$SocketCreator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mSocketCreator:Lcom/android/phone/common/mail/MailTransport$SocketCreator;

    invoke-interface {v1}, Lcom/android/phone/common/mail/MailTransport$SocketCreator;->createSocket()Ljava/net/Socket;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_1

    const-string/jumbo v1, "MailTransport"

    const-string/jumbo v2, "createSocket: network not specified"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    return-object v1

    :cond_1
    :try_start_0
    const-string/jumbo v1, "MailTransport"

    const-string/jumbo v2, "createSocket: network specified"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MailTransport"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/android/phone/common/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public open()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v9, 0x0

    const-string/jumbo v6, "MailTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "*** IMAP open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    if-nez v6, :cond_4

    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    iget v8, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->createSocket()Ljava/net/Socket;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    const/16 v7, 0x2710

    invoke-virtual {v6, v0, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->canTrySslSecurity()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "MailTransport"

    const-string/jumbo v7, "open: converting to SSL socket"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->canTrustAllCertificates()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    iget-object v7, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/common/mail/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_2
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x400

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const/16 v8, 0x200

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    const v7, 0xea60

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-nez v5, :cond_3

    :try_start_1
    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    return-void

    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    iget-object v7, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    array-length v6, v2

    if-nez v6, :cond_5

    new-instance v6, Lcom/android/phone/common/mail/MessagingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Host name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "cannot be resolved on designated network"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "MailTransport"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mImapHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-virtual {v6, v10}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    new-instance v6, Lcom/android/phone/common/mail/MessagingException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v11, v7}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_5
    const/4 v1, 0x0

    :goto_1
    :try_start_3
    array-length v6, v2

    if-ge v1, v6, :cond_0

    new-instance v6, Ljava/net/InetSocketAddress;

    aget-object v7, v2, v1

    iget v8, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v6, Lcom/android/phone/common/mail/MessagingException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v11, v7}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6

    :catch_2
    move-exception v3

    :try_start_4
    const-string/jumbo v6, "MailTransport"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mImapHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    new-instance v6, Lcom/android/phone/common/mail/MessagingException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    if-nez v5, :cond_6

    :try_start_5
    iget-object v7, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    throw v6

    :cond_7
    if-nez v5, :cond_1

    :try_start_6
    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    new-instance v6, Lcom/android/phone/common/mail/MessagingException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v11, v7}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6

    :catch_4
    move-exception v3

    new-instance v6, Lcom/android/phone/common/mail/MessagingException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v11, v7}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_8
    return-void
.end method

.method setSocketCreator(Lcom/android/phone/common/mail/MailTransport$SocketCreator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/common/mail/MailTransport;->mSocketCreator:Lcom/android/phone/common/mail/MailTransport$SocketCreator;

    return-void
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "MailTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_0
    const-string/jumbo v1, "MailTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
