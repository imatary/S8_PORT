.class public Lcom/android/phone/vvm/omtp/imap/ImapHelper;
.super Ljava/lang/Object;
.source "ImapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;,
        Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

.field private mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method static synthetic -get0(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ImapHelper"

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->TAG:Ljava/lang/String;

    :try_start_0
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p1}, Lcom/android/phone/common/mail/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    const-string/jumbo v0, "u"

    invoke-static {p1, v0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "pw"

    invoke-static {p1, v0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "srv"

    invoke-static {p1, v0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "ipt"

    invoke-static {p1, v0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    new-instance v0, Lcom/android/phone/common/mail/store/ImapStore;

    move-object v1, p1

    move-object v2, p0

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/phone/common/mail/store/ImapStore;-><init>(Landroid/content/Context;Lcom/android/phone/vvm/omtp/imap/ImapHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/net/Network;)V

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    const-string/jumbo v0, "ImapHelper"

    const-string/jumbo v1, "Could not parse port number"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private closeImapFolder()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V

    :cond_0
    return-void
.end method

.method private convertToImapMessages(Ljava/util/List;)[Lcom/android/phone/common/mail/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)[",
            "Lcom/android/phone/common/mail/Message;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/phone/common/mail/Message;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/android/phone/common/mail/internet/MimeMessage;

    invoke-direct {v2}, Lcom/android/phone/common/mail/internet/MimeMessage;-><init>()V

    aput-object v2, v1, v0

    aget-object v3, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Voicemail;

    invoke-virtual {v2}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/phone/common/mail/Message;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private fetchVoicemail(Lcom/android/phone/common/mail/Message;)Landroid/telecom/Voicemail;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "ImapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fetching message structure for "

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

    new-instance v1, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;

    invoke-direct {v1, p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;-><init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V

    new-instance v0, Lcom/android/phone/common/mail/FetchProfile;

    invoke-direct {v0}, Lcom/android/phone/common/mail/FetchProfile;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/phone/common/mail/FetchProfile$Item;

    sget-object v3, Lcom/android/phone/common/mail/FetchProfile$Item;->FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/phone/common/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v3, v2, v6

    sget-object v3, Lcom/android/phone/common/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/common/mail/FetchProfile;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    new-array v3, v6, [Lcom/android/phone/common/mail/Message;

    aput-object p1, v3, v5

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->fetch([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V

    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->getVoicemail()Landroid/telecom/Voicemail;

    move-result-object v2

    return-object v2
.end method

.method private fetchVoicemailPayload(Lcom/android/phone/common/mail/Message;)Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    new-instance v1, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;-><init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;)V

    new-instance v0, Lcom/android/phone/common/mail/FetchProfile;

    invoke-direct {v0}, Lcom/android/phone/common/mail/FetchProfile;-><init>()V

    sget-object v2, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

    invoke-virtual {v0, v2}, Lcom/android/phone/common/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/phone/common/mail/Message;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->fetch([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V

    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->getVoicemailPayload()Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

    move-result-object v2

    return-object v2
.end method

.method private openImapFolder(Ljava/lang/String;)Lcom/android/phone/common/mail/store/ImapFolder;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    if-nez v2, :cond_0

    return-object v5

    :cond_0
    new-instance v1, Lcom/android/phone/common/mail/store/ImapFolder;

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    const-string/jumbo v3, "INBOX"

    invoke-direct {v1, v2, v3}, Lcom/android/phone/common/mail/store/ImapFolder;-><init>(Lcom/android/phone/common/mail/store/ImapStore;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/phone/common/mail/store/ImapFolder;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ImapHelper"

    const-string/jumbo v3, "Messaging Exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v5
.end method

.method private varargs setFlags(Ljava/util/List;[Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    :try_start_0
    const-string/jumbo v1, "mode_read_write"

    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/phone/common/mail/store/ImapFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->convertToImapMessages(Ljava/util/List;)[Lcom/android/phone/common/mail/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/phone/common/mail/store/ImapFolder;->setFlags([Lcom/android/phone/common/mail/Message;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return v5

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return v4

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "ImapHelper"

    const-string/jumbo v2, "Messaging exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return v4

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    throw v1
.end method


# virtual methods
.method public fetchAllVoicemails()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v6, "mode_read_write"

    invoke-direct {p0, v6}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/phone/common/mail/store/ImapFolder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return-object v8

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/phone/common/mail/store/ImapFolder;->getMessages([Ljava/lang/String;)[Lcom/android/phone/common/mail/Message;

    move-result-object v2

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->fetchVoicemail(Lcom/android/phone/common/mail/Message;)Landroid/telecom/Voicemail;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return-object v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "ImapHelper"

    const-string/jumbo v6, "Messaging Exception"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v0, v6, v7}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return-object v8

    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    throw v5
.end method

.method public fetchVoicemailPayload(Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v3, "mode_read_write"

    invoke-direct {p0, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/phone/common/mail/store/ImapFolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return v4

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    invoke-virtual {v3, p2}, Lcom/android/phone/common/mail/store/ImapFolder;->getMessage(Ljava/lang/String;)Lcom/android/phone/common/mail/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->fetchVoicemailPayload(Lcom/android/phone/common/mail/Message;)Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    :try_end_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return v4

    :cond_1
    :try_start_2
    invoke-virtual {p1, v2}, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->setVoicemailContent(Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;)V
    :try_end_2
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return v3

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return v4

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    throw v3
.end method

.method public isSuccessfullyInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markMessagesAsDeleted(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "deleted"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setFlags(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markMessagesAsRead(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "seen"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setFlags(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDataChannelState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, v1, p1}, Lcom/android/phone/VoicemailUtils;->setDataChannelState(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;I)V

    return-void
.end method
