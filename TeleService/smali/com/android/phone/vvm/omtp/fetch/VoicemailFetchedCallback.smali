.class public Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;
.super Ljava/lang/Object;
.source "VoicemailFetchedCallback.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public setVoicemailContent(Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v5, "VoicemailFetchedCallback"

    const-string/jumbo v6, "Writing new voicemail content: %s"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "mime_type"

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "has_content"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eq v3, v9, :cond_1

    const-string/jumbo v5, "VoicemailFetchedCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Updating voicemail should have updated 1 row, was: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v5, "VoicemailFetchedCallback"

    const-string/jumbo v6, "File not found for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v5

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method
