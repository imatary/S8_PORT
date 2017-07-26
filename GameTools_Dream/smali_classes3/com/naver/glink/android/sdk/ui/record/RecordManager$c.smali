.class Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;
.super Ljava/util/Timer;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/record/RecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Ljava/util/TimerTask;

.field c:I

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/record/RecordManager;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V
    .locals 3

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->d:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$d;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->d:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$d;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->c:I

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c$1;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->b:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->b:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method
