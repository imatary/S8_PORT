.class Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$3;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->access$200(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V

    return-void
.end method
