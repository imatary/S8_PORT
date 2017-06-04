.class public Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProjectPreview2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/preview/ProjectPreview2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnplugHeadsetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->stop()V

    :cond_0
    return-void
.end method
