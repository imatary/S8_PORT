.class public Lcom/android/phone/common/mail/store/ImapStore;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/store/ImapStore$ImapException;,
        Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    }
.end annotation


# instance fields
.field private mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

.field private final mPassword:Ljava/lang/String;

.field private final mTransport:Lcom/android/phone/common/mail/MailTransport;

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/vvm/omtp/imap/ImapHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/net/Network;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/mail/store/ImapStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/mail/store/ImapStore;->mHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    iput-object p3, p0, Lcom/android/phone/common/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/common/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/common/mail/MailTransport;

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapStore;->getImapHelper()Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    move-result-object v2

    move-object v1, p1

    move-object v3, p8

    move-object v4, p6

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/common/mail/MailTransport;-><init>(Landroid/content/Context;Lcom/android/phone/vvm/omtp/imap/ImapHelper;Landroid/net/Network;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    return-void
.end method

.method static joinMessageUids([Lcom/android/phone/common/mail/Message;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p0, v3

    if-eqz v1, :cond_0

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method cloneTransport()Lcom/android/phone/common/mail/MailTransport;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/MailTransport;->clone()Lcom/android/phone/common/mail/MailTransport;

    move-result-object v0

    return-object v0
.end method

.method public closeConnection()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/ImapConnection;->close()V

    iput-object v1, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    :cond_0
    return-void
.end method

.method public getConnection()Lcom/android/phone/common/mail/store/ImapConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {v0, p0}, Lcom/android/phone/common/mail/store/ImapConnection;-><init>(Lcom/android/phone/common/mail/store/ImapStore;)V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImapHelper()Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mHelper:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method
