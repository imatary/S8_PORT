.class public Lcom/android/phone/common/mail/internet/BinaryTempFileBody;
.super Ljava/lang/Object;
.source "BinaryTempFileBody.java"

# interfaces
.implements Lcom/android/phone/common/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/phone/common/mail/internet/BinaryTempFileBody;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/phone/common/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;-><init>(Lcom/android/phone/common/mail/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/phone/common/mail/MessagingException;

    const-string/jumbo v2, "Unable to open body"

    invoke-direct {v1, v2, v0}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "body"

    invoke-static {}, Lcom/android/phone/common/mail/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Landroid/util/Base64OutputStream;

    const/16 v2, 0x14

    invoke-direct {v0, p1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    iget-object v2, p0, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method
