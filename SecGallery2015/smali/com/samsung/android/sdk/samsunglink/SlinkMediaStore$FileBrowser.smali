.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileBrowser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$DirectoryInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$DirectoryInfoColumns;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$FileBrowserColumns;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$FileList;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$FileList2;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$HomeSyncFlags;
    }
.end annotation


# static fields
.field public static final MIME_TYPE_DIR:Ljava/lang/String; = "vnd.android.document/directory"

.field public static final ROOT_DIRECTORY_ID:Ljava/lang/String; = "ROOT"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->isFileBrowserUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Landroid/net/Uri;Ljava/lang/String;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->getDeviceIdFromUri(Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->getDirectoryIdFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->createFileBrowserUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->createFileBrowserUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static createFileBrowserUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://com.samsung.android.sdk.samsunglink.provider.SLinkMedia/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static createFileBrowserUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .locals 3

    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "content://com.samsung.android.sdk.samsunglink.provider.SLinkMedia/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final getDeviceIdFromUri(Landroid/net/Uri;Ljava/lang/String;)J
    .locals 6

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.provider.SLinkMedia"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    return-wide v2
.end method

.method private static final getDirectoryIdFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.provider.SLinkMedia"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const/4 v4, 0x2

    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "%(?![0-9a-fA-F]{2})"

    const-string/jumbo v5, "%25"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "\\+"

    const-string/jumbo v5, "%2B"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private static final isFileBrowserUri(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.provider.SLinkMedia"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method
