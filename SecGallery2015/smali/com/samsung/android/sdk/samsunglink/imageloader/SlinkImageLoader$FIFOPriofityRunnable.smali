.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;
.super Ljava/lang/Object;
.source "SlinkImageLoader.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FIFOPriofityRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final seq:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final priority:I

.field private final runnable:Ljava/lang/Runnable;

.field private final sequenceNumber:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->runnable:Ljava/lang/Runnable;

    iput p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->priority:I

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->sequenceNumber:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->priority:I

    iget v3, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->priority:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->priority:I

    iget v3, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->priority:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->sequenceNumber:J

    iget-wide v4, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->sequenceNumber:J

    iget-wide v4, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->sequenceNumber:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->compareTo(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
