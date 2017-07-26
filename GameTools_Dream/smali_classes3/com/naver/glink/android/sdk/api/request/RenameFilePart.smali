.class public Lcom/naver/glink/android/sdk/api/request/RenameFilePart;
.super Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;
.source "RenameFilePart.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    return-void
.end method


# virtual methods
.method protected getExtraHeader()[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RenameFilePart;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RenameFilePart;->getContentType()Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->getFilename()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
