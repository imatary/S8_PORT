.class Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;
.super Ljava/lang/Object;
.source "Profiler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/util/Profiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field base:Ljava/util/Map;
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

.field final synthetic this$0:Lcom/samsung/android/sdk/pen/util/Profiler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/util/Profiler;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;->this$0:Lcom/samsung/android/sdk/pen/util/Profiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;->base:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;->base:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;

    # getter for: Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->accumaltedRunningTime:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->access$000(Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;->base:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;

    # getter for: Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->callNumber:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->access$100(Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;)J

    move-result-wide v0

    div-long/2addr v2, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;->base:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;

    # getter for: Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->accumaltedRunningTime:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->access$000(Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$ValueComparator;->base:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;

    # getter for: Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->callNumber:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->access$100(Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;)J

    move-result-wide v0

    div-long v0, v4, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
