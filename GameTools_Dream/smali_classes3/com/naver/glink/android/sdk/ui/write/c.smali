.class public Lcom/naver/glink/android/sdk/ui/write/c;
.super Ljava/lang/Object;
.source "VideoUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/write/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/naver/glink/android/sdk/api/request/Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/io/File;

.field private c:I

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/naver/glink/android/sdk/api/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/naver/glink/android/sdk/ui/write/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/write/c;->a:Ljava/util/Vector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/c;Ljava/io/File;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/io/File;)I
    .locals 6

    const-wide/32 v4, 0x500000

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v1, v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->e:Lcom/naver/glink/android/sdk/ui/write/c$a;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/naver/glink/android/sdk/ui/write/c;
    .locals 2

    const-class v1, Lcom/naver/glink/android/sdk/ui/write/c;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/write/c;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/write/c;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/write/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/write/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-virtual {v0, p0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_2
    sget-object v0, Lcom/naver/glink/android/sdk/ui/write/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->d:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/request/Request;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/c$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/ui/write/c$2;-><init>(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/Request;)V

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->sendLogoImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/c$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/naver/glink/android/sdk/ui/write/c$5;-><init>(Lcom/naver/glink/android/sdk/ui/write/c;Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/write/c;)I
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/naver/glink/android/sdk/ui/write/c;->c:I

    return v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/write/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/ui/write/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->connectionsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/c$6;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/ui/write/c$6;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Ljava/io/File;)I

    move-result v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_2

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_1
    add-int/lit8 v1, v7, 0x1

    int-to-long v2, v0

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->uploadMovieRequest(IJLjava/lang/String;Ljava/io/File;I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    rem-long/2addr v2, v4

    long-to-int v0, v2

    :goto_2
    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x500000

    goto :goto_1

    :cond_1
    const/high16 v0, 0x500000

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    rem-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Ljava/io/File;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "chunkNum"

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "chunkSize"

    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x500000

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/write/c;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->d:Ljava/util/Vector;

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->checkCompleteUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/c$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/ui/write/c$3;-><init>(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/Request;)V

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/write/c;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->c:I

    return v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->getUploadedVideoInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/c$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/ui/write/c$4;-><init>(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/Request;)V

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/write/c;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/write/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/c;->d()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/io/File;Lcom/naver/glink/android/sdk/api/request/RequestListener;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;",
            ">;)",
            "Lcom/naver/glink/android/sdk/api/request/Request;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->isNullHost()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/write/c;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->getUploadKey(JLjava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/naver/glink/android/sdk/api/request/Request;->setTag(Ljava/lang/Object;)V

    sget-object v1, Lcom/naver/glink/android/sdk/ui/write/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->d:Ljava/util/Vector;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c;->b:Ljava/io/File;

    invoke-static {v0, v2, v3, p2, v1}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->uploadSingleMovieRequest(IJLjava/lang/String;Ljava/io/File;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/c$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/ui/write/c$1;-><init>(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/Request;)V

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/write/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/c;->e:Lcom/naver/glink/android/sdk/ui/write/c$a;

    return-void
.end method
