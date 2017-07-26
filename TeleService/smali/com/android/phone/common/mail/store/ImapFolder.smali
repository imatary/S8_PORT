.class public Lcom/android/phone/common/mail/store/ImapFolder;
.super Ljava/lang/Object;
.source "ImapFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;
    }
.end annotation


# static fields
.field private static final PERMANENT_FLAGS:[Ljava/lang/String;


# instance fields
.field private mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

.field private mExists:Z

.field private mMessageCount:I

.field private mMode:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mStore:Lcom/android/phone/common/mail/store/ImapStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "deleted"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "seen"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "flagged"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "answered"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/common/mail/store/ImapFolder;->PERMANENT_FLAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/common/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMessageCount:I

    iput-object p1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    iput-object p2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mName:Ljava/lang/String;

    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/common/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static decodeBody(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;ILcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)Lcom/android/phone/common/mail/Body;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/phone/common/mail/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v5, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;

    invoke-direct {v5}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;-><init>()V

    invoke-virtual {v5}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v7, 0x4000

    :try_start_0
    new-array v1, v7, [B

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v7, -0x1

    if-eq v7, v3, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0d0d15

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v7
.end method

.method private destroyResponses()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/ImapConnection;->destroyResponses()V

    :cond_0
    return-void
.end method

.method private doSelect()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT \"%s\""

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mName:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, "mode_read_write"

    iput-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    const-string/jumbo v5, "EXISTS"

    invoke-virtual {v1, v10, v5}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v11}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isOk()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v3

    const-string/jumbo v5, "READ-ONLY"

    invoke-virtual {v3, v5}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "mode_read_only"

    iput-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "READ-WRITE"

    invoke-virtual {v3, v5}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "mode_read_write"

    iput-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/phone/common/mail/store/ImapStore;->getImapHelper()Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    new-instance v5, Lcom/android/phone/common/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t open mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const/4 v5, -0x1

    if-ne v0, v5, :cond_5

    new-instance v5, Lcom/android/phone/common/mail/MessagingException;

    const-string/jumbo v6, "Did not find message count during select"

    invoke-direct {v5, v6}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    iput v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMessageCount:I

    iput-boolean v10, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mExists:Z

    return-void
.end method

.method private handleUntaggedResponse(Lcom/android/phone/common/mail/store/imap/ImapResponse;)V
    .locals 2

    const-string/jumbo v0, "EXISTS"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMessageCount:I

    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    invoke-direct {p0, v0}, Lcom/android/phone/common/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/android/phone/common/mail/store/imap/ImapResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "ImapFolder"

    const-string/jumbo v1, "IO Exception detected: "

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/android/phone/common/mail/store/ImapConnection;->close()V

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/ImapStore;->getImapHelper()Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setDataChannelState(I)V

    new-instance v0, Lcom/android/phone/common/mail/MessagingException;

    const-string/jumbo v1, "IO Error"

    invoke-direct {v0, v4, v1, p2}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected static isAsciiString(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private static parseBodyStructure(Lcom/android/phone/common/mail/store/imap/ImapList;Lcom/android/phone/common/mail/Part;Ljava/lang/String;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_3

    new-instance v16, Lcom/android/phone/common/mail/internet/MimeMultipart;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/common/mail/internet/MimeMultipart;-><init>()V

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_0
    if-ge v14, v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_1

    new-instance v7, Lcom/android/phone/common/mail/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/android/phone/common/mail/internet/MimeBodyPart;-><init>()V

    const-string/jumbo v20, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v20

    add-int/lit8 v21, v14, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/phone/common/mail/store/imap/ImapList;Lcom/android/phone/common/mail/Part;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/phone/common/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/phone/common/mail/BodyPart;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/phone/common/mail/store/imap/ImapList;Lcom/android/phone/common/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isString()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/phone/common/mail/Part;->setBody(Lcom/android/phone/common/mail/Body;)V

    :goto_2
    return-void

    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v18

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v6

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v8

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v13

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v17

    const-string/jumbo v20, "message/rfc822"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/android/phone/common/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    new-instance v20, Lcom/android/phone/common/mail/MessagingException;

    const-string/jumbo v21, "BODYSTRUCTURE message/rfc822 not yet supported."

    invoke-direct/range {v20 .. v21}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_3
    if-ge v14, v11, :cond_5

    const-string/jumbo v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-virtual {v6, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    goto :goto_3

    :cond_5
    const-string/jumbo v20, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "TEXT"

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v3

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v20

    if-lez v20, :cond_8

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/common/mail/store/imap/ImapList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    const/4 v14, 0x1

    invoke-virtual {v5}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_5
    if-ge v14, v11, :cond_8

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v21, ";\n %s=\"%s\""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual {v5, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    goto :goto_5

    :cond_7
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v3

    goto :goto_4

    :cond_8
    if-lez v17, :cond_9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "size"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_9

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v21, ";\n size=%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_a

    const-string/jumbo v20, "Content-Disposition"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v13}, Lcom/android/phone/common/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    const-string/jumbo v20, "Content-Transfer-Encoding"

    invoke-virtual {v13}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v8}, Lcom/android/phone/common/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_c

    const-string/jumbo v20, "Content-ID"

    invoke-virtual {v8}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-lez v17, :cond_d

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v20, p1

    check-cast v20, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setSize(I)V

    :cond_d
    :goto_6
    const-string/jumbo v20, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/phone/common/mail/internet/MimeBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v20, p1

    check-cast v20, Lcom/android/phone/common/mail/internet/MimeBodyPart;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->setSize(I)V

    goto :goto_6

    :cond_f
    new-instance v20, Lcom/android/phone/common/mail/MessagingException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Unknown part type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
.end method


# virtual methods
.method public close(Z)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->expunge()[Lcom/android/phone/common/mail/Message;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMessageCount:I

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/ImapStore;->closeConnection()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImapFolder"

    const-string/jumbo v2, "Messaging Exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public expunge()[Lcom/android/phone/common/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    const-string/jumbo v2, "EXPUNGE"

    invoke-virtual {v1, v2}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public fetch([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/common/mail/store/ImapFolder;->fetchInternal([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImapFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    throw v0
.end method

.method public fetchInternal([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    aget-object v20, p1, v27

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_1
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    const-string/jumbo v27, "UID"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const-string/jumbo v27, "FLAGS"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    const-string/jumbo v27, "INTERNALDATE"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v27, "RFC822.SIZE"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v27, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-string/jumbo v27, "BODYSTRUCTURE"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    sget-object v27, Lcom/android/phone/common/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    const-string/jumbo v27, "BODY.PEEK[]"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/phone/common/mail/FetchProfile;->getFirstPart()Lcom/android/phone/common/mail/Part;

    move-result-object v13

    if-eqz v13, :cond_7

    const-string/jumbo v27, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lcom/android/phone/common/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_7

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "BODY.PEEK["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    move-object/from16 v27, v0

    sget-object v28, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v29, "UID FETCH %s (%s)"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {p1 .. p1}, Lcom/android/phone/common/mail/store/ImapStore;->joinMessageUids([Lcom/android/phone/common/mail/Message;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    const/16 v32, 0x20

    invoke-static/range {v31 .. v32}, Lcom/android/phone/common/mail/utils/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/android/phone/common/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/16 v24, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/common/mail/store/ImapConnection;->readResponse()Lcom/android/phone/common/mail/store/imap/ImapResponse;

    move-result-object v24

    const-string/jumbo v27, "FETCH"

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v27

    if-nez v27, :cond_9

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    :goto_1
    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v27

    if-eqz v27, :cond_8

    return-void

    :cond_9
    const/16 v27, 0x2

    :try_start_3
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v12

    const-string/jumbo v27, "UID"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v27

    if-eqz v27, :cond_a

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v27

    throw v27

    :cond_a
    :try_start_5
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v21, :cond_b

    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :cond_b
    :try_start_7
    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const-string/jumbo v27, "FLAGS"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v15

    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v7

    :goto_2
    move/from16 v0, v17

    if-ge v0, v7, :cond_10

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v14

    const-string/jumbo v27, "\\DELETED"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    const-string/jumbo v27, "deleted"

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    :cond_c
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_d
    const-string/jumbo v27, "\\ANSWERED"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    const-string/jumbo v27, "answered"

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v27

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v27
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_e
    :try_start_9
    const-string/jumbo v27, "\\SEEN"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_f

    const-string/jumbo v27, "seen"

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_f
    const-string/jumbo v27, "\\FLAGGED"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    const-string/jumbo v27, "flagged"

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_10
    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    const-string/jumbo v27, "INTERNALDATE"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/common/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v18

    const-string/jumbo v27, "RFC822.SIZE"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v25

    const-string/jumbo v27, "BODY[HEADER"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setSize(I)V

    invoke-static/range {v16 .. v16}, Lcom/android/phone/common/mail/utils/Utility;->streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    :cond_11
    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const-string/jumbo v27, "BODYSTRUCTURE"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/common/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v27

    if-nez v27, :cond_12

    :try_start_a
    const-string/jumbo v27, "TEXT"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-static {v5, v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/phone/common/mail/store/imap/ImapList;Lcom/android/phone/common/mail/Part;Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_12
    :goto_4
    :try_start_b
    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_13

    sget-object v27, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    :cond_13
    const-string/jumbo v27, "BODY[]"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    :cond_14
    if-eqz v13, :cond_15

    const-string/jumbo v27, "BODY["

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/common/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v4

    const-string/jumbo v27, "Content-Transfer-Encoding"

    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lcom/android/phone/common/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    if-eqz v10, :cond_17

    array-length v0, v10

    move/from16 v27, v0

    if-lez v27, :cond_17

    const/16 v27, 0x0

    aget-object v6, v10, v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_5
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/common/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-interface {v13}, Lcom/android/phone/common/mail/Part;->getSize()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p3

    invoke-static {v0, v4, v6, v1, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->decodeBody(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;ILcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)Lcom/android/phone/common/mail/Body;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/phone/common/mail/Body;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_15
    :goto_6
    if-eqz p3, :cond_16

    :try_start_d
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;->messageRetrieved(Lcom/android/phone/common/mail/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_16
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v8

    :try_start_f
    const-string/jumbo v27, "ImapFolder"

    const-string/jumbo v28, "Error handling message"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v8, v1, v2}, Lcom/android/phone/common/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/phone/common/mail/Body;)V

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v6, "7bit"

    goto :goto_5

    :catch_2
    move-exception v9

    const-string/jumbo v27, "ImapFolder"

    const-string/jumbo v28, "Error fetching body %s"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v9, v29, v30

    invoke-static/range {v27 .. v29}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/phone/common/mail/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/phone/common/mail/store/ImapFolder;)V

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "ImapFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found on server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public getMessages([Ljava/lang/String;)[Lcom/android/phone/common/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;)[Lcom/android/phone/common/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;)[Lcom/android/phone/common/mail/Message;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    aget-object v3, p1, v0

    new-instance v1, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/phone/common/mail/store/ImapFolder;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/phone/common/mail/Message;->EMPTY_ARRAY:[Lcom/android/phone/common/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/phone/common/mail/Message;

    return-object v4
.end method

.method getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapResponse;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    const-string/jumbo v5, "SEARCH"

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapString;->isString()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/phone/common/mail/utils/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public isOpen()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mExists:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMode:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v3, p1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    const-string/jumbo v4, "NOOP"

    invoke-virtual {v3, v4}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v3, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    :cond_0
    :goto_0
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v3, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/ImapStore;->getConnection()Lcom/android/phone/common/mail/store/ImapConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->doSelect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    return-void

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v3
    :try_end_8
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-virtual {p0, v5}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V
    :try_end_9
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    iput-boolean v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mExists:Z

    invoke-virtual {p0, v5}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V

    throw v1

    :catchall_1
    move-exception v3

    :try_start_a
    monitor-exit p0

    throw v3
    :try_end_a
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_2

    :catch_3
    move-exception v2

    :try_start_b
    iget-object v3, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v3, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_c
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v3
    :try_end_c
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_2
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UID SEARCH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-virtual {v4, v0}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/common/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ImapFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "searchForUids \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/android/phone/common/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    return-object v3

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v4, "ImapFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException in search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v4, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v4

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v4, "ImapFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImapException in search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v4, Lcom/android/phone/common/mail/utils/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    return-object v4
.end method

.method public setFlags([Lcom/android/phone/common/mail/Message;[Ljava/lang/String;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    const-string/jumbo v0, ""

    array-length v6, p2

    if-lez v6, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    array-length v1, p2

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v2, p2, v4

    const-string/jumbo v6, "seen"

    if-ne v2, v6, :cond_1

    const-string/jumbo v6, " \\SEEN"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "deleted"

    if-ne v2, v6, :cond_2

    const-string/jumbo v6, " \\DELETED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "flagged"

    if-ne v2, v6, :cond_3

    const-string/jumbo v6, " \\FLAGGED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "answered"

    if-ne v2, v6, :cond_0

    const-string/jumbo v6, " \\ANSWERED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v6, 0x3

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/phone/common/mail/store/ImapStore;->joinMessageUids([Lcom/android/phone/common/mail/Message;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v10, v11

    if-eqz p3, :cond_6

    const-string/jumbo v6, "+"

    :goto_2
    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v6, 0x2

    aput-object v0, v10, v6

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    return-void

    :cond_6
    :try_start_1
    const-string/jumbo v6, "-"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    iget-object v6, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v6, v5}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v6
.end method
