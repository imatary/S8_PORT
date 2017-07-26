.class Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;
.super Lcom/navercorp/volleyextensions/volleyer/Volleyer;
.source "DummyVolleyer.java"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;-><init>(Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method private throwError()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/DeleteBuilder;
    .locals 1

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;->throwError()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;
    .locals 1

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;->throwError()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public post(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;
    .locals 1

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;->throwError()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/PutBuilder;
    .locals 1

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;->throwError()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public settings()Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;
    .locals 1

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/DummyVolleyer;->throwError()V

    const/4 v0, 0x0

    return-object v0
.end method
