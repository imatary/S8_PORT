.class public Lcom/naver/glink/android/sdk/api/request/VolleyQueue;
.super Ljava/lang/Object;
.source "VolleyQueue.java"


# static fields
.field private static sharedInstance:Lcom/naver/glink/android/sdk/api/request/VolleyQueue;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->requestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/naver/glink/android/sdk/api/request/VolleyQueue;
    .locals 2

    const-class v1, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->sharedInstance:Lcom/naver/glink/android/sdk/api/request/VolleyQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->sharedInstance:Lcom/naver/glink/android/sdk/api/request/VolleyQueue;

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->sharedInstance:Lcom/naver/glink/android/sdk/api/request/VolleyQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getInstance(Landroid/content/Context;)Lcom/naver/glink/android/sdk/api/request/VolleyQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->requestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultRequestQueueFactory;->create(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->requestQueue:Lcom/android/volley/RequestQueue;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
