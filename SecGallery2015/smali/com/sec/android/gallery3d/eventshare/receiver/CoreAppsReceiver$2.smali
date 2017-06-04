.class Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver$2;
.super Ljava/lang/Object;
.source "CoreAppsReceiver.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver$2;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceOn(Z)V
    .locals 3

    const-string/jumbo v0, "CoreAppsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register isSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
