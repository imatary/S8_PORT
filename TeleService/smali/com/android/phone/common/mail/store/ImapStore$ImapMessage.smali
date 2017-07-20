.class Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
.super Lcom/android/phone/common/mail/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapMessage"
.end annotation


# instance fields
.field private mFolder:Lcom/android/phone/common/mail/store/ImapFolder;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/phone/common/mail/store/ImapFolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->mUid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/phone/common/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public setFlag(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setFlag(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    new-array v1, v2, [Lcom/android/phone/common/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/phone/common/mail/store/ImapFolder;->setFlags([Lcom/android/phone/common/mail/Message;[Ljava/lang/String;Z)V

    return-void
.end method

.method public setFlagInternal(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->mSize:I

    return-void
.end method
