.class Lcom/naver/glink/android/sdk/ui/record/RecordManager$d;
.super Landroid/os/Handler;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/record/RecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$d;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$d;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$d;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$d;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;->a(J)V

    :cond_0
    return-void
.end method
