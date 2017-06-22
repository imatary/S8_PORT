.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$3;
.super Landroid/content/BroadcastReceiver;
.source "PhotoRetouching.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$3;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit_broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$3;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # invokes: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finishActivity()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$100(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    :cond_0
    return-void
.end method
