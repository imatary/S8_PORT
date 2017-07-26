.class public Lcom/navercorp/volleyextensions/volleyer/Volleyer;
.super Ljava/lang/Object;
.source "Volleyer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navercorp/volleyextensions/volleyer/Volleyer$1;,
        Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;
    }
.end annotation


# static fields
.field private static volatile defaultVolleyer:Lcom/navercorp/volleyextensions/volleyer/Volleyer;

.field private static final volleyers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/volley/RequestQueue;",
            "Lcom/navercorp/volleyextensions/volleyer/Volleyer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

.field private final requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;-><init>()V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->defaultVolleyer:Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->volleyers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/android/volley/RequestQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;->create()Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    return-void
.end method

.method static synthetic access$102(Lcom/navercorp/volleyextensions/volleyer/Volleyer;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;)Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    return-object p1
.end method

.method static synthetic access$202(Lcom/navercorp/volleyextensions/volleyer/Volleyer;)Lcom/navercorp/volleyextensions/volleyer/Volleyer;
    .locals 0

    sput-object p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->defaultVolleyer:Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    return-object p0
.end method

.method private static isDefaultVolleyerDummy()Z
    .locals 2

    const-class v0, Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;

    sget-object v1, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->defaultVolleyer:Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logErrorIfDefaultNotSet()V
    .locals 2

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->isDefaultVolleyerDummy()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Default volleyer is not set. You have to set the default volleyer as first like this code. : \nvolleyer(requestQueue).settings().setAsDefault().done(); "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/util/VolleyerLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static volleyer()Lcom/navercorp/volleyextensions/volleyer/Volleyer;
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->logErrorIfDefaultNotSet()V

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->defaultVolleyer:Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    return-object v0
.end method

.method public static declared-synchronized volleyer(Lcom/android/volley/RequestQueue;)Lcom/navercorp/volleyextensions/volleyer/Volleyer;
    .locals 4

    const-class v3, Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "RequestQueue"

    invoke-static {p0, v2}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->volleyers:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    monitor-exit v3

    return-object v1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    invoke-direct {v0, p0}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;-><init>(Lcom/android/volley/RequestQueue;)V

    sget-object v2, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->volleyers:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/DeleteBuilder;
    .locals 3

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/builder/DeleteBuilder;

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->requestQueue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-direct {v0, v1, v2, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/DeleteBuilder;-><init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;
    .locals 3

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->requestQueue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-direct {v0, v1, v2, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;-><init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;)V

    return-object v0
.end method

.method public post(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;
    .locals 3

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->requestQueue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-direct {v0, v1, v2, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;-><init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/PutBuilder;
    .locals 3

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/builder/PutBuilder;

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->requestQueue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-direct {v0, v1, v2, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/PutBuilder;-><init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;)V

    return-object v0
.end method

.method public settings()Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;
    .locals 2

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;-><init>(Lcom/navercorp/volleyextensions/volleyer/Volleyer;Lcom/navercorp/volleyextensions/volleyer/Volleyer$1;)V

    return-object v0
.end method
