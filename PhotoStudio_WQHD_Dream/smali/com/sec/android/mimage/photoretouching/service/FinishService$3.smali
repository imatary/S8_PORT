.class Lcom/sec/android/mimage/photoretouching/service/FinishService$3;
.super Landroid/os/CountDownTimer;
.source "FinishService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/service/FinishService;->requestFinishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/service/FinishService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$3;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$3;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
