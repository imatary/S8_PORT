.class public Lcom/samsung/android/sdk/pen/util/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;,
        Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;
    }
.end annotation


# static fields
.field private static singleton:Lcom/samsung/android/sdk/pen/util/Profiler;


# instance fields
.field private final profilingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedProfilingMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->profilingMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->profilingMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;-><init>(Lcom/samsung/android/sdk/pen/util/Profiler;Ljava/util/Map;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->sortedProfilingMap:Ljava/util/TreeMap;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/pen/util/Profiler;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/util/Profiler;->singleton:Lcom/samsung/android/sdk/pen/util/Profiler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/util/Profiler;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/util/Profiler;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/Profiler;->singleton:Lcom/samsung/android/sdk/pen/util/Profiler;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/util/Profiler;->singleton:Lcom/samsung/android/sdk/pen/util/Profiler;

    return-object v0
.end method


# virtual methods
.method public Sort()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->sortedProfilingMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->sortedProfilingMap:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->profilingMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public addCallEvent(Lcom/samsung/android/sdk/pen/util/StopWatch;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/util/StopWatch;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->profilingMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->profilingMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/util/StopWatch;->getEllapsedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->add(J)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->profilingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler;->sortedProfilingMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
